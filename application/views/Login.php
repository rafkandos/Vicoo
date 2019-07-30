<!DOCTYPE html>
<html lang="en">

<head>
	<title>Login Page | VICO</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="<?=base_url()?>assets/login/images/vico.png" />
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/login/css/main.css">
	<!--===============================================================================================-->
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-85 p-b-20">
				<form action="<?php echo base_url('index.php/Login/do_login')?>" method="post" id="formLogin">
					
					<center><img width="115px" height="40px"  src="<?=base_url()?>assets/dashboard/images/vico.png"></center>
					<span class="login100-form-title mt-3">
						Welcome
					</span>
					<?php
						$notifikasi = $this->session->flashdata('notif_gagal');
						if ($notifikasi != null) {
							echo '
								<center><div class="alert alert-danger" style="width: 70%;">
									'.$notifikasi.'
								</div></center>
							';
						}
					?>

					<div class="wrap-input100 validate-input m-t-50 m-b-35" data-validate="Enter username">
						<input class="input100" type="text" name="username">
						<span class="focus-input100" data-placeholder="Username"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
						<input class="input100" type="password" name="password">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<!-- <button type="submit" name="submit">Login</button> -->
						<input type="submit" class="login100-form-btn" name="submit" value="Login">
						<!-- <input type="submit" name="submit" class="login100-form-btn" value="login"> -->
						<!-- <button class="login100-form-btn">
							Login
						</button> -->
					</div>
				</form>
				<!-- <center><p style="margin: 20px;">Belum punya akun? Yok <a style="color: #4286f4" href="">DAFTAR</a></p></center> -->
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/login/vendor/bootstrap/js/popper.js"></script>
	<script src="<?=base_url()?>assets/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="<?=base_url()?>assets/login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/login/js/main.js"></script>

</body>

</html>