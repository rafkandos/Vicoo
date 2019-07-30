<!DOCTYPE html>
<html lang="en">

<head>
  <title>Admin Page | VICO</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="icon" type="image/png" href="<?=base_url()?>assets/login/images/vico.png" />

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="<?=base_url()?>assets/dashboard/fonts/icomoon/style.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/dashboard/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/dashboard/css/magnific-popup.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/dashboard/css/jquery-ui.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/dashboard/css/owl.carousel.min.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/dashboard/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/dashboard/toastr/toastr.min.css">
  <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">

  <link rel="stylesheet" href="<?=base_url()?>assets/dashboard/css/aos.css">

  <link rel="stylesheet" href="<?=base_url()?>assets/dashboard/css/style.css">

  <style>
    .btn-orange{
      background-color: white;
      border: 2px solid orange;
      color: orange;
    }
    .btn-orange:hover{
      background-color: orange;
      border: 2px solid orange;
      color: white;
    }
    .btn-orange-1{
      background-color: orange;
      border: 2px solid orange;
      color: white;
    }
    .btn-orange-1:hover{
      background-color: white;
      border: 2px solid orange;
      color: orange;
    }
    .bg-orange{
      background-color: #fe860c;
    }
  </style>

</head>

<body>

  <div class="site-wrap">
    <nav class="site-navbar navbar-light py-2" style="background-color: #fff;">
      <div class="container">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a href="<?=base_url()?>index.php/admin">
                <img width="115px" height="40px" src="<?=base_url()?>assets/dashboard/images/vico.png">
              </a>
            </div>
          </div>
          <div class="main-nav d-none d-lg-block">
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li><a href="#" style="color: orange;">
                  <?php
                    foreach ($name as $n) {
                      echo'
                        <b>Login as '.$n->Username.'</b>
                      ';
                    }
                  ?>
                </a></li>
              </ul>
            </nav>
          </div>
          <div class="icons">
            <a href="<?php echo base_url()?>index.php/login/logout"><button type="button" class="btn btn-orange-1">Logout</button></a>
          </div>
        </div>
      </div>
    </nav>

    <div class="container" >
      <div class="header text-center text-dark">
        <?php
          $notifikasi = $this->session->flashdata('notif');
            if ($notifikasi != null) {
              echo '
                <div class="alert alert-dismissible fade show" role="alert">
                  '.$notifikasi.'
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
              ';
            }
        ?>
        <?php
          $notifikasi_sukses = $this->session->flashdata('notif_sukses');
            if ($notifikasi_sukses != null) {
              echo '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                  '.$notifikasi_sukses.'
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
              ';
            }
        ?>
        <h1 class="mb-3"><b>Today's Complaint</b></h1>
        
      </div>
      <div class="row">
          <div class="col-xl-6 col-sm-6 mb-6">
            <div class="card text-white bg-warning o-hidden h-100">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <div class="mr-5">Newest: </div>
                    <dt class="mr-5"><?php echo $moh; ?>    Complaints</dt>
                  </div>
                  <div class="col-md-6">
                    <span class="lnr lnr-bullhorn display-3 float-right"></span>
                  </div>
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url()?>index.php/admin/to_pending">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="caret"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-6 col-sm-6 mb-6">
            <div class="card text-white bg-info o-hidden h-100">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <div class="mr-5">On Progress: </div>
                    <dt class="mr-5"><?php echo $moh1; ?>    Complaints</dt>
                  </div>
                  <div class="col-md-6">
                    <span class="lnr lnr-hourglass display-3 float-right"></span>
                  </div>
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url()?>index.php/admin/to_op">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-6 col-sm-6 mb-6 mt-3">
            <div class="card text-white bg-success o-hidden h-100">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <div class="mr-5">Done: </div>
                    <dt class="mr-5"><?php echo $moh2; ?>    Complaints</dt>
                  </div>
                  <div class="col-md-6">
                    <span class="lnr lnr-checkmark-circle display-3 float-right"></span>
                  </div>
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url()?>index.php/admin/to_done">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-6 col-sm-6 mb-6 mt-3">
            <div class="card text-white bg-danger o-hidden h-100">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <div class="mr-5">Denied: </div>
                    <dt class="mr-5"><?php echo $moh3; ?>    Complaints</dt>
                  </div>
                  <div class="col-md-6">
                    <span class="lnr lnr-cross-circle display-3 float-right"></span>
                  </div>
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url()?>index.php/admin/to_denied">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
        </div>
      
        <div class="mb-6 mt-3 card text-white bg-dark o-hidden h-50">
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <div class="mr-5">History: </div>
                <dt class="mr-5"><?php echo $moh_all; ?>    Complaints</dt>
                </div>
              <div class="col-md-6">
                <span class="lnr lnr-hourglass display-3 float-right"></span>
              </div>
            </div>
          </div>
          <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url()?>index.php/admin/to_history">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
        </div>

      <br/>

    </div>
    <footer class="page-footer font-small blue">

  <!-- Copyright -->
  
  <!-- Copyright -->

</footer>
  </div>

  <script src="<?=base_url()?>assets/dashboard/js/jquery-3.3.1.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/jquery-ui.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/popper.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/bootstrap.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/owl.carousel.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/jquery.magnific-popup.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/aos.js"></script>
  <script src="<?=base_url()?>assets/dashboard/toastr/toastr.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/main.js"></script>

</body>

</html>