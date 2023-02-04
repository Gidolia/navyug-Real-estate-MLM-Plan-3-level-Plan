<!DOCTYPE html>
<html>
    
<head>

	<title>Navyug Group || Registration </title>
	<link href="css/style-login.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
<!--Coded with love by Mutiullah Samim-->
<script> 
    function validateForm() {
    var mobile_no = document.forms["sigupForm"]["mobile_ck"].value;
	var email_id = document.forms["sigupForm"]["email_ck"].value;
	var sponser_id = document.forms["sigupForm"]["Sponser_ck"].value;
	
	if(email_id=="This Email id is Already Register")
	{
	    document.getElementById("text_email").innerHTML = " This Email id is Already Register ";
    return false;
	}

	if(mobile_no=="This Mobile Number is Already Register")
	{
	    document.getElementById("text_mob").innerHTML = " This Mobile Number is Already Register ";
    return false;
	}
	if(mobile_no=="Please Check Your Mobile Number")
	{
	    document.getElementById("text_mob").innerHTML = " Please Check Your Mobile Number ";
    return false;
	}
	if(sponser_id=="This Mobile Number is Already Register")
	{
	    document.getElementById("text_sponser").innerHTML = " This Mobile Number is Already Register ";
    return false;
	}
	if(sponser_id=="Please Check Your Mobile Number")
	{
	    document.getElementById("text_sponser").innerHTML = " Please Check Your Mobile Number ";
    return false;
	}

}
		
function showHint_email(str) {
 // document.getElementById("text_emailt").innerHTML = "bggc";
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("txtHint_email").value = this.responseText;
        if(this.responseText != "Correct")
    		{
    			document.getElementById("text_email").innerHTML = this.responseText;
    		}
		else{ document.getElementById("text_email").innerHTML = "";
		}
        
      }
    };
    xmlhttp.open("GET", "get_email_check.php?e=" + str, true);
    xmlhttp.send();
  
}

function showHint_mob(str) {
  
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("txtHint_mob").value = this.responseText;
        if(this.responseText != "Correct")
				{
					document.getElementById("text_mob").innerHTML = this.responseText;
				}
		else{ document.getElementById("text_mob").innerHTML = "";
		}
        
      }
    };
    xmlhttp.open("GET", "get_mob_check.php?q=" + str, true);
    xmlhttp.send();
  
}
function showHint_sponser(str) {
  
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("txtHint_sponser").value = this.responseText;
        if(this.responseText != "Correct")
				{
					document.getElementById("text_sponser").innerHTML = this.responseText;
				}
		else{ document.getElementById("text_sponser").innerHTML = "";
		}
        
      }
    };
    xmlhttp.open("GET", "get_Sponser_id_check.php?s=" + str, true);
    xmlhttp.send();
  
}
    </script>
<body><br/><br/><br/>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="From_styel">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
					     <a href="login.php">
						<img src="..//images/NG-03.jpg" class="brand_logo" alt="Logo">
						</a>
					</div>
				</div>
				<div class="justify-content-center form_container">
					<form action="process_reg_form.php" name="sigupForm" method="POST" onsubmit="return validateForm()" class="signin-form">
						<div class="form-input">
						   <div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fa fa-donate"></i></span>
							</div>
							<input type="text" name="s_id" onKeyUp="showHint_sponser(this.value)" class="form-control input_user" value="" placeholder="Sponser Id" required>
						    </div>
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fa fa-donate"></i></span>
							</div>
							<input type="text" name="Sponser_ck" class="form-control input_user" id="txtHint_sponser" placeholder="Sponser Name" readonly />
							
						</div>
						
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="full_name" class="form-control input_user" value="" placeholder="Full Name"required>
						</div>
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-birthday-cake"></i></span>
							</div>
							<input type="text" name="dob" class="form-control input_user" value="" placeholder="Date of Birth"required>
						</div>
						 <span id="text_mob" style="color: green"></span>
                            <input type="hidden" name="mobile_ck" value="Please Check Your Mobile Number" id="txtHint_mob" readonly />
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-mobile-alt"></i></span>
							</div>
							<input type="number" name="mobile" onKeyUp="showHint_mob(this.value)" class="form-control input_user" value="" placeholder="Mobile Number"required>
						</div>
						<span id="text_email" style="color: green"></span>
                        <input type="hidden" name="email_ck" value="Please Check Your Email Id" id="txtHint_email" readonly />
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-envelope"></i></span>
							</div>
						<input type="email" name="email" onKeyUp="showHint_email(this.value)" class="form-control input_user" value="" placeholder="Email Id" required>
						</div>
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="password" class="form-control input_user" value="" placeholder="Password" required>
						</div>
						
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="c_password" class="form-control input_pass" value="" placeholder="Confirm Password" required>
						</div>
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="customControlInline" required>
								<label class="custom-control-label" for="customControlInline">I Agree Terms And Conditions</label>
							</div>
						</div>
							<div class="d-flex justify-content-center mt-3 login_container">
				 	
				 	<input type="submit" class="btn login_btn" name="reg_submit" value="REGISTER">
				   </div>
					</form>
				</div>
		
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
						Have an account ? <a href="login.php" class="ml-2">Login</a>
					</div>
					<div class="d-flex justify-content-center links">
						<a href="forgot_password.php">Forgot your password?</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br/><br/><br/><br/>
</body>
</html>
