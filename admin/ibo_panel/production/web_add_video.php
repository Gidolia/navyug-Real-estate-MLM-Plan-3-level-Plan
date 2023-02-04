
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

    <title>Navyug Group || Videos Gallery</title>

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
          
            <div class="clearfix"></div>

            <div class="row">
            <div class="card card_border py-2 mb-4 col-md-12">
                <div class="card-body">
				<div class="cards__heading" style="text-align:center;" >
                    <h3>Your Add Videos</h3>
                </div>
                    <div class="card-body">
                        <div class="center">

                    <h3>Note:- only accept mp4 video file,please upload mp4 video file </h3>
                    <form class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Add Video</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <input type="file" class="form-control1 form-control" name="add_images" required>
                          
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Gallery  Types</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                           <select class="form-control1 form-control" name="select" readonly>
                            <option value="Videos">Videos</option>
                           
                            
                          </select>
                          
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3"> Video Name</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <input type="text" class="form-control" name="name">
                          
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                          
                          <input type="submit" class="btn btn-success" value="Submit" name="video_submit">
                          
                          <a class="btn btn-primary" href="web_gallery.php">Previous</a>
                          
                        </div>
                      </div>
                      
                     </form>
<?php 

//////////////////// start news_name//////////////////////
function nios_image_name($bin) 
{
  $data = 'abcdefgh123456789';
  return substr(str_shuffle($data), 0, $bin);
}
for($x=0; $x<100; $x++)
{
    //echo $x;
    $tbin=nios_image_name(8);
    $ismd="SELECT * FROM `web_gallery` WHERE `photo_video`='$tbin'";
    $qr=$con->query($ismd);
    if(mysqli_num_rows($qr)==0)
    {
        break;
    }
}
/////////////////////// end news_name///////////////////////////

 if(isset($_POST[video_submit]))
            {
            //echo "123";
            	if (file_exists("nios_image/" .".jpg"))
        {
        unlink("nios_image/" .".jpg");
          echo $id_detail[id_no].".jpg" . " already exists. ";
        }
        if(move_uploaded_file($_FILES["add_images"]["tmp_name"], "nios_image/".$tbin.".mp4"))
		{
            echo "Stored in: " . "nios_image/".$fileName;
           
           
           $sbug="INSERT INTO `web_gallery` (`wg_id`, `image`, `date`, `time`, `gallery_type`, `video`, `name`, `note`, `s_notes`, `text_mess`, `ss_note`) VALUES (NULL, '', '$date', '$time', '$_POST[select]', '$tbin.mp4', '$_POST[name]', 'video Not Published', 'v', '', 'Gallery P&V');";
           
            if($con->query($sbug)==TRUE)
            {
                echo "<script>alert('add Videos Gallery  Sucessfully');
		location.href='web_gallery.php';</script>";
            }
          else{ echo "<script>alert('failed please try again');
	location.href='web_gallery.php';</script>";}
            }
            } ?>
                    </div>
                  	</div>
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
