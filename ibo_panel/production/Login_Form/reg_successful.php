<?php include "../../../database_connect.php";?>
<!DOCTYPE html>
<html>
    
<head>

	<title>Navyug Group || Registration successful</title>
	<link href="css/style-login.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<style>
.div {
  background-color: lightgrey;
  width: 300px;
  border: 15px solid green;
  padding: 50px;
  margin: 20px;
}
</style>
</head>
<!--Coded with love by Mutiullah Samim-->
<body>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
					    <a href="login.php">
						<img src="..//images/NG-03.jpg" class="brand_logo" alt="Logo">
						</a>
					</div>
				</div>
				<?php 
				$d_id=($_GET[d_id]/9896)-7723;
				$ctsc="SELECT * FROM `distributor` WHERE `d_id`='$d_id'";
                         $ddf=$con->query($ctsc);
                         $dsxc=$ddf->fetch_assoc();
				?>
			       	
					
					
					
				<div class="justify-content-center form_container">
				    <div class="input-group mb-3">
							
							<input type="text" name="id" class="form-control input_user" value="" placeholder="&nbsp;&nbsp;&nbsp;Registration successfully"readonly>
    							
    						</div>
    						<div class="input-group mb-2">
    						
    							<input type="text" name="password" class="form-control input_pass" value="" placeholder="&nbsp;&nbsp;&nbsp;Username:  <?php echo NG.$dsxc[d_id];?>"readonly>
    						</div>
    						<br/>
					
	
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
						Your log in account.  <a href="login.php" class="ml-2">Login</a>
					</div><br>
					<div class="d-flex justify-content-center links">
						<a href="forgot_password.php">Forgot your password?</a>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>
