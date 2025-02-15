<?php
session_start();
include("../database/db.php");
if (!isset($_SESSION["admin"])) {
  echo "<script>location='../index.php'</script>";
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <?php include('./include/meta.php') ?>
  
  <style>
    #ftz16 {
      font-size: 16px;
    }

    body {
      background-color: #f1f1f1;
    }
  </style>
</head>

<body class="sb-nav-fixed">
  <?php include('./include/nav.php') ?>
  
  <div id="layoutSidenav">
    <?php include('./include/sidenav.php') ?>
    
    <div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-3">
          <ol class="breadcrumb mb-4 mt-2">
            <li class="breadcrumb-item active">Promosi</li>
          </ol>
          <div class="card">
            <div class="card-body">
              <?php
              if (isset($_GET['id_promosi'])) {
                $id_promosi = $_GET['id_promosi'];
                $edit = mysqli_query($conn, "SELECT * FROM promosi LEFT JOIN produk ON promosi.id_produk = produk.id_produk WHERE id_promosi_produk = '$id_promosi'");
                  $row = mysqli_fetch_array($edit);
              ?>

                    <form class="row g-3" method="POST" enctype="multipart/form-data">
                      <div class="col-md-6">
                        <label for="" class="form-label-md"><b>Nama</b></label>
                        <input type="text" class="form-control" name="nama_produk" value="<?php echo $row['nama_produk'] ?>" readonly/>
                      </div>
                      <div class="col-md-6">
                        <label for="" class="form-label-md"><b>Promo Pelanggan Lama</b></label>
                        <input type="text" class="form-control" name="promo_lama" value="<?php echo $row['promo_lama'] ?>" />
                      </div>
                      <div class="col-md-6">
                        <label for="" class="form-label-md"><b>Promo Pelanggan Baru</b></label>
                        <input type="text" class="form-control" name="promo_baru" value="<?php echo $row['promo_baru'] ?>" />
                      </div>
                      <div class="col-md-12">
                        <input type="submit" class="btn btn-success" name="submit" value="Save" />
                      </div>
                    </form>
              <?php } ?>

              <?php
              if (isset($_POST['submit'])) {
                $promo_lama = $_POST['promo_lama'];
                $promo_baru = $_POST['promo_baru'];

                $update = mysqli_query($conn, "UPDATE promosi SET
                           promo_lama = '$promo_lama',
                           promo_baru = '$promo_baru'
                           WHERE id_promosi_produk = '$id_promosi'");
                if ($update) {
              ?>
              <?php
                  echo
                  '<script>
                  window.location="promosi.php";
                  alert("data berhasil di update");
                  </script>';
                } else {
                  echo 'gagal ' . mysqli_error($conn);
                }
              }
              ?>

            </div>
          </div>
      </main>
      <footer class="mt-5">
      </footer>
    </div>
  </div>
  <script src="../js/scripts.js"></script>
  <script src="../datatables/datatable.js"></script>
  <script src="../js/datatables-simple-demo.js"></script>
  <script src="../bootstrap/js/bootstrap.min.js"></script>
  <script src="../bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

</html>