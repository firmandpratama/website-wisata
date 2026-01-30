<?php

namespace App\Controllers;

use App\Models\AlternatifModel;
use App\Models\KriteriaModel;
use App\Models\SubKriteriaModel;
use App\Models\PenilaianModel;
use App\Models\UserModel;
use App\Models\BookmarkModel;
use App\Models\PenilaianValueRawModel;

class Page extends BaseController
{

    private function distanceKm($lat1, $lon1, $lat2, $lon2)
    {
        $earthRadius = 6371;

        $dLat = deg2rad($lat2 - $lat1);
        $dLon = deg2rad($lon2 - $lon1);

        $a = sin($dLat / 2) * sin($dLat / 2) +
            cos(deg2rad($lat1)) * cos(deg2rad($lat2)) *
            sin($dLon / 2) * sin($dLon / 2);

        $c = 2 * atan2(sqrt($a), sqrt(1 - $a));
        return $earthRadius * $c;
    }

    public function index()
    {
        // =========================
        // INPUT
        // =========================
        $kategori = $this->request->getGet('kategori');
        $keyword  = $this->request->getGet('q');
        $rating   = $this->request->getGet('rating');
        $page     = max(1, (int)$this->request->getGet('page'));

        $perPage  = 8;
        $offset   = ($page - 1) * $perPage;

        // =========================
        // MODEL
        // =========================
        $alternatifModel = new AlternatifModel();
        $penilaianModel  = new PenilaianModel();
        $subKriteriaModel = new SubKriteriaModel();

        // =========================
        // KATEGORI (SIDEBAR)
        // =========================
        $kategoriList = $alternatifModel
            ->select('kategori_wisata')
            ->groupBy('kategori_wisata')
            ->findAll();

        // =========================
        // FILTER RATING SUB KRITERIA
        // =========================
        $ratingOptions = $subKriteriaModel
            ->where('kode_kriteria', 'C1')
            ->orderBy('nilai', 'DESC')
            ->findAll();

        $hargaOptions = $subKriteriaModel
            ->where('kode_kriteria', 'C4')
            ->orderBy('nilai', 'DESC')
            ->findAll();

        $parkirOptions = $subKriteriaModel
            ->where('kode_kriteria', 'C7')
            ->orderBy('nilai', 'DESC')
            ->findAll();


        // =========================
        // QUERY LIST WISATA (FIX)
        // =========================
        $builder = $alternatifModel->builder();

        $builder->select('*');
        $builder->orderBy('id', 'ASC'); // 🔥 URUT ID

        if ($kategori && $kategori !== 'All') {
            $builder->where('kategori_wisata', $kategori);
        }

        if ($keyword) {
            $builder->like('nama_wisata', $keyword);
        }

        if ($rating !== '' && $rating !== null) {
            $builder->where('FLOOR(rating)', (int)$rating);
        }

        // =========================
        // TOTAL DATA (UNTUK PAGINATION)
        // =========================
        $totalData = $builder->countAllResults(false);

        // =========================
        // DATA PER PAGE
        // =========================
        $builder->limit($perPage, $offset);
        $wisata = $builder->get()->getResultArray();

        // =========================
        // NORMALISASI RATING
        // =========================
        foreach ($wisata as &$w) {
            $w['rating'] = is_numeric($w['rating']) ? (float)$w['rating'] : 0.0;
            $w['jumlah_ulasan'] = (int)($w['jumlah_ulasan'] ?? 0);
        }

        $totalPages = ceil($totalData / $perPage);

        // =========================
        // TRENDING & REKOMENDASI (SAW)
        // =========================
        $alternatif   = $alternatifModel->findAll();
        $penilaianAll = $penilaianModel->findAll();

        $penilaianMap = [];
        foreach ($penilaianAll as $p) {
            $penilaianMap[$p['id_wisata']] = $p;
        }

        // TRENDING (C3)
        $trendingTemp = [];
        foreach ($alternatif as $a) {
            $trendingTemp[$a['id_wisata']] = (int)($penilaianMap[$a['id_wisata']]['C3'] ?? 0);
        }
        arsort($trendingTemp);
        $trendingTemp = array_slice($trendingTemp, 0, 10, true);

        $trendingWisata = [];
        foreach ($trendingTemp as $id => $val) {
            foreach ($alternatif as $a) {
                if ($a['id_wisata'] === $id) {
                    $trendingWisata[] = [
                        'id_wisata' => $a['id_wisata'],
                        'nama_wisata' => $a['nama_wisata'],
                        'gambar' => $a['gambar'],
                        'rating' => (float)$a['rating'],
                        'jumlah_pengunjung' => $val,
                    ];
                    break;
                }
            }
        }

        // REKOMENDASI (C2)
        $rekomendasiTemp = [];
        foreach ($alternatif as $a) {
            $rekomendasiTemp[$a['id_wisata']] = (int)($penilaianMap[$a['id_wisata']]['C2'] ?? 0);
        }
        arsort($rekomendasiTemp);
        $rekomendasiTemp = array_slice($rekomendasiTemp, 0, 10, true);

        $rekomendasiWisata = [];
        foreach ($rekomendasiTemp as $id => $val) {
            foreach ($alternatif as $a) {
                if ($a['id_wisata'] === $id) {
                    $rekomendasiWisata[] = [
                        'id_wisata' => $a['id_wisata'],
                        'nama_wisata' => $a['nama_wisata'],
                        'gambar' => $a['gambar'],
                        'rating' => (float)$a['rating'],
                        'jumlah_ulasan' => $val,
                    ];
                    break;
                }
            }
        }

        // =========================
        // VIEW
        // =========================
        return view('template/index', [
            'kategori'          => $kategoriList,
            'wisata'            => $wisata,
            'totalPages'        => $totalPages,
            'currentPage'       => $page,
            'kategoriDipilih'   => $kategori,
            'ratingDipilih'     => $rating,
            'keyword'           => $keyword,
            'ratingOptions'     => $ratingOptions,
            'hargaOptions'      => $hargaOptions,
            'parkirOptions'     => $parkirOptions,
            'trendingWisata'    => $trendingWisata,
            'rekomendasiWisata' => $rekomendasiWisata,
        ]);
    }


