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

    <title>Navyug Group || Activate ID</title>

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
    <script>
        function showResult(str) {
          if (str.length==0) {
            document.getElementById("fet_bal").innerHTML="";
            
            return;
          }
          var xmlhttp=new XMLHttpRequest();
          xmlhttp.onreadystatechange=function() {
            if (this.readyState==4 && this.status==200) {
              document.getElementById("fet_bal").innerHTML=this.responseText;
              
            }
          }
          xmlhttp.open("GET","fetch_pin_wallet_balance.php?q="+str,true);
          xmlhttp.send();
        }
    </script>
    
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
            <div class="page-title">
              <div class="title_left">
                <h3>Activate ID</h3>
              </div>
            </div>
            <?php include "level_button.php";?>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                     
                    <form method="post" class="form-horizontal form-label-left" action="process_activate_id.php">
                    <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Select Pin</label>
                      <div class="col-md-9 col-sm-9 col-xs-9">
                          <select class="form-control" name="pin_type" onchange="showResult(this.value)" required>
                              <option></option>
                        <option value="50000">50000 Wallet</option>
                        <option value="100000">100000 Wallet</option>
                        <option value="250000">250000 Wallet</option>
                         </select>
                          </span>
                        </div>
                      </div>
                      <div class="form-group  row">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Pin Balance</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <span id="fet_bal"></span> Wallet
                          
                        </div>
                      </div>
                      <div class="form-group  row">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Activating ID</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <input type="text" class="form-control" name="activate_id">
                        </div>
                      </div>
                      <div class="form-group  row">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Plot No.</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <input type="text" class="form-control" name="plot_no">
                        </div>
                      </div>
                      <div class="form-group  row">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Project Name</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <input type="text" class="form-control" name="project_name">
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-9 col-sm-9  offset-md-3">
                          <button type="submit" class="btn btn-success" name="activate_id">Submit</button>
                        </div>
                      </div>
                    
                </form>
            
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Activate ID History</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      &nbsp;&nbsp;&nbsp;Note : It take 24H to clear
                              <?php
        $g="SELECT * FROM `activate_id_pin` WHERE `d_id`='$_SESSION[d_id]'";
        $dc=$con->query($g);
        ?>
        <table class="table table-striped table-bordered">
            <thead><tr><th>Sr. No.</th><th>ID</th><th>Date / Time</th><th>Pin Type</th><th>Status</th><th>Clear Date/Time</th></tr></thead>
            <tbody>
            <?php
            $a=0;
            while($d=$dc->fetch_assoc())
            { $a++; ?>
          
            <tr>
                <td><?php echo $a;?></td>
                <td><?php echo "NG".$d[a_d_id];?></td>
                <td><?php echo $d[date]." / ".$d[time];?></td>
                <td><?php echo $d[pin_type];?></td>
                <td><?php  if($d[status]=="P"){ ?> 
                        <button type="button" class="btn btn-warning">Pending</button>
                    <?php }
                        elseif($d[status]=="R"){  echo "<button type='button' class='btn btn-danger'>Rejected</button>";
                        echo "<br>".$d[note];
                          }
                          elseif($d[status]=="C"){  echo "<button type='button' class='btn btn-success'>Accepted</button>";
                          }
                          ?></td>
                
                <td><?php echo $d[c_date]." / ".$d[c_time];?></td>
            
            </tr>
        <?php } ?>  </tbody> 
        </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
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
