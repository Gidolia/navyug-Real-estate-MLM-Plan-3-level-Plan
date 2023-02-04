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

    <title>Navyug Group || Gallery</title>

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
                    <h3>Your Add Photos & Video </h3>
                </div>
                    <div class="card-body">
                        <div class="center">
                        <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                          <a href="web_add_image.php">
                          <input type="submit" class="btn btn-success" value="Add Images" ></a>
                            <a href="web_add_video.php">
                          <input type="submit" class="btn btn-success" value="Add Videos"></a>
                        </div>
                      </div>
                      
                     </form>

                    </div>
                  	</div>
					
			<div class="card-box table-responsive">
				        <table id="" class="table table-striped table-bordered" >
                    <thead>
                        <tr><th>No.</th><th>Types</th><th>Name</th><th>Date</th><th>Gallery</th><th>Delete</th><th>Image & Video </th></tr>
                      </thead>

                      <tbody>
        <?php 
     $d=1;
     $rr="SELECT * FROM `web_gallery` WHERE `ss_note`='Gallery P&V'";
     
     $r=$con->query($rr);
    
     while($s=$r->fetch_assoc()){ ?>
                      
                       <tr>
                           <td>
                            <?php echo $d ;?>
                          </td>
                          <td>
                              <?php echo $s["gallery_type"];?>
                          </td>
                          <td>
                            <?php echo $s["name"];?>
                          </td>
                          <td>
                              <?php echo $s["date"];?>
                          </td>
                           
                         <td>
                            <?php if($s[s_notes]=="p"){ ?> 
                           <a href="nios_image/<?php echo $s['image'];?>">View Image</a>
                                 
                           <?php }
                           elseif($s[s_notes]=="v"){?>
                            
                              <a href="nios_image/<?php echo $s['video'];?>">View Video</a> 
                          <?php }?>
                          </td>
                          <td>
                             <form method="post">
                        <input type="hidden" name="wg_id" value="<?php echo $s['wg_id']; ?>">
                          <input type="submit" value="Delete" name="Delete_submit" class="btn btn-danger">
                          </form>
                        </td>
                        <td>
                       <form method="post">
                           <input type="hidden" name="wg_id" value="<?php echo $s['wg_id']; ?>">
                           <?php if($s[note]=="video Not Published"){ ?> 
                           <input type="submit" value="Not Published " name="Pub_video_submit" class="btn btn-danger">
                                 
                           <?php }
                           elseif($s[note]=="video Published"){?>
                            
                               <button class="btn btn-success">Video Published</button> 
                          <?php }?>
                          
                        <?php if($s[note]=="photo Not Published"){ ?> 
                           <input type="submit" value="Not Published " name="Pub_photo_submit" class="btn btn-danger">
                                 
                           <?php }
                           elseif($s[note]=="photo Published"){?>
                            
                               <button class="btn btn-success"> Photo Published</button> 
                          <?php }?>
                   
                         </form>
                        </td>
                       
                          
                    </tr>
                    <?php $d++;
                                  } ?>
                    </tbody>
                    </table>
                   
                 
                <?php
                     if(isset($_POST[Delete_submit]))
                     {
                       $gdv="DELETE FROM `web_gallery` WHERE `web_gallery`.`wg_id` = '$_POST[wg_id]'";
                       
                       if ($con->multi_query($gdv) === TRUE) {
                          echo "<script>alert('Delete successfully');
                          location.href='web_gallery.php'</script>";
                        }
                      
                     }
                     ?>
<?php
         if(isset($_POST[Pub_video_submit]))
         {
          $gdv="UPDATE `web_gallery` SET `note`='video Published' WHERE `web_gallery`.`wg_id` = '$_POST[wg_id]'";
           if ($con->multi_query($gdv) === TRUE) {
              echo "<script>alert('Published successfully');
              location.href='web_gallery.php'</script>";
            }
          
         }
         ?>
<?php
                     if(isset($_POST[Pub_photo_submit]))
                     {
                      $gdv="UPDATE `web_gallery` SET `note`='photo Published' WHERE `web_gallery`.`wg_id` = '$_POST[wg_id]'";
                       if ($con->multi_query($gdv) === TRUE) {
                          echo "<script>alert('Published successfully');
                          location.href='web_gallery.php'</script>";
                        }
                      
                     }
                     ?>
           
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