    public function home()
    {
        $session = session();
        if (!$session->get('logged_in')) {
            return redirect()->to('/');
        }

        $wisataModel    = new AlternatifModel();   // tbl_alternatif
        $penilaianModel = new PenilaianModel();    // tbl_penilaian
        $kriteriaModel  = new KriteriaModel();     // tbl_kriteria
        $subKriteriaModel = new SubKriteriaModel(); // tbl_sub_kriteria

        // Hitung total data
        $totalAlternatif  = $wisataModel->countAllResults(false);
        $totalKriteria    = $kriteriaModel->countAllResults(false);
        $totalSubKriteria = $subKriteriaModel->countAllResults(false);

        // Alternatif
        $alternatif = $wisataModel->findAll();

        // Kriteria
        $kriteria = $kriteriaModel->orderBy('id', 'ASC')->findAll();
        $weights = [];
        $types   = [];
        foreach ($kriteria as $k) {
            $weights[$k['kode_kriteria']] = (float) $k['bobot'];
            $types[$k['kode_kriteria']]   = strtolower($k['type']); // Benefit/Cost
        }

        // Penilaian
        $penilaianAll = $penilaianModel->findAll();
        $penilaian = [];
        foreach ($penilaianAll as $p) {
            $penilaian[$p['id_wisata']] = $p;
        }

        // Hitung max & min tiap C
        $maxVal = [];
        $minVal = [];
        foreach ($kriteria as $k) {
            $kode = $k['kode_kriteria'];
            $col  = array_column($penilaianAll, $kode);
            $maxVal[$kode] = max($col);
            $minVal[$kode] = min($col);
        }

        // Hitung skor total tiap alternatif
        $scores = [];
        foreach ($alternatif as $alt) {
            $idWisata = $alt['id_wisata']; // ini kunci join
            $nama     = $alt['nama_wisata'];

            $row = $penilaian[$idWisata] ?? null;

            $total = 0;
            if ($row) {
                for ($i = 1; $i <= 15; $i++) {
                    $kode  = 'C' . $i;
                    $nilai = (float)($row[$kode] ?? 0);
                    $bobot = $weights[$kode] ?? 0;

                    if (($types[$kode] ?? 'benefit') === 'cost') {
                        $norm = $nilai > 0 ? $minVal[$kode] / $nilai : 0;
                    } else {
                        $norm = $maxVal[$kode] > 0 ? $nilai / $maxVal[$kode] : 0;
                    }

                    $total += $norm * $bobot;
                }
            }

            $scores[$idWisata] = [
                'nama'  => $nama,
                'id_wisata'  => $idWisata,
                'total' => $total
            ];
        }

        // Ranking
        uasort($scores, fn($a, $b) => $b['total'] <=> $a['total']);

        $ranked = [];
        $rank = 1;
        foreach ($scores as $id => $s) {
            $ranked[] = [
                'nama'  => $s['nama'],
                'id_wisata'  => $s['id_wisata'],
                'total' => number_format($s['total'], 3, ',', '.'),
                'rank'  => $rank++
            ];
        }

        //    Pagination 5 perdata
        $perPage = 5;
        $page    = (int) ($this->request->getGet('page') ?? 1);
        $total   = count($ranked);
        $start   = ($page - 1) * $perPage;

        $rankedPaginated = array_slice($ranked, $start, $perPage);

        $totalPages = ceil($total / $perPage);


        return view('template/home', [
            'ranked'          => $rankedPaginated,
            'totalAlternatif' => $totalAlternatif,
            'totalKriteria'   => $totalKriteria,
            'totalSubKriteria' => $totalSubKriteria,
            'page' => $page,
            'totalPages' => $totalPages
        ]);
    }

    public function dataAlternatif()
    {
        // return view('template/data_alternatif');
        $alternatifModel = new AlternatifModel();

        $kategori = $alternatifModel->select('kategori_wisata')
            ->groupBy('kategori_wisata')
            ->findAll();

        $kategoriDipilih = $this->request->getGet('kategori');
        $search = $this->request->getGet('search');

        $wisata = [];

        // Filter search
        if (!empty($search)) {
            $alternatifModel->groupStart()
                ->like('nama_wisata', $search)
                ->orLike('deskripsi', $search)
                ->orLike('kategori_wisata', $search)
                ->groupEnd();
        }

        if ($kategoriDipilih) {
            $wisata = $alternatifModel->where('kategori_wisata', $kategoriDipilih)->findAll();
        } else {
            $wisata = $alternatifModel->findAll();
        }

        return view('template/data_alternatif', [
            'kategori'        => $kategori,
            'wisata'          => $wisata,
            'kategoriDipilih' => $kategoriDipilih,
            'search'          => $search
        ]);
    }
    public function dataKriteria()
    {
        // $kriteriaModel = new KriteriaModel();

        // $kriter = $kriteriaModel
        //     ->select('tbl_kriteria.id, tbl_kriteria.kode_kriteria, tbl_kriteria.nama_kriteria, tbl_kriteria.kategori_utama, tbl_kriteria.bobot, tbl_sub_kriteria.type')
        //     ->join('tbl_sub_kriteria', 'tbl_sub_kriteria.kode_kriteria = tbl_kriteria.kode_kriteria', 'left')
        //     ->groupBy('tbl_kriteria.kode_kriteria')
        //     ->orderBy('id', 'ASC')->findAll();

        // return view('template/data_kriteria', [
        //     'kriteria' => $kriter
        // ]);
        $kriteriaModel = new KriteriaModel();

        $search = $this->request->getGet('search');

        // base query
        $kriteriaModel->select('*')
            ->groupBy('kode_kriteria')
            ->orderBy('id', 'ASC');

        // apply search filter
        if (!empty($search)) {
            $kriteriaModel
                ->groupStart()
                ->like('kode_kriteria', $search)
                ->orLike('nama_kriteria', $search)
                ->orLike('type', $search)
                ->orLike('bobot', $search)
                ->groupEnd();
        }

        $kriter = $kriteriaModel->findAll();

        return view('template/data_kriteria', [
            'kriteria' => $kriter,
            'search' => $search
        ]);
    }

