<?php include "../../database_connect.php";?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Navyug Group || Login</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method="post">
              <h1>Registeration Form</h1>
              <div>
                <input type="text" name="s_id" class="form-control" placeholder="Sponser ID" required="" />
              </div>
              <div>
                <input type="text" name="name" class="form-control" placeholder="Name" required="" />
              </div>
              <div>
                <input type="text" name="mobile" class="form-control" placeholder="Mobile No." required="" />
              </div>
             
              <div>
                <input type="password" name="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                  <input type="submit" class="btn btn-default submit" name="submit_log" value="login">
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Navyug Group</h1>
                  <p>©2021 All Rights Reserved. Navyug Group</p>
                </div>
              </div>
            </form>
          </section>
        </div>
<?php
	function isNumber($c) {
        return preg_match('/[0-9]/', $c);
    }

if(isset($_POST[submit_log]))
{
        $ins="INSERT INTO `distributor` (`d_id`, `s_id`, `name`, `mobile`, `a_mobile`, `dob`, `password`, `date`, `time`, `a_status`, `a_date`, `a_time`, `city`, `state`, `addreass`, `pincode`, `withdrawal_wallet`, `pan_card_no`, `kyc_status`, `block_status`, `pin_wallet_50000`) VALUES (NULL, '$_POST[s_id]', '$_POST[name]', '$_POST[mobile]', '', '', '$_POST[password]', '', '', '', '', '', '', '', '', '', '', '', '', '', '0');";
        if ($con->query($ins)===TRUE)
        {
          echo "<script>alert('Successfully! Registered');
        	location.href='login.php';</script>";
        }
        else{
          	echo "<script>alert('Invalid user name or Password');
        	location.href='login.php';</script>";
        }
    
}
?>
      </div>
    </div>
  </body>
</html>
