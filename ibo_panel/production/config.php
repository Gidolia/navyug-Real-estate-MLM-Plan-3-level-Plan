<?php
error_reporting(E_ERROR | E_WARNING | E_PARSE);
include "../../database_connect.php";
session_start();
                //echo $_SESSION[d_id];
		     // echo $_SESSION[d_password];
    $que="SELECT * FROM `distributor` WHERE `d_id`='$_SESSION[d_id]' AND `password`='$_SESSION[d_password]'";
    $res=$con->query($que);
		  if ($res->num_rows != 1)
		  {
		     // echo $_SESSION[d_id];
		     // echo $_SESSION[d_password];
			   echo "<script>location.href='Login_Form/login.php';</script>";
		  }
		  else
			  //include("function.php");
			  $d_detail=mysqli_fetch_assoc($res);
			  
			  if($d_detail[block_status]=="Y"){
			     
			      echo "<script>location.href='Login_Form/login.php';</script>";
			  
			  }else
?>