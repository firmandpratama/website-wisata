<!doctype html>
<html lang="en" data-layout="horizontal" data-layout-style="" data-layout-position="fixed" data-topbar="light">

<head>

    <meta charset="utf-8" />
    <title>Wisataku | Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!-- icon -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">

    <!-- swiper css -->
    <link href="assets/libs/swiper/swiper-bundle.min.css" rel="stylesheet" type="text/css" />

    <!-- lef let -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css">

    <!-- glightbox css -->
    <link rel="stylesheet" href="assets/libs/glightbox/css/glightbox.min.css">

    <!-- Layout config Js -->
    <script src="assets/js/layout.js"></script>
    <!-- Bootstrap Css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <!-- custom Css-->
    <link href="assets/css/custom.min.css" rel="stylesheet" type="text/css" />

    <style>
        .modal-backdrop {
            z-index: 1040 !important;
        }

        .modal {
            z-index: 1050 !important;
        }

        /* SWIPER AREA */
        .swiper {
            padding: 10px 6px 20px;
        }

        /* SLIDE WIDTH */
        .swiper-slide {
            width: 280px !important;
            display: flex;
        }

        /* CARD */
        .wisata-card {
            width: 100%;
            border-radius: 14px;
            overflow: hidden;
            background: #fff;
            box-shadow: 0 4px 14px rgba(0, 0, 0, .08);
        }

        /* IMAGE */
        .wisata-card img {
            width: 100%;
            height: 170px;
            object-fit: cover;
        }

        /* BODY */
        .wisata-card .card-body {
            padding: 14px;
        }

        /* META */
        .wisata-meta {
            font-size: 13px;
            color: #6c757d;
        }
    </style>


</head>

