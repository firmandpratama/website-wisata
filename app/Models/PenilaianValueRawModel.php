<?php

namespace App\Models;

use CodeIgniter\Model;

class PenilaianValueRawModel extends Model
{
    protected $table = 'tbl_penilaian_value_raw';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id_wisata',
        'C1_rating',
        'C2_ulasan',
        'C3_pengunjung',
        'C4_biaya',
        'C5_toilet',
        'C6_ibadah',
        'C7_parkir',
        'C8_indoor',
        'C9_kesehatan',
        'C10_penerangan',
        'C11_penginapan',
        'C12_kuliner',
        'C13_atm',
        'C14_spbu',
        'C15_pusat_kota'
    ];
}
