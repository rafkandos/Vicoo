<!DOCTYPE html>
<html lang="en">

<head>
  <title>List Complaint Page | VICO</title>
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
        <h1><b>Today's Complaint</b></h1>
      </div>
      <br/>
      <table class="table table-bordered text-dark">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Complaint</th>
            <th scope="col">Status</th>
          </tr>
        </thead>
        <tbody>
          <?php
            $date = date("Y-m-d");
            $no=1;
							foreach ($complaint as $c) {
              if ($c->Time == $date) {
                echo'
                  <tr>
                  <td>'.$no++.'</td>
                    <td>'.$c->Username.'</td>
							      <td>'.$c->Complaint.'</td>
										<td>'.$c->Value.'</td>
									</tr>
								';
              }								
            }
					?>
        </tbody>
      </table>

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