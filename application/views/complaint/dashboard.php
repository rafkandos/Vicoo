<!DOCTYPE html>
<html lang="en">

<head>
  <title>Dashboard Page | VICO</title>
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
  </style>

</head>

<body>

  <div class="site-wrap">
    <!-- <div class="site-navbar py-2">

      
    </div> -->
    <nav class="site-navbar navbar-light py-2" style="background-color: #fff;">
      <div class="container">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a href="<?=base_url()?>index.php/complaint">
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

    <div class="container">
      <div class="header text-center text-dark">
        <br/>
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
        <h1>Welcome To <b>ViCo.</b></h1>
      </div>
      <br/>
      <div class="row text-center">
      <div class="col-md-6">
        <div class="card h-100">
          <center>
            <img class="card-img-top" src="<?=base_url()?>assets/dashboard/images/8.png" style="width: 150px; height: 150px; margin-top: 20px;" alt="">
          </center>
          <div class="card-body">
            <h4 class="card-title">Complaint Now</h4>
            <p class="card-text"></p>
          </div>
          <div class="card-footer">
            <a href="#" data-toggle="modal" data-target="#add_complaint" class="btn btn-orange">Complaint!</a>
        </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="card h-100">
          <center>
            <img class="card-img-top" src="<?=base_url()?>assets/dashboard/images/6.png" style="width: 150px; height: 150px; margin-top: 20px;" alt="">
          </center>
          <div class="card-body">
            <h4 class="card-title">Todays Complaint</h4>
            <p class="card-text"></p>
          </div>
          <div class="card-footer">
            <a class="btn btn-orange" href="<?=base_url()?>index.php/complaint/t_comp">See More</a>
          </div>
        </div>
      </div>
      

    </div>
    </div>
  </div>

  <div class="modal fade" id="add_complaint" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                	<h4>Add Complaint</h4>
                    <button type="button" class="close pull-right" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?=base_url('index.php/complaint/go_complaint')?>" method="post">
                    <div class="modal-body">
                        <div class="tab-pane" id="settings" role="tabpanel">
                            <div class="card-block">
                                    <div class="form-horizontal form-material form-group">
                                        <input type="hidden" name="Id_Complaint">
                                        <input type="hidden" name="UserId">
                                        <label>Complaint</label>
                                        <input type="text" class="form-control form-control-line form form-orange" name="complaint"><br>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" name="add" class="btn btn-orange" value="Send">
                    </div>
                </form>
            </div>
        </div>
    </div>

  <script src="<?=base_url()?>assets/dashboard/js/jquery-3.3.1.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/jquery-ui.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/popper.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/bootstrap.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/owl.carousel.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/jquery.magnific-popup.min.js"></script>
  <script src="<?=base_url()?>assets/dashboard/js/aos.js"></script>

  <script src="<?=base_url()?>assets/dashboard/js/main.js"></script>

</body>

</html>