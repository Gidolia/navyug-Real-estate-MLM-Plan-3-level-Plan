<?php include "database_connect.php";?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Navyug Group Gallery videos</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Consulting Website Template Free Download" name="keywords">
        <meta content="Consulting Website Template Free Download" name="description">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Lato&family=Oswald:wght@200;300;400&display=swap" rel="stylesheet">
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    <style>
.video {
  width: 100%;
  height: auto;
}
</style>
    </head>

    <body class="page">
        <!-- Top Bar Start -->
        <?php include "include/header.php";?>

        <!-- Team Start -->
        <section class="w3l-content-bg">
        <div class="team mt-125">
            <div class="container">
                <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item" aria-current="page">Gallery Videos</li>
                
                </ol>
                <div class="section-header">
                    <a  href="gallery.php">
                    <h2 style="color:#ffff;">Click on
                    <button type="button" class="btn btn-primary"> <i class="fa fa-image "></i>
                       Gallery Images
                      </button></h2>
                    </a>
                </div>
                
             </div>
        </div>
    <!-- Testimonial Start -->
        </section>
    <div class="testimonial">
            <div class="container">
              <div class="owl-carousel testimonials-carousel">
  <?php 
     $hjhdc=1;
     $ty="SELECT * FROM `web_gallery` WHERE `note`='video Published'";
     //echo $rr;
     $hhsdc=$con->query($ty);
     
     while($fdfd=$hhsdc->fetch_assoc()){ ?>                     
                    <div class="testimonial-item col-lg-10 col-md-12"> <br>
                         <br>
                        <a href="admin/ibo_panel/production/nios_image/<?php echo $fdfd['video'] ?>">
                        <video width="320" height="240" controls >
                          <source src="admin/ibo_panel/production/nios_image/<?php echo $fdfd['video'] ?>" type="video/mp4">
                         </a>
                        </video>
                        
                        <br>
                    </div>
      <?php $hjhdc++;
     } ?>               
                </div>
            </div>
        </div>
        <!-- Testimonial End -->    
        <!-- Team End -->
        
        <!-- Footer Start -->
    <?php include "include/footer.php";?>
        <!-- Footer End -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        
        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