    public function dataSubKriteria()
    {
        $subKriteriaModel = new SubKriteriaModel();

        // Susun base query
        $subKriteriaModel
            ->select('tbl_sub_kriteria.*, tbl_kriteria.nama_kriteria')
            ->join('tbl_kriteria', 'tbl_kriteria.kode_kriteria = tbl_sub_kriteria.kode_kriteria')
            ->groupBy('tbl_sub_kriteria.kode_kriteria');

        // Ambil keyword
        $search = $this->request->getGet('search');

        // Terapkan filter SEARCH
        if (!empty($search)) {
            $subKriteriaModel
                ->groupStart()
                ->like('tbl_sub_kriteria.kode_kriteria', $search)
                ->orLike('tbl_kriteria.nama_kriteria', $search)
                ->orLike('tbl_kriteria.type', $search)
                ->orLike('tbl_kriteria.bobot', $search)
                ->groupEnd();
        }

        // Terakhir baru ambil data
        $subKriter = $subKriteriaModel->findAll();

        return view('template/data_sub_kriteria', [
            'kriteria' => $subKriter,
            'search'   => $search
        ]);
    }

    public function dataPenilaian()
    {
        $wisataModel     = new AlternatifModel();
        $penilaianModel  = new PenilaianModel();
        $kriteriaModel   = new KriteriaModel();
        $rawModel        = new PenilaianValueRawModel();

        // Ambil kriteria
        $kriteria = $kriteriaModel->orderBy('id', 'ASC')->findAll();
        $search   = $this->request->getGet('search');

        // Query utama
        $wisataModel
            ->select('tbl_alternatif.id, tbl_alternatif.id_wisata, tbl_alternatif.nama_wisata, 
                  tbl_alternatif.kategori_wisata, tbl_penilaian.*')
            ->join('tbl_penilaian', 'tbl_penilaian.id_wisata = tbl_alternatif.id_wisata');

        if (!empty($search)) {
            $wisataModel
                ->groupStart()
                ->like('tbl_alternatif.nama_wisata', $search)
                ->orLike('tbl_alternatif.kategori_wisata', $search)
                ->groupEnd();
        }

        $alternatif = $wisataModel->findAll();

        // =========================
        // MAP RAW VALUE
        // =========================
        $rawRows = $rawModel->findAll();
        $rawMap = [];

        foreach ($rawRows as $r) {
            $rawMap[$r['id_wisata']] = $r;
        }

        // mapping kolom raw
        $rawColumnMap = [
            'C1'  => 'C1_rating',
            'C2'  => 'C2_ulasan',
            'C3'  => 'C3_pengunjung',
            'C4'  => 'C4_biaya',
            'C5'  => 'C5_toilet',
            'C6'  => 'C6_ibadah',
            'C7'  => 'C7_parkir',
            'C8'  => 'C8_indoor',
            'C9'  => 'C9_kesehatan',
            'C10' => 'C10_penerangan',
            'C11' => 'C11_penginapan',
            'C12' => 'C12_kuliner',
            'C13' => 'C13_atm',
            'C14' => 'C14_spbu',
            'C15' => 'C15_pusat_kota',
        ];

        // =========================
        // SUSUN PENILAIAN FINAL
        // =========================
        $penilaian = [];

        foreach ($alternatif as $alt) {
            $idWisata = $alt['id_wisata'];

            foreach ($kriteria as $k) {
                $kode = $k['kode_kriteria']; // C1, C2, ...

                // default = angka
                $value = $alt[$kode] ?? 0;

                // jika ada raw
                if (
                    isset($rawMap[$idWisata]) &&
                    isset($rawColumnMap[$kode]) &&
                    !empty($rawMap[$idWisata][$rawColumnMap[$kode]])
                ) {
                    $value = $rawMap[$idWisata][$rawColumnMap[$kode]];
                }

                $penilaian[$alt['id']][$kode] = $value;
            }
        }

        return view('template/data_penilaian', [
            'alternatif' => $alternatif,
            'kriteria'   => $kriteria,
            'penilaian'  => $penilaian,
            'search'     => $search
        ]);
    }


    public function dataPerhitungan()
    {
        $wisataModel     = new AlternatifModel();   // tbl_alternatif
        $kriteriaModel   = new KriteriaModel();     // tbl_kriteria
        $subKriteriaModel = new SubKriteriaModel();  // tbl_sub_kriteria
        $penilaianModel  = new PenilaianModel();    // tbl_penilaian

        $alternatif   = $wisataModel->findAll();
        $kriteria     = $kriteriaModel->orderBy('id', 'ASC')->findAll();
        $subKriteria  = $subKriteriaModel->orderBy('id', 'ASC')->findAll();

        // Group sub-kriteria per kriteria
        $subByK = [];
        foreach ($subKriteria as $s) {
            $subByK[$s['kode_kriteria']][] = $s;
        }

        // Ambil data penilaian (C1..C15) berdasarkan id_wisata
        $penilaian = [];
        foreach ($penilaianModel->findAll() as $p) {
            $penilaian[$p['id_wisata']] = $p;
        }

        // STEP 1: Matriks Keputusan (X)
        $matrixX = [];
        foreach ($alternatif as $alt) {
            $idWisata = $alt['id_wisata'];
            $row = [];

            foreach ($kriteria as $k) {
                $kode = $k['kode_kriteria'];
                $rawValue = $penilaian[$idWisata][$kode] ?? 0; // ambil nilai dari tbl_penilaian
                $row[$kode] = is_numeric($rawValue) ? (float) $rawValue : 0;
            }

            $matrixX[$alt['id']] = [
                'nama'   => $alt['nama_wisata'],
                'values' => $row
            ];
        }

        // STEP 2: Normalisasi (R)
        $R = [];
        $maxPer = [];
        $minPer = [];

        foreach ($kriteria as $k) {
            $kode = $k['kode_kriteria'];
            $vals = array_map(fn($a) => $a['values'][$kode], $matrixX);
            $maxPer[$kode] = max($vals);
            $minPer[$kode] = min($vals);
        }

        foreach ($matrixX as $id => $data) {
            $rrow = [];
            foreach ($kriteria as $k) {
                $kode = $k['kode_kriteria'];
                $xij  = $data['values'][$kode];

                $type = strtolower($k['kategori_utama']);
                if ($type === 'cost') {
                    $r = ($xij > 0) ? ($minPer[$kode] / $xij) : 0;
                } else {
                    $r = ($maxPer[$kode] > 0) ? ($xij / $maxPer[$kode]) : 0;
                }
                $rrow[$kode] = $r;
            }
            $R[$id] = ['nama' => $data['nama'], 'values' => $rrow];
        }

        // STEP 3: Hitung skor akhir (V)
        $weights = [];
        foreach ($kriteria as $k) {
            $weights[$k['kode_kriteria']] = (float)$k['bobot'];
        }

        $scores = [];
        foreach ($R as $id => $d) {
            $v = 0;
            foreach ($kriteria as $k) {
                $kode = $k['kode_kriteria'];
                $v += $weights[$kode] * $d['values'][$kode];
            }
            $scores[$id] = ['nama' => $d['nama'], 'score' => $v];
        }

        // Urutkan skor
        uasort($scores, fn($a, $b) => $b['score'] <=> $a['score']);

        // STEP 4: Detail perhitungan (R, W, RW)
        $detail = [];
        foreach ($R as $id => $d) {
            foreach ($kriteria as $k) {
                $kode = $k['kode_kriteria'];
                $r = $d['values'][$kode];
                $w = $weights[$kode];
                $detail[$id][$kode] = [
                    'R'  => $r,
                    'W'  => $w,
                    'RW' => $r * $w,
                ];
            }
        }

        return view('template/data_perhitungan', [
            'kriteria'   => $kriteria,
            'matrixX'    => $matrixX,
            'R'          => $R,
            'scores'     => $scores,
            'weights'    => $weights,
            'detail'     => $detail,
        ]);
    }

    private function matchesSubCriteria($value, $subText)
    {
        $text = trim(str_replace(['–', '—', '−'], '-', $subText));
        $text = preg_replace('/\s+/', ' ', $text);

        if (preg_match('/^\s*>\s*([\d\.]+)/', $text, $m)) return floatval($value) > floatval($m[1]);
        if (preg_match('/^\s*<\s*([\d\.]+)/', $text, $m)) return floatval($value) < floatval($m[1]);
        if (preg_match('/([\d\.]+)\s*-\s*([\d\.]+)/', $text, $m)) {
            $v = floatval($value);
            return ($v >= $m[1] && $v <= $m[2]);
        }
        if (preg_match('/([\d\.]+)/', $text, $m)) return floatval($value) == floatval($m[1]);

        return false;
    }

    public function hasilAkhir()
    {
        $wisataModel    = new AlternatifModel();   // tbl_alternatif
        $penilaianModel = new PenilaianModel();    // tbl_penilaian
        $kriteriaModel  = new KriteriaModel();     // tbl_kriteria

        $search = $this->request->getGet('search');

        if (!empty($search)) {
            $wisataModel
                ->groupStart()
                ->like('nama_wisata', $search)
                ->orLike('deskripsi', $search)
                ->orLike('kategori_wisata', $search)
                ->groupEnd();
        }

        // Alternatif
        $alternatif = $wisataModel->findAll();

        // Kriteria
        $kriteria = $kriteriaModel->orderBy('id', 'ASC')->findAll();
        $weights = [];
        $types   = [];
        foreach ($kriteria as $k) {
            $weights[$k['kode_kriteria']] = (float) $k['bobot'];
            $types[$k['kode_kriteria']]   = strtolower($k['type']); // Benefit/Cost
        }

        // Penilaian
        $penilaianAll = $penilaianModel->findAll();
        $penilaian = [];
        foreach ($penilaianAll as $p) {
            $penilaian[$p['id_wisata']] = $p;
        }

        // Hitung max & min tiap C
        $maxVal = [];
        $minVal = [];
        foreach ($kriteria as $k) {
            $kode = $k['kode_kriteria'];
            $col  = array_column($penilaianAll, $kode);
            $maxVal[$kode] = max($col);
            $minVal[$kode] = min($col);
        }

        // Hitung skor total tiap alternatif
        $scores = [];
        foreach ($alternatif as $alt) {
            $idWisata = $alt['id_wisata']; // ini kunci join
            $nama     = $alt['nama_wisata'];

            $row = $penilaian[$idWisata] ?? null;

            $total = 0;
            if ($row) {
                for ($i = 1; $i <= 15; $i++) {
                    $kode  = 'C' . $i;
                    $nilai = (float)($row[$kode] ?? 0);
                    $bobot = $weights[$kode] ?? 0;

                    if (($types[$kode] ?? 'benefit') === 'cost') {
                        $norm = $nilai > 0 ? $minVal[$kode] / $nilai : 0;
                    } else {
                        $norm = $maxVal[$kode] > 0 ? $nilai / $maxVal[$kode] : 0;
                    }

                    $total += $norm * $bobot;
                }
            }

            $scores[$idWisata] = [
                'nama'  => $nama,
                'id_wisata'  => $idWisata,
                'total' => $total
            ];
        }

        // Ranking
        uasort($scores, fn($a, $b) => $b['total'] <=> $a['total']);

        $ranked = [];
        $rank = 1;
        foreach ($scores as $id => $s) {
            $ranked[] = [
                'nama'  => $s['nama'],
                'id_wisata'  => $s['id_wisata'],
                'total' => number_format($s['total'], 3, ',', '.'),
                'rank'  => $rank++
            ];
        }

        return view('template/hasil_akhir', [
            'ranked' => $ranked,
            'search' => $search
        ]);
    }

    public function dataUser()
    {
        $userModel = new UserModel();


        $search = $this->request->getGet('search');
        // Filter search
        if (!empty($search)) {
            $userModel->groupStart()
                ->like('username', $search)
                ->orLike('nama', $search)
                ->orLike('email', $search)
                ->orLike('role', $search)
                ->groupEnd();
        }
        $users = $userModel->findAll();

        return view('template/data_user', [
            'users' => $users,
            'search' => $search
        ]);
    }
    public function dataProfile()
    {
        $alternatifModel = new AlternatifModel();

        // Ambil semua kategori wisata untuk sidebar
        $kategori = $alternatifModel->select('kategori_wisata')
            ->groupBy('kategori_wisata')
            ->findAll();

        // Cek apakah user login
        $session = session();
        if (!$session->get('logged_in')) {
            return redirect()->to(base_url('/'))->with('error', 'Silakan login terlebih dahulu.');
        }

        // Kirim variabel ke view
        return view('template/data_profile', [
            'kategori' => $kategori
        ]);
    }

    public function updateProfile()
    {
        $session = session();
        $userModel = new UserModel();
        $id = $session->get('user_id');

        if (empty($id)) {
            return redirect()->back()->with('error', 'User tidak ditemukan dalam sesi login.');
        }

        // Ambil data dari form
        $nama     = $this->request->getPost('nama');
        $username = $this->request->getPost('username');
        $email    = $this->request->getPost('email');
        $password = $this->request->getPost('password');

        // Data yang akan diupdate
        $dataUpdate = [
            'nama'       => $nama,
            'username'   => $username,
            'email'      => $email,
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        // Jika password diisi baru, update hash
        if (!empty($password)) {
            $dataUpdate['password'] = password_hash($password, PASSWORD_BCRYPT);
        }

        // Jalankan update ke database
        $userModel->where('id', $id)->set($dataUpdate)->update();

        // Update session agar data langsung ter-refresh
        $session->set($dataUpdate);

        return redirect()->to(base_url('/data-profile'))->with('success', 'Profil berhasil diperbarui.');
    }

    public function updateFoto()
    {
        $session = session();
        $userModel = new UserModel();
        $id = $session->get('user_id');

        if (empty($id)) {
            return redirect()->back()->with('error', 'User tidak ditemukan dalam sesi login.');
        }

        $file = $this->request->getFile('foto');
        if (!$file || !$file->isValid()) {
            return redirect()->back()->with('error', 'File foto tidak valid.');
        }

        // Validasi ekstensi
        $allowed = ['jpg', 'jpeg', 'png', 'webp'];
        $ext = strtolower($file->getExtension());
        if (!in_array($ext, $allowed)) {
            return redirect()->back()->with('error', 'Format foto tidak valid. Gunakan JPG, PNG, atau WEBP.');
        }

        // Hapus foto lama jika ada
        $oldFoto = $session->get('foto');
        if ($oldFoto && file_exists('assets/images/users/' . $oldFoto)) {
            unlink('assets/images/users/' . $oldFoto);
        }

        // Simpan foto baru
        $newName = $file->getRandomName();
        $file->move('assets/images/users/', $newName);

        // Update database
        $userModel->update($id, [
            'foto' => $newName,
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        // Update session
        $session->set('foto', $newName);

        return redirect()->to(base_url('/data-profile'))->with('success', 'Foto profil berhasil diperbarui.');
    }

    public function daftarWisata()
    {
        $alternatifModel = new AlternatifModel();

        // Ambil daftar kategori unik (untuk filter dropdown)
        $kategori = $alternatifModel->select('kategori_wisata')
            ->groupBy('kategori_wisata')
            ->findAll();

        // Ambil parameter pencarian dan kategori dari URL
        $keyword = $this->request->getGet('q');
        $kategoriDipilih = $this->request->getGet('kategori');

        $perPage = 5; // jumlah data per halaman

        // Query dasar
        $builder = $alternatifModel;

        // Filter berdasarkan kategori (jika dipilih)
        if (!empty($kategoriDipilih)) {
            $builder = $builder->where('kategori_wisata', $kategoriDipilih);
        }

        // Filter berdasarkan keyword pencarian (jika ada)
        if (!empty($keyword)) {
            $builder = $builder->groupStart()
                ->like('nama_wisata', $keyword)
                ->orLike('kategori_wisata', $keyword)
                ->orLike('deskripsi', $keyword)
                ->groupEnd();
        }

        // Ambil data dengan pagination (otomatis membaca parameter page_wisata)
        $wisata = $builder->paginate($perPage, 'wisata');

        // Dapatkan instance pager
        $pager = $alternatifModel->pager;

        // Kirim semua data ke view
        return view('template/daftar_wisata', [
            'wisata'          => $wisata,
            'pager'           => $pager,
            'keyword'         => $keyword,
            'kategori'        => $kategori,
            'kategoriDipilih' => $kategoriDipilih
        ]);
    }

    public function hasilAkhirGuest()
    {
        // $session = session();
        // if (!$session->get('logged_in')) {
        //     return redirect()->to('/');
        // }

        $alternatifModel   = new AlternatifModel();   // tbl_alternatif
        $penilaianModel    = new PenilaianModel();    // tbl_penilaian
        $kriteriaModel     = new KriteriaModel();     // tbl_kriteria
        $subKriteriaModel  = new SubKriteriaModel();  // tbl_sub_kriteria

        // Ambil semua kategori untuk dropdown
        $kategori = $alternatifModel->select('kategori_wisata')
            ->groupBy('kategori_wisata')
            ->findAll();

        // Hitung total data
        $totalAlternatif  = $alternatifModel->countAllResults(false);
        $totalKriteria    = $kriteriaModel->countAllResults(false);
        $totalSubKriteria = $subKriteriaModel->countAllResults(false);

        // Alternatif
        $alternatif = $alternatifModel->findAll();

        // Kriteria
        $kriteria = $kriteriaModel->orderBy('id', 'ASC')->findAll();
        $weights = [];
        $types   = [];
        foreach ($kriteria as $k) {
            $weights[$k['kode_kriteria']] = (float) $k['bobot'];
            $types[$k['kode_kriteria']]   = strtolower($k['type']); // Benefit/Cost
        }

        // Penilaian
        $penilaianAll = $penilaianModel->findAll();
        $penilaian = [];
        foreach ($penilaianAll as $p) {
            $penilaian[$p['id_wisata']] = $p;
        }

        // Hitung max & min tiap C
        $maxVal = [];
        $minVal = [];
        foreach ($kriteria as $k) {
            $kode = $k['kode_kriteria'];
            $col  = array_column($penilaianAll, $kode);
            $maxVal[$kode] = max($col);
            $minVal[$kode] = min($col);
        }

        // Hitung skor total tiap alternatif
        $scores = [];
        foreach ($alternatif as $alt) {
            $idWisata = $alt['id_wisata'];
            $nama     = $alt['nama_wisata'];

            $row = $penilaian[$idWisata] ?? null;

            $total = 0;
            if ($row) {
                for ($i = 1; $i <= 15; $i++) {
                    $kode  = 'C' . $i;
                    $nilai = (float)($row[$kode] ?? 0);
                    $bobot = $weights[$kode] ?? 0;

                    if (($types[$kode] ?? 'benefit') === 'cost') {
                        $norm = $nilai > 0 ? $minVal[$kode] / $nilai : 0;
                    } else {
                        $norm = $maxVal[$kode] > 0 ? $nilai / $maxVal[$kode] : 0;
                    }

                    $total += $norm * $bobot;
                }
            }

            $scores[$idWisata] = [
                'nama'      => $nama,
                'id_wisata' => $idWisata,
                'total'     => $total
            ];
        }

        // Ranking
        uasort($scores, fn($a, $b) => $b['total'] <=> $a['total']);

        $ranked = [];
        $rank = 1;
        foreach ($scores as $id => $s) {
            $ranked[] = [
                'nama'      => $s['nama'],
                'id_wisata' => $s['id_wisata'],
                'total'     => number_format($s['total'], 3, ',', '.'),
                'rank'      => $rank++
            ];
        }

        // return hanya sekali, gabung semua data
        return view('template/hasil_akhir_guest', [
            'kategori'         => $kategori,
            'wisata'           => $alternatif,
            'kategoriDipilih'  => null,
            'ranked'           => $ranked,
            'totalAlternatif'  => $totalAlternatif,
            'totalKriteria'    => $totalKriteria,
            'totalSubKriteria' => $totalSubKriteria
        ]);
    }

    public function search()
    {
        $alternatifModel   = new AlternatifModel();
        $penilaianModel    = new PenilaianModel();
        $kriteriaModel     = new KriteriaModel();
        $subKriteriaModel  = new SubKriteriaModel();

        // Ambil input kategori dari form
        $kategoriDipilih = $this->request->getPost('wisata_name');

        // Ambil semua kategori untuk dropdown
        $kategori = $alternatifModel->select('kategori_wisata')
            ->groupBy('kategori_wisata')
            ->findAll();

        // Ambil data wisata sesuai kategori yang dipilih
        if (!empty($kategoriDipilih)) {
            $alternatif = $alternatifModel
                ->where('kategori_wisata', $kategoriDipilih)
                ->findAll();
        } else {
            $alternatif = $alternatifModel->findAll();
        }

        // Hitung total data
        $totalAlternatif  = $alternatifModel->countAllResults(false);
        $totalKriteria    = $kriteriaModel->countAllResults(false);
        $totalSubKriteria = $subKriteriaModel->countAllResults(false);

        // Proses ranking (sama seperti index)
        $kriteria = $kriteriaModel->orderBy('id', 'ASC')->findAll();
        $weights = [];
        $types   = [];
        foreach ($kriteria as $k) {
            $weights[$k['kode_kriteria']] = (float) $k['bobot'];
            $types[$k['kode_kriteria']]   = strtolower($k['type']);
        }

        $penilaianAll = $penilaianModel->findAll();
        $penilaian = [];
        foreach ($penilaianAll as $p) {
            $penilaian[$p['id_wisata']] = $p;
        }

        $maxVal = [];
        $minVal = [];
        foreach ($kriteria as $k) {
            $kode = $k['kode_kriteria'];
            $col  = array_column($penilaianAll, $kode);
            $maxVal[$kode] = max($col);
            $minVal[$kode] = min($col);
        }

        $scores = [];
        foreach ($alternatif as $alt) {
            $idWisata = $alt['id_wisata'];
            $nama     = $alt['nama_wisata'];

            $row = $penilaian[$idWisata] ?? null;

            $total = 0;
            if ($row) {
                for ($i = 1; $i <= 15; $i++) {
                    $kode  = 'C' . $i;
                    $nilai = (float)($row[$kode] ?? 0);
                    $bobot = $weights[$kode] ?? 0;

                    if (($types[$kode] ?? 'benefit') === 'cost') {
                        $norm = $nilai > 0 ? $minVal[$kode] / $nilai : 0;
                    } else {
                        $norm = $maxVal[$kode] > 0 ? $nilai / $maxVal[$kode] : 0;
                    }

                    $total += $norm * $bobot;
                }
            }

            $scores[$idWisata] = [
                'nama'      => $nama,
                'id_wisata' => $idWisata,
                'total'     => $total
            ];
        }

        uasort($scores, fn($a, $b) => $b['total'] <=> $a['total']);

        $ranked = [];
        $rank = 1;
        foreach ($scores as $id => $s) {
            $ranked[] = [
                'nama'      => $s['nama'],
                'id_wisata' => $s['id_wisata'],
                'total'     => number_format($s['total'], 3, ',', '.'),
                'rank'      => $rank++
            ];
        }

        $rankMap = [];
        foreach ($ranked as $r) {
            $rankMap[$r['id_wisata']] = $r['rank'];
        }

        foreach ($alternatif as &$a) {
            $a['rank'] = $rankMap[$a['id_wisata']] ?? null;
        }
        unset($a);

        return view('template/index', [
            'kategori'         => $kategori,
            'wisata'           => $alternatif,
            'kategoriDipilih'  => $kategoriDipilih,
            'rank'           => $ranked,
            'totalAlternatif'  => $totalAlternatif,
            'totalKriteria'    => $totalKriteria,
            'totalSubKriteria' => $totalSubKriteria
        ]);
    }



    // toogle bookmark user
    public function toggleBookmark()
    {
        $bookmarkModel = new BookmarkModel();
        $alternatifModel = new AlternatifModel();

        $idWisata = $this->request->getPost('id_wisata');
        $idUser = session()->get('email');

        if (!$idUser) {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Silakan login terlebih dahulu.']);
        }

        $existing = $bookmarkModel->where(['id_user' => $idUser, 'id_wisata' => $idWisata])->first();

        if ($existing) {
            $bookmarkModel->delete($existing['id_bookmark']);
            return $this->response->setJSON(['status' => 'removed']);
        } else {
            $bookmarkModel->insert([
                'id_user' => $idUser,
                'id_wisata' => $idWisata
            ]);
            return $this->response->setJSON(['status' => 'added']);
        }
    }

    public function bookmarkList()
    {
        $bookmarkModel   = new BookmarkModel();
        $alternatifModel = new AlternatifModel();
        $penilaianModel  = new PenilaianModel();
        $kriteriaModel   = new KriteriaModel();

        // =========================
        // KATEGORI (FILTER)
        // =========================
        $kategori = $alternatifModel
            ->select('kategori_wisata')
            ->groupBy('kategori_wisata')
            ->findAll();

        $keyword         = $this->request->getGet('q');
        $kategoriDipilih = $this->request->getGet('kategori');
        $perPage         = 5;

        // =========================
        // CEK LOGIN
        // =========================
        $email = session()->get('email');
        if (!$email) {
            return redirect()->to(base_url('/'))
                ->with('error', 'Silakan login terlebih dahulu.');
        }

        // =========================
        // AMBIL BOOKMARK USER
        // =========================
        $bookmarks    = $bookmarkModel->where('id_user', $email)->findAll();
        $idWisataList = array_column($bookmarks, 'id_wisata');

        if (empty($idWisataList)) {
            return view('template/bookmark_list', [
                'wisata'          => [],
                'pager'           => null,
                'keyword'         => $keyword,
                'kategori'        => $kategori,
                'kategoriDipilih' => $kategoriDipilih
            ]);
        }

        // =========================================================
        // 🔥 HITUNG RANKING GLOBAL (IDENTIK DENGAN INDEX)
        // =========================================================
        $alternatifAll = $alternatifModel->findAll();
        $kriteria      = $kriteriaModel->orderBy('id', 'ASC')->findAll();
        $penilaianAll  = $penilaianModel->findAll();

        // Bobot & tipe
        $weights = [];
        $types   = [];
        foreach ($kriteria as $k) {
            $weights[$k['kode_kriteria']] = (float) $k['bobot'];
            $types[$k['kode_kriteria']]   = strtolower($k['type']);
        }

        // Max & Min
        $maxVal = [];
        $minVal = [];
        foreach ($kriteria as $k) {
            $kode = $k['kode_kriteria'];
            $col  = array_column($penilaianAll, $kode);
            $maxVal[$kode] = max($col);
            $minVal[$kode] = min($col);
        }

        // Mapping penilaian
        $penilaianMap = [];
        foreach ($penilaianAll as $p) {
            $penilaianMap[$p['id_wisata']] = $p;
        }

        // Hitung skor global
        $scores = [];
        foreach ($alternatifAll as $alt) {
            $idWisata = $alt['id_wisata'];
            $total    = 0;

            if (isset($penilaianMap[$idWisata])) {
                for ($i = 1; $i <= 15; $i++) {
                    $kode  = 'C' . $i;
                    $nilai = (float) ($penilaianMap[$idWisata][$kode] ?? 0);
                    $bobot = $weights[$kode] ?? 0;

                    if (($types[$kode] ?? 'benefit') === 'cost') {
                        $norm = $nilai > 0 ? $minVal[$kode] / $nilai : 0;
                    } else {
                        $norm = $maxVal[$kode] > 0 ? $nilai / $maxVal[$kode] : 0;
                    }

                    $total += $norm * $bobot;
                }
            }

            $scores[$idWisata] = $total;
        }

        // Ranking global
        arsort($scores);
        $rankMap = [];
        $rank = 1;
        foreach ($scores as $id => $score) {
            $rankMap[$id] = $rank++;
        }

        // =========================================================
        // QUERY BOOKMARK (PAGINATION)
        // =========================================================
        $builder = $alternatifModel
            ->select('tbl_alternatif.*, tbl_bookmark.created_at AS tanggal_disimpan')
            ->join('tbl_bookmark', 'tbl_bookmark.id_wisata = tbl_alternatif.id_wisata')
            ->where('tbl_bookmark.id_user', $email)
            ->whereIn('tbl_alternatif.id_wisata', $idWisataList);

        if (!empty($kategoriDipilih)) {
            $builder->where('kategori_wisata', $kategoriDipilih);
        }

        if (!empty($keyword)) {
            $builder->groupStart()
                ->like('nama_wisata', $keyword)
                ->orLike('kategori_wisata', $keyword)
                ->orLike('deskripsi', $keyword)
                ->groupEnd();
        }

        $wisata = $builder->paginate($perPage, 'wisata');
        $pager  = $alternatifModel->pager;

        // Inject RANK GLOBAL ke bookmark
        foreach ($wisata as &$w) {
            $w['rank'] = $rankMap[$w['id_wisata']] ?? '-';
        }
        unset($w);

        return view('template/bookmark_list', [
            'wisata'          => $wisata,
            'pager'           => $pager,
            'keyword'         => $keyword,
            'kategori'        => $kategori,
            'kategoriDipilih' => $kategoriDipilih
        ]);
    }


    public function detail($id)
    {
        helper('geocode');

        $alternatifModel = new AlternatifModel();
        $bookmarkModel   = new BookmarkModel();

        $wisata = $alternatifModel->where('id_wisata', $id)->first();

        if (!$wisata) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException("Wisata tidak ditemukan");
        }

        // 🔥 AUTO GEOCODE JIKA BELUM ADA LAT/LNG
        if (empty($wisata['latitude']) || empty($wisata['longitude'])) {

            $geo = geocode_osm_by_name($wisata['nama_wisata']);

            if ($geo) {
                $alternatifModel->update($wisata['id'], [
                    'latitude'  => $geo['lat'],
                    'longitude' => $geo['lng'],
                ]);

                // refresh data
                $wisata['latitude']  = $geo['lat'];
                $wisata['longitude'] = $geo['lng'];
            }
        }

        // kategori
        $kategori = $alternatifModel->select('kategori_wisata')
            ->groupBy('kategori_wisata')
            ->findAll();

        // bookmark
        $idUser = session()->get('email');
        $isBookmarked = false;

        if ($idUser) {
            $isBookmarked = $bookmarkModel
                ->where([
                    'id_user'   => $idUser,
                    'id_wisata' => $id
                ])->countAllResults() > 0;
        }

        // =========================
        // AMBIL VALUE RAW FASILITAS TERDEKAT (C11–C15)
        // =========================
        $db = \Config\Database::connect();

        $valueRaw = $db->table('tbl_penilaian_value_raw')
            ->where('id_wisata', $id)
            ->get()
            ->getRowArray();

        // Default jika belum ada data
        $fasilitasTerdekat = [
            'penginapan' => $valueRaw['C11_penginapan'] ?? null,
            'kuliner'    => $valueRaw['C12_kuliner'] ?? null,
            'atm'        => $valueRaw['C13_atm'] ?? null,
            'spbu'       => $valueRaw['C14_spbu'] ?? null,
            'pusat_kota' => $valueRaw['C15_pusat_kota'] ?? null,
        ];

        // =========================
        // AMBIL DATA FASILITAS (C5–C10) DARI tbl_penilaian
        // =========================
        $penilaian = $db->table('tbl_penilaian')
            ->where('id_wisata', $id)
            ->get()
            ->getRowArray();

        // mapping nilai ke label
        function fasilitasLabel($nilai)
        {
            return match ((int)$nilai) {
                5 => 'Sangat Baik',
                4 => 'Baik',
                3 => 'Cukup',
                2 => 'Kurang',
                1 => 'Sangat Kurang',
                default => 'Tidak Ada'
            };
        }

        $fasilitasWisata = [];

        if ($penilaian) {
            $fasilitasWisata = [
                'toilet'      => fasilitasLabel($penilaian['C5'] ?? 0),
                'ibadah'      => fasilitasLabel($penilaian['C6'] ?? 0),
                'parkir'      => fasilitasLabel($penilaian['C7'] ?? 0),
                'indoor'      => fasilitasLabel($penilaian['C8'] ?? 0),
                'kesehatan'   => fasilitasLabel($penilaian['C9'] ?? 0),
                'penerangan'  => fasilitasLabel($penilaian['C10'] ?? 0),
            ];
        }


        return view('template/detail_wisata', [
            'wisata'       => $wisata,
            'kategori'     => $kategori,
            'isBookmarked' => $isBookmarked,
            'fasilitasTerdekat' => $fasilitasTerdekat,
            'fasilitasWisata'  => $fasilitasWisata
        ]);
    }
}
