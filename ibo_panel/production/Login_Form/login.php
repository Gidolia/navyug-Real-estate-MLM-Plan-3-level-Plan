<?php include "../../../database_connect.php";?>
<!DOCTYPE html>
<html>
    
<head>

	<title>Navyug Group || Login</title>
	<link href="css/style-login.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
<!--Coded with love by Mutiullah Samim-->
<body>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="..//images/NG-03.jpg" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class=" justify-content-center form_container">
					<form method="post">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="id" class="form-control input_user" value="" placeholder="Username">
    							
    						</div>
    						<div class="input-group mb-2">
    							<div class="input-group-append">
    								<span class="input-group-text"><i class="fas fa-key"></i></span>
    							</div>
    							<input type="password" name="password" class="form-control input_pass" value="" placeholder="Password">
    						</div>
    						
    					<div class="d-flex justify-content-center mt-3 login_container">
    				 	
    				 	<input type="submit" class="btn login_btn" name="submit_login" value="login">
    				   </div>
					</form>
				</div>
		
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
						Don't have an account? <a href="reg_form.php" class="ml-2">Sign Up</a>
					</div>
					<div class="d-flex justify-content-center links">
						<a href="forgot_password.php">Forgot your password?</a>
					</div>
<?php
	function isNumber($c) {
        return preg_match('/[0-9]/', $c);
    }

if(isset($_POST[submit_login]))
{
    
    $string=$_POST[id];
       
    $chars = '';
    $d_id = '';
    for ($index=0;$index<strlen($string);$index++) {
        if(isNumber($string[$index]))
        {
            $d_id .= $string[$index];
        }
        else {
            $chars .= $string[$index];}
    }
    //$reg="INSERT INTO `distributor` (`d_id`, `s_id`, `name`, `mobile`, `a_mobile`, `dob`, `password`, `date`, `time`, `a_status`, `a_date`, `a_time`, `city`, `state`, `addreass`, `pincode`, `withdrawal_wallet`, `pan_card_no`, `kyc_status`) VALUES ('1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');";
    session_start();
    if($chars=="NG" || $chars=="ng")
    {
        $sel="SELECT * FROM `distributor` WHERE `d_id`='$d_id' AND `password`='$_POST[password]'";
        echo $sel;
        $res=$con->query($sel);
        if ($res->num_rows > 0)
        {
          $_SESSION[d_id]=intval($d_id);
          $_SESSION[d_password]=$_POST[password];
          
          //echo $_SESSION[d_id];
    	  //echo $_SESSION[d_password];
          echo "<script>location.href='../index.php';</script>";
        }
        else{
          	echo "<script>alert('Invalid user name or Password');
        	location.href='login.php';</script>";
        }
    }
    else{
          	echo "<script>alert('Invalid User ID');
        	location.href='login.php';</script>";
        }
}
?>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
