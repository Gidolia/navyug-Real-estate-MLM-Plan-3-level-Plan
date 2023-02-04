<?php include "config.php";?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>Navyug Group || Dashboard</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="extra.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include "include/sidebar.php";?>
        <!-- top navigation -->
        <?php include "include/header.php";?>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
              <div class="no-overflow"><h2 style="text-align: left;background-color:red;"><marquee><a href="#" target="_blank"><span class="" style="color: rgb(255, 255, 255);"><strong>"Smart city has come, has brought a new change in life" </strong></span></a></marquee></h2>
            </div>
          
          <!-- /top tiles --> 
            
            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Welcome To Navyug Group</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
        <table class="table  table-bordered">
            <tr><th>ID</th><td>NG<?php echo $_SESSION[d_id];?></td></tr>
            <tr><th>Name</th><td><?php echo $d_detail[name];?></td></tr>
            <tr><th>Mobile No.</th><td><?php echo $d_detail[mobile];?></td></tr>
            <tr><th>KYC Status</th>
                <td>
                    <?php
                    $ky_count=0;
                    $kyb_q="SELECT * FROM `kyc_bank` WHERE `d_id`='$_SESSION[d_id]' AND `status`='c'";
                    $kyb_que=$con->query($kyb_q);
                    if($kyb_que->num_rows==1)
                    {
                        $ky_count++;
                    }
                   
                     
                    $kya_q="SELECT * FROM `kyc_adhar` WHERE `d_id`='$_SESSION[d_id]' AND `status`='c'";
                    $kya_que=$con->query($kya_q);
                    if($kya_que->num_rows==1)
                    {
                        $ky_count++;
                    }
                    
                     
                    $kyp_q="SELECT * FROM `kyc_pan` WHERE `d_id`='$_SESSION[d_id]' AND `status`='c'";
                    $kyp_que=$con->query($kyp_q);
                    if($kyp_que->num_rows==1)
                    {
                        $ky_count++;
                    }
                   
                    
                    ?>
                    
                    
                    <?php if($ky_count==3)
                    {?>
                        <span class="badge badge-success">Completed</span>
                    <?php }
                    else
                    {?>
                        <a href="kyc.php"><span class="badge badge-danger">Not Completed</span> Click Here To Complete KYC</a>
                    <?php }
                    ?>
                </td>
            </tr>
            <tr><th>ID Status</th>
                <td>
                    <?php if($d_detail[a_status]=='y')
                    {?>
                    <span class="badge badge-success">Activated</span>
                    <?php }
                    else
                    {?>
                    <span class="badge badge-danger">Not Active</span>
                    <?php }
                    ?>
                </td>
            </tr>
        </table>
                  </div>
                </div>
              </div>
            
              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Your Plot Details</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
        <table class="table  table-bordered">
            <tr><th>Project Name</th><td><?php echo $d_detail[project_name];?></td></tr>
            <tr><th>Plot No.</th><td><?php echo $d_detail[plot_no];?></td></tr>
            <tr><th>Total Amount</th><td><?php echo $d_detail[plot_total_amount];?></td></tr>
            <tr><th>Paid Amount</th>
                <td>
                    <?php
                    $ed="SELECT * FROM `payment_request` WHERE `d_id`='$_SESSION[d_id]'";
                    $rf=$con->query($ed);
                    while($t=$rf->fetch_assoc()){
                        $tot_p=$tot_p+$t[amount];
                        
                    }
                    echo $tot_p;
                    
                    ?>
                </td>
            </tr>
            <tr><th>Left Balance</th>
                <td>
                   <?php echo $d_detail[plot_total_amount]-$tot_p;?>
                </td>
            </tr>
        </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!-- Column 1 of Row 1 -->
        <a href="level_income.php">
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <!-- Total Users Tile -->
            <div class="dash-tile dash-tile-logfe clearfix animation-pullDown">
                <div class="dash-tile-header">
                    Total Income
                </div>
                <div class="dash-tile-icon">
                    <i class="fa fa-inr"></i>
                </div>
                <div class="dash-tile-text">
                    <?php
              $tot_income=0;
              $edd="SELECT * FROM `level_income` WHERE `d_id`='$_SESSION[d_id]';";
              $edc=$con->query($edd);
              while($ed=$edc->fetch_assoc())
              {
                  $tot_income=$tot_income+$ed[amount];
              }
              echo $tot_income;?>
                    </div>
            </div>
        </div></a>
            <!-- END Total Users Tile -->
            <!-- Total Profit Tile -->
        <!-- Column 1 of Row 1 -->
        <a href="property_saving_ledger_view.php">
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <!-- Total Users Tile -->
            <div class="dash-tile dash-tile-balloon clearfix animation-pullDown">
                <div class="dash-tile-header">
                    Property Saving
                </div>
                <div class="dash-tile-icon">
                    <i class="fa fa-inr"></i>
                </div>
                <div class="dash-tile-text">
                    <?php echo $d_detail[property_saving];?>
                    </div>
            </div>
        </div>
        </a>
            <!-- END Total Users Tile -->
            <!-- Total Profit Tile -->
        <!-- Column 1 of Row 1 -->
        <a href="tds_ledger_view.php">
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <!-- Total Users Tile -->
            <div class="dash-tile dash-tile-dark clearfix animation-pullDown">
                <div class="dash-tile-header">
                    TDS
                </div>
                <div class="dash-tile-icon">
                    <i class="fa fa-inr"></i>
                </div>
                <div class="dash-tile-text">
                    <?php echo $d_detail[tds];?>
                    </div>
            </div>
        </div></a>
            <!-- END Total Users Tile -->
            <!-- Total Profit Tile -->
        <!-- Column 1 of Row 1 -->
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <!-- Total Users Tile -->
            <div class="dash-tile dash-tile-doll clearfix animation-pullDown">
                <div class="dash-tile-header">
                    Withdrawal Wallet Balance
                </div>
                <div class="dash-tile-icon">
                    <i class="fa fa-inr"></i>
                </div>
                <div class="dash-tile-text">
                    <?php echo $d_detail[withdrawal_wallet];?>
                    </div>
            </div>
        </div>
            <!-- END Total Users Tile -->
            <!-- Total Profit Tile -->
        
            <!-- END Total Tickets Tile -->
        </div>
        <div class="clearfix">
        </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            <?php include "include/footer.php";?>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="../vendors/Flot/jquery.flot.js"></script>
    <script src="../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
	
  </body>
</html>
