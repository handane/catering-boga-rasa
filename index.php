<?php
error_reporting(0);
session_start();
require('./app/database/db.php');

// Atur zona waktu ke Waktu Indonesia Barat
date_default_timezone_set('Asia/Makassar');

// Daftar nama hari dalam Bahasa Indonesia
$nama_hari = array(
    'Sunday' => 'Minggu',
    'Monday' => 'Senin',
    'Tuesday' => 'Selasa',
    'Wednesday' => 'Rabu',
    'Thursday' => 'Kamis',
    'Friday' => 'Jumat',
    'Saturday' => 'Sabtu'
);

// Mendapatkan nama hari ini
$hari_ini = date('l'); // 'l' mengembalikan nama hari dalam teks

// Mengganti nama hari dalam Bahasa Indonesia
$hari_ini_id = isset($nama_hari[$hari_ini]) ? $nama_hari[$hari_ini] : $hari_ini;

?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="catering boga rasa by">

	<!-- title -->
	<?php include('./include/title.php') ?>

	<!-- favicon -->
	
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">
	
	<style>
		.card {
			border: none;
		}
	</style>
</head>

<body>

	<!--PreLoader-->
	<!-- <div class="loader">
		<div class="loader-inner">
			<div class="circle"></div>
		</div>
	</div> -->
	<!--PreLoader Ends-->

	<!-- header -->
	<?php include('./include/nav.php') ?>
	
	<!-- end header -->

	<!-- hero area -->
	<div class="hero-area hero-bg" >
		<div class="container">
			<div class="row">
				<div class="col-lg-9 text-center"  style="margin:0 auto;">
					<div class="hero-text">
						<div class="hero-text-tablecell">
							<h1>Catering Boga Rasa</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end hero area -->
	<!-- end features list section -->

	<!-- product section -->
	<div class="product-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">
						<h3><span class="orange-text">Highlight</span> Hari Ini</h3>
						<p>hari <?php echo $hari_ini_id ?>
						</p>
					</div>
				</div>
			</div>

			<div class="row">
			<?php 
				$status_user = $_SESSION['user']['status'];
				$produk = mysqli_query($conn, "SELECT * FROM produk LEFT JOIN promosi ON produk.id_produk = promosi.id_produk WHERE produk.menu_hari = '$hari_ini_id' LIMIT 6");
				while ($p = mysqli_fetch_array($produk)) {
			?>
			<a href="produk-detail.php?id_produk=<?= $p['id_produk']?>">
				<div class="col-lg-4 col-md-6 text-center card">
					<div class="single-product-item" style="height: 100%;">
						<div class="product-image">
							<img src="app/admin/foto/<?= $p['gambar'] ?>" alt="">
						</div>
						<h3><?php echo $p['nama_produk'] ?></h3>
						<p class="product-price"><span>Rp <?php echo number_format($p['harga']) ?></span></p>
						
						<?php if($status_user == 'Pelanggan Lama'){
								if($p['promo_lama'] == 0){
						?>
								<p class="product-price"><span style="color: #fff;">x</span></p>
						<?php } else { ?>
								<p class="product-price"><span style="color: tomato;">Diskon <?php echo $p["promo_lama"] ?>%</span></p>
						<?php }}?>

						<?php if($status_user == 'Pelanggan Baru'){
								if($p['promo_baru'] == 0){
						?>
								<p class="product-price"><span style="color: #fff;">x</span></p>
						<?php } else { ?>
								<p class="product-price"><span style="color: tomato;">Diskon <?php echo $p["promo_baru"] ?>%</span></p>
						<?php }} else { ?>
							<!-- <p class="product-price"><span style="color: #fff;">x</span></p> -->
						<?php } ?>

						<a href="produk-detail.php?id_produk=<?= $p['id_produk']?>" class="cart-btn" style="position: relative; top:10px"><i class="fas fa-shopping-cart"></i> Detail</a>
					</div>
				</div>
				</a>
			<?php } ?>
				
			</div>
		</div>
	</div>
	<!-- footer -->
	<?php include('./include/footer.php') ?>
	
	<!-- end copyright -->

	<!-- jquery -->
	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="assets/js/main.js"></script>

</body>

</html>