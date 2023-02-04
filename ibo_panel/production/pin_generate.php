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

    <title>Navyug Group || Pin Payment Detail</title>

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
    
     <!-- PNotify -->
    <link href="../vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <link href="../vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
    <link href="../vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

<?php

if(isset($_GET[s]))
{
    $noti="new PNotify({
                                  title: 'Success',
                                  text: 'Pin Requested',
                                  type: 'success',
                                  styling: 'bootstrap3'
                              });";
}
elseif(isset($_GET[f]))
{
    $noti="new PNotify({
                                  title: 'Failed',
                                  text: 'Please Try Again',
                                  type: 'error',
                                  styling: 'bootstrap3'
                              });";
}
elseif(isset($_GET[cs]))
{
    $noti="new PNotify({
                                  title: 'Canceled',
                                  text: 'Pin Requested Canceled',
                                  type: 'success',
                                  styling: 'bootstrap3'
                              });";
}


?>

  <body class="nav-md" onload="<?php echo $noti;?>">
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
                <h3>Enter Pin Payment Detail</h3>
              </div>
            </div>

            <div class="clearfix"></div>
            
                <div class="row tile_count">
                    <div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <a href="ludo_coin_ledger.php"><div class="tile-stats">
                          <div class="icon"><i class="fa fa-coin"></i></div>
                          <div class="count"><i class="fa fa-circle"></i> <?php echo $d_detail[pin_wallet_50000]+0;?></div>
                          <h3>50,000 Pin Wallet</h3>
                        </div></a>
                    </div>
                    <div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <a href="redeem_coin.php"><div class="tile-stats">
                          <div class="icon"><i class="fa fa-coin"></i></div>
                          <div class="count"><i class="fa fa-circle"></i> <?php echo $d_detail[pin_wallet_100000]+0;?></div>
                          <h3>1,00,000 Pin Wallet</h3>
                        </div></a>
                    </div>
                    <div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-6">
                        <a href="win_game_status.php"><div class="tile-stats">
                          <div class="icon"><i class="fa fa-coin"></i></div>
                          <div class="count"><i class="fa fa-circle"></i> <?php echo $d_detail[pin_wallet_250000]+0;?></div>
                          <h3>2,50,000 Pin Wallet</h3>
                        </div></a>
                    </div>
                </div>
            
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Enter Pin Payment Details</h2>
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
                     <form class="form-horizontal form-label-left" enctype="multipart/form-data" method="post">
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Pin Type<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                            <select name="pin_type" class="form-control "  required> 
                                <option></option>
                                 <option value="50000">50,000</option>
                                 <option value="100000">1,00,000</option>
                                 <option value="250000">2,50,000</option>
                            </select>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Pin Qty<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                            <input type="text" name="pin_qty" class="form-control "  required>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Select Payment Mode <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                            <select name="p_mode" class="form-control "  required>
                                 <option></option>
                                 <option value="NEFT">NEFT</option>
                                 <option value="RTGS">RTGS</option>
                                 <option value="IMPS">IMPS</option>
                            </select>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">TXN No.<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                            <input type="text" name="txn_id" class="form-control"  required>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Receipt<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                            <input type="file" name="receipt" class="form-control" required>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Amount<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                            <input type="number" name="amount" class="form-control"  required>
                        </div>
                      </div>
                      
                      
                      <div class="ln_solid"></div>
                      <div class="item form-group">
                        <div class="col-md-6 col-sm-6 offset-md-3">
                          <button type="submit" name="submit_dete" class="btn btn-success">Submit</button>
                        </div>
                      </div>

                    </form>      
                  <?php
                  if(isset($_POST[submit_dete]))
                  {
                      if($d_detail[a_status]=='n'){
                          $first="Y";
                      }else{
                          $first="N";
                      }
                      
                      ///////////////for creating unique ID
        function unq_id_generate($chars) 
        {
          $data = '123456789';
          return substr(str_shuffle($data), 0, $chars);
        }
        for($x=0; $x<100; $x++)
        {
            //echo $x;
            $unq_id=unq_id_generate(15);
            $sqsqqs="SELECT * FROM `pin_request` WHERE `receipt_img`='$unq_id'";
            $qur=$con->query($sqsqqs);
            if(mysqli_num_rows($qur)==0)
            {
                break;
            }
        }
                      
        if (file_exists("receipt_img/" .$unq_id.".jpg"))
        {
        unlink("receipt_img/" .$unq_id.".jpg");
          echo $unq_id.".jpg" . " already exists. ";
        }
        
        if(move_uploaded_file($_FILES["receipt"]["tmp_name"], "receipt_img/".$unq_id.".jpg"))
		{
		
            echo "Stored in: " . "receipt_img/".$unq_id;
                      $fui="INSERT INTO `pin_request` (`pr_id`, `d_id`, `date`, `time`, `pin_wallet`, `c_date`, `c_time`, `amount`, `pin_qty`, `payment_type`, `txn_no`, `receipt_img`, `status`) VALUES (NULL, '$_SESSION[d_id]', '$date', '$time', '$_POST[pin_type]', '', '', '$_POST[amount]', '$_POST[pin_qty]', '$_POST[p_mode]', '$_POST[txn_id]', '$unq_id', 'P');";
                      
                      if($con->query($fui)===TRUE)
                      {
                          echo "<script>alert('Success! Pin Requested Successfully'); location.href='pin_generate.php?s=s';</script>";
                      }else{
                          echo "<script>alert('Failed! Please Try Again'); location.href='pin_generate.php?s=f';</script>";
                      }
                  }
                }
                  
                  
                  ?>
                    
                    
                  </div>
                </div>
              </div>
            </div>
            
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Payment Request History</h2>
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
                        
        <div class="card-box table-responsive">
        <table class="table table-striped table-bordered" id="datatable">
            <thead><tr><th width="3%">Req. no.</th><th>Pin Qty</th><th>Amount</th><th>Payment Mode</th><th>TXN No.</th><th>Status</th><th>View Image</th>
            <th>Cancel</th></tr></thead>
            <?php
            $a=0;
            $scv="SELECT * FROM `pin_request` WHERE `d_id`='$_SESSION[d_id]' ORDER BY `pin_request`.`pr_id` DESC;";
            $dcdf=$con->query($scv);
            while($gf=mysqli_fetch_assoc($dcdf))
            {
                $a++;
            ?>
            <tr>
                <td><?php echo $gf[pr_id];?></td>
                <td><?php echo $gf[pin_qty];?></td>
                <td><?php echo $gf[amount];?></td>
                <td><?php echo $gf[payment_type];?></td>
                <td><?php echo $gf[txn_no];?></td>
                <td><?php if($gf[status]=='P'){?>
                <button class="btn btn-warning">Pending</button>
                <?php }
                elseif($gf[status]=='C'){?>
                <button class="btn btn-danger">Cancelled</button>
                <?php }elseif($gf[status]=='R'){?>
                <button class="btn btn-danger">Rejected</button>
                <?php }elseif($gf[status]=='S'){?>
                <button class="btn btn-success">Accepted</button>
                <?php }?></td>
                <td><a href="receipt_img/<?php echo $gf[receipt_img];?>.jpg" target="_blank">View Receipt</a></td>
                <td><?php if($gf[status]=='P'){?>
                <button class="btn btn-danger">Cancel Request</button>
                <?php }?></td>
            </tr>
            <?php
            }?>
            
        </table>
        
           </div>         
                    
                    
                    
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
    
    
     <!-- PNotify -->
    <script src="../vendors/pnotify/dist/pnotify.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="../vendors/pnotify/dist/pnotify.nonblock.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
	
  </body>
</html>
