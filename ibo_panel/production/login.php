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
              <h1>Login Form</h1>
              <div>
                <input type="text" name="id" class="form-control" placeholder="User ID" required="" />
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
                  <a href="register.php" class="to_register"> Create Account </a>
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
          echo "<script>location.href='index.php';</script>";
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
  </body>
</html>