<body>

    <!-- Begin page -->
    <div id="layout-wrapper">

        <?= $this->include('layouts/header') ?>


        <!-- alert untuk gagal login -->
        <?php if (session()->getFlashdata('error')): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <?= session()->getFlashdata('error') ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <?php endif; ?>

        <!-- Login modal -->
        <div id="loginModals" class="modal fade" tabindex="-1" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content border-0 overflow-hidden">
                    <div class="modal-body login-modal p-5">
                        <h5 class="text-white fs-20">Login</h5>
                    </div>
                    <div class="modal-body p-5">
                        <h5 class="mb-3">Silahkan login disini!</h5>
                        <form action="<?= base_url('auth/login') ?>" method="post">
                            <div class="mb-2">
                                <input type="email" class="form-control"
                                    id="exampleInputEmail1"
                                    placeholder="Enter your email/username" name="email">
                            </div>
                            <div class="mb-3">
                                <div class="input-group">
                                    <input type="password"
                                        class="form-control"
                                        name="password"
                                        id="passwordInput"
                                        placeholder="Enter your password">

                                    <span class="input-group-text" style="cursor:pointer;"
                                        id="togglePassword">
                                        <i class="ri-eye-off-line" id="toggleIcon"></i>
                                    </span>
                                </div>
                                <div
                                    class="mt-1 d-flex align-items-end justify-content-between mt-2">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#registerModal" data-bs-dismiss="modal">Register</a>
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#forgotModal" data-bs-dismiss="modal">Forgot password?</a>
                                </div>
                            </div>
                            <button type="submit"
                                class="btn btn-primary w-100">Login</button>
                        </form>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <!-- Modal Register -->
        <div class="modal fade" id="registerModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body p-5">
                        <h5 class="mb-3 text-center">Register Akun Baru</h5>
                        <form action="<?= base_url('auth/register') ?>" method="post">

                            <div class="mb-2">
                                <label for="nama_lengkap">Nama Lengkap</label>
                                <input type="text" class="form-control" name="nama" placeholder="Nama lengkap" required>
                            </div>
                            <div class="mb-2">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" name="email" placeholder="Email" required>
                            </div>
                            <div class="mb-2">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Password" required>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Forgot Password -->
        <div class="modal fade" id="forgotModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body p-5">
                        <h5 class="mb-3">Reset Password</h5>
                        <form action="<?= base_url('auth/forgotPassword') ?>" method="post">
                            <div class="mb-2">
                                <input type="email" class="form-control" name="email" placeholder="Masukkan email terdaftar" required>
                            </div>
                            <button type="submit" class="btn btn-warning w-100">Kirim Link Reset</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- end modal forget password -->

        <!-- ========== App Menu ========== -->
        <?= $this->include('layouts/sidebar') ?>

        <!-- Left Sidebar End -->
        <!-- Vertical Overlay-->
        <div class="vertical-overlay"></div>

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->

        <!-- end main content-->

        <div class="main-content">

            <div class="page-content">
                <div class="container-fluid">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                <h4 class="mb-sm-0">Wisata</h4>

                                <div class="page-title-right">

                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <form method="get" class="row g-3 mb-4 align-items-end">

                        <div class="col-md-2">
                            <label class="form-label">Cari Wisata</label>
                            <input type="text" name="q" class="form-control"
                                value="<?= esc($keyword ?? '') ?>"
                                placeholder="Nama wisata...">
                        </div>

                        <div class="col-md-2">
                            <label class="form-label">Kategori</label>
                            <select name="kategori" class="form-control">
                                <option value="All">Semua</option>
                                <?php foreach ($kategori as $k): ?>
                                    <option value="<?= esc($k['kategori_wisata']) ?>"
                                        <?= ($kategoriDipilih ?? '') == $k['kategori_wisata'] ? 'selected' : '' ?>>
                                        <?= esc($k['kategori_wisata']) ?>
                                    </option>
                                <?php endforeach ?>
                            </select>
                        </div>

                        <div class="col-md-2">
                            <label class="form-label">Rating</label>
                            <select name="rating" class="form-control">
                                <option value="">Semua</option>
                                <?php foreach ($ratingOptions as $r): ?>
                                    <option value="<?= $r['nilai'] ?>"
                                        <?= ($ratingDipilih ?? '') == $r['nilai'] ? 'selected' : '' ?>>
                                        <?= esc($r['sub_kriteria']) ?>
                                    </option>
                                <?php endforeach ?>
                            </select>
                        </div>

                        <div class="col-md-2">
                            <label class="form-label">Harga</label>
                            <select name="harga" class="form-control">
                                <option value="">Semua</option>
                                <?php foreach ($hargaOptions as $h): ?>
                                    <option value="<?= $h['nilai'] ?>">
                                        <?= esc($h['sub_kriteria']) ?>
                                    </option>
                                <?php endforeach ?>
                            </select>
                        </div>

                        <div class="col-md-2">
                            <label class="form-label">Parkir</label>
                            <select name="parkir" class="form-control">
                                <option value="">Semua</option>
                                <?php foreach ($parkirOptions as $p): ?>
                                    <option value="<?= $p['nilai'] ?>">
                                        <?= esc($p['sub_kriteria']) ?>
                                    </option>
                                <?php endforeach ?>
                            </select>
                        </div>

                        <div class="col-md-2">
                            <label class="form-label">Lokasi</label>
                            <button type="button" class="btn btn-outline-primary w-100"
                                onclick="getLocation()">
                                <i class="ri-map-pin-line"></i> Terdekat
                            </button>
                        </div>
                        <input type="hidden" name="user_lat" id="user_lat">
                        <input type="hidden" name="user_lng" id="user_lng">
                        <input type="hidden" name="sort" id="sort">

                        <div class="col-md-2">
                            <button class="btn btn-primary w-100">
                                <i class="ri-search-line"></i> Filter
                            </button>
                        </div>

                    </form>

                    <div class="row">
                        <?php foreach ($wisata as $w): ?>
                            <div class="col-xxl-3 col-lg-4 col-md-6 mb-4">
                                <div class="card wisata-card h-100">

                                    <div class="position-relative">
                                        <img src="<?= base_url('assets/images/foto_wisata/' . $w['gambar']) ?>"
                                            class="card-img-top wisata-img"
                                            alt="<?= esc($w['nama_wisata']) ?>">

                                        <!-- bookmark / favorite -->
                                        <span class="badge bg-light text-dark position-absolute top-0 end-0 m-2">
                                            <i class="ri-heart-line"></i>
                                        </span>
                                    </div>

                                    <div class="card-body">
                                        <!-- kategori -->
                                        <span class="badge bg-primary mb-2">
                                            <?= esc($w['kategori_wisata']) ?>
                                        </span>

                                        <!-- nama -->
                                        <h6 class="fw-semibold mb-1">
                                            <?= esc($w['nama_wisata']) ?>
                                        </h6>

                                        <!-- rating -->
                                        <?php
                                        $rating = isset($w['rating']) && is_numeric($w['rating'])
                                            ? (float)$w['rating']
                                            : 0.0;
                                        ?>

                                        <div class="text-warning mb-1">
                                            ⭐ <?= number_format($rating, 1) ?>
                                            <small class="text-muted">
                                                (<?= (int)($w['jumlah_ulasan'] ?? 0) ?> ulasan)
                                            </small>
                                        </div>

                                        <!-- jam operasional -->
                                        <small class="text-muted d-block mb-2">
                                            Jam Operasional: 08:00 - 17:00
                                        </small>

                                        <!-- harga / skor -->
                                        <a href="<?= base_url('detail-wisata/' . $w['id_wisata']) ?>"
                                            class="btn btn-sm btn-outline-primary w-100 mt-2">
                                            Lihat Detail
                                        </a>

                                    </div>
                                </div>
                            </div>

                        <?php endforeach ?>

                    </div>

                    <div class="d-flex justify-content-center mt-4">
                        <?php if ($totalPages > 1): ?>
                            <nav class="d-flex justify-content-center mt-4">
                                <ul class="pagination pagination-rounded">

                                    <?php
                                    $start = max(1, $currentPage - 2);
                                    $end   = min($totalPages, $currentPage + 2);
                                    ?>

                                    <!-- FIRST -->
                                    <?php if ($currentPage > 1): ?>
                                        <li class="page-item">
                                            <a class="page-link" href="?page=1">1</a>
                                        </li>
                                    <?php endif; ?>

                                    <!-- DOTS -->
                                    <?php if ($start > 2): ?>
                                        <li class="page-item disabled">
                                            <span class="page-link">…</span>
                                        </li>
                                    <?php endif; ?>

                                    <!-- MAIN PAGES -->
                                    <?php for ($i = $start; $i <= $end; $i++): ?>
                                        <li class="page-item <?= $i == $currentPage ? 'active' : '' ?>">
                                            <a class="page-link"
                                                href="?page=<?= $i ?>
                       <?= $kategoriDipilih ? '&kategori=' . urlencode($kategoriDipilih) : '' ?>
                       <?= $keyword ? '&q=' . urlencode($keyword) : '' ?>">
                                                <?= $i ?>
                                            </a>
                                        </li>
                                    <?php endfor; ?>

                                    <!-- DOTS -->
                                    <?php if ($end < $totalPages - 1): ?>
                                        <li class="page-item disabled">
                                            <span class="page-link">…</span>
                                        </li>
                                    <?php endif; ?>

                                    <!-- LAST -->
                                    <?php if ($currentPage < $totalPages): ?>
                                        <li class="page-item">
                                            <a class="page-link" href="?page=<?= $totalPages ?>">
                                                <?= $totalPages ?>
                                            </a>
                                        </li>
                                    <?php endif; ?>

                                </ul>
                            </nav>
                        <?php endif; ?>

                    </div>

                    <!-- trending wisata -->
                    <div class="d-flex justify-content-between align-items-center mt-5 mb-3">
                        <h4 class="mb-0">🔥 Trending Wisata</h4>
                        <!-- <a href="<?= base_url('wisata') ?>" class="text-primary">
                            Lihat Semua <i class="ri-arrow-right-line"></i>
                        </a> -->
                    </div>

                    <div class="swiper trending-swiper">
                        <div class="swiper-wrapper">

                            <?php foreach ($trendingWisata as $t): ?>
                                <div class="swiper-slide">
                                    <div class="card wisata-card">

                                        <img src="<?= base_url('assets/images/foto_wisata/' . $t['gambar']) ?>"
                                            alt="<?= esc($t['nama_wisata']) ?>">

                                        <div class="card-body">
                                            <h6><?= esc($t['nama_wisata']) ?></h6>

                                            <div class="wisata-meta">
                                                👥 <?= number_format($t['jumlah_pengunjung']) ?> pengunjung
                                            </div>

                                            <div class="wisata-meta text-warning">
                                                ⭐ <?= number_format($t['rating'], 1) ?>
                                            </div>

                                            <a href="<?= base_url('detail-wisata/' . $t['id_wisata']) ?>"
                                                class="btn btn-sm btn-outline-primary mt-2 w-100">
                                                Detail
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>

                        </div>
                    </div>

                    <!-- rekomendasi wisata -->
                    <div class="d-flex justify-content-between align-items-center mt-5 mb-3">
                        <h4 class="mb-0">⭐ Rekomendasi Wisata</h4>
                    </div>

                    <div class="swiper rekomendasi-swiper">
                        <div class="swiper-wrapper">

                            <?php foreach ($rekomendasiWisata as $t): ?>
                                <div class="swiper-slide">
                                    <div class="card wisata-card">

                                        <img src="<?= base_url('assets/images/foto_wisata/' . $t['gambar']) ?>"
                                            alt="<?= esc($t['nama_wisata']) ?>">

                                        <div class="card-body">
                                            <h6><?= esc($t['nama_wisata']) ?></h6>

                                            <div class="wisata-meta">
                                                📝 <?= number_format($t['jumlah_ulasan']) ?> ulasan
                                            </div>

                                            <div class="wisata-meta text-warning">
                                                ⭐ <?= number_format($t['rating'], 1) ?>
                                            </div>

                                            <a href="<?= base_url('detail-wisata/' . $t['id_wisata']) ?>"
                                                class="btn btn-sm btn-outline-primary mt-2 w-100">
                                                Detail
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>

                        </div>
                    </div>

                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <script>
                                document.write(new Date().getFullYear())
                            </script> Copyright ©
                        </div>
                        <div class="col-sm-6">
                            <div class="text-sm-end d-none d-sm-block">
                                SPK Wisata SAW All Rights Reserved.
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

        </div>

    </div>
    <!-- END layout-wrapper -->


    <!--start back-to-top-->
    <button onclick="topFunction()" class="btn btn-danger btn-icon" id="back-to-top">
        <i class="ri-arrow-up-line"></i>
    </button>
    <!--end back-to-top-->

    <!--preloader-->
    <div id="preloader">
        <div id="status">
            <div class="spinner-border text-primary avatar-sm" role="status">
                <span class="visually-hidden">Loading...</span>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- JAVASCRIPT -->
    <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/libs/simplebar/simplebar.min.js"></script>
    <script src="assets/libs/node-waves/waves.min.js"></script>
    <script src="assets/libs/feather-icons/feather.min.js"></script>
    <script src="assets/js/pages/plugins/lord-icon-2.1.0.js"></script>
    <script src="assets/js/plugins.js"></script>

    <!-- apexcharts -->
    <script src="assets/libs/apexcharts/apexcharts.min.js"></script>

    <!-- Dashboard init -->
    <script src="assets/js/pages/dashboard-ecommerce.init.js"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>

    <!-- glightbox js -->
    <script src="assets/libs/glightbox/js/glightbox.min.js"></script>

    <!-- search-result init js -->
    <script src="assets/js/pages/search-result.init.js"></script>
    <!-- Modal JS -->
    <script src="assets/js/pages/modal.init.js"></script>

    <!-- leflet -->
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

    <!-- <?php if (session()->getFlashdata('error')): ?>
        <script>
            var loginModal = new bootstrap.Modal(document.getElementById('loginModals'));
            loginModal.show();
        </script>
    <?php endif; ?> -->

    <?php if (session()->getFlashdata('error')): ?>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <i class="ri-error-warning-line me-1"></i>
            <?= session()->getFlashdata('error') ?>
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    <?php endif; ?>

    <?php if (session()->getFlashdata('success')): ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <i class="ri-checkbox-circle-line me-1"></i>
            <?= session()->getFlashdata('success') ?>
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    <?php endif; ?>

    <?php if (session()->getFlashdata('error')): ?>
        <script>
            document.addEventListener("DOMContentLoaded", function() {
                var loginModal = new bootstrap.Modal(
                    document.getElementById('loginModals')
                );
                loginModal.show();
            });
        </script>
    <?php endif; ?>


    <script>
        $(document).ready(function() {
            $('.bookmark-btn').on('click', function() {
                const btn = $(this);
                const idWisata = btn.data('id');

                $.ajax({
                    url: '<?= base_url('toggle-bookmark') ?>',
                    type: 'POST',
                    data: {
                        id_wisata: idWisata
                    },
                    dataType: 'json',
                    success: function(response) {
                        console.log(response);

                        if (response.status === 'added') {
                            btn.find('i').removeClass('ri-bookmark-line').addClass('ri-bookmark-fill');
                            btn.find('.bookmark-text').text('Disimpan');
                        } else if (response.status === 'removed') {
                            btn.find('i').removeClass('ri-bookmark-fill').addClass('ri-bookmark-line');
                            btn.find('.bookmark-text').text('Simpan');
                        } else if (response.status === 'error') {
                            alert(response.message);
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error('AJAX Error:', status, error);
                        console.log(xhr.responseText);
                        alert('Terjadi kesalahan, coba lagi.');
                    }
                });
            });
        });
    </script>

    <script>
        const togglePassword = document.getElementById('togglePassword');
        const passwordInput = document.getElementById('passwordInput');
        const toggleIcon = document.getElementById('toggleIcon');

        togglePassword.addEventListener('click', function() {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);

            toggleIcon.classList.toggle('ri-eye-line');
            toggleIcon.classList.toggle('ri-eye-off-line');
        });
    </script>
    <script>
        function getLocation() {
            if (!navigator.geolocation) {
                alert("Browser tidak mendukung lokasi");
                return;
            }

            navigator.geolocation.getCurrentPosition(
                function(position) {
                    const lat = position.coords.latitude;
                    const lng = position.coords.longitude;

                    const params = new URLSearchParams(window.location.search);

                    params.set('user_lat', lat);
                    params.set('user_lng', lng);
                    params.set('sort', 'distance');

                    window.location.href = "?" + params.toString();
                },
                function() {
                    alert("Gagal mengambil lokasi. Izinkan akses lokasi.");
                }
            );
        }
    </script>

    <script>
        document.addEventListener("DOMContentLoaded", function() {

            new Swiper('.trending-swiper', {
                slidesPerView: 'auto',
                spaceBetween: 20,
                grabCursor: true,
                freeMode: true
            });

            new Swiper('.rekomendasi-swiper', {
                slidesPerView: 'auto',
                spaceBetween: 20,
                grabCursor: true,
                freeMode: true
            });

        });
    </script>


</body>

</html>