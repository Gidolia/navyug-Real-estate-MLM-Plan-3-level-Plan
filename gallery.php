<?php include "database_connect.php";?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Navyug Group Gallery images</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Consulting Website Template Free Download" name="keywords">
        <meta content="Consulting Website Template Free Download" name="description">

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
div.gallery {
 
  width: 350px;
  height: 225px;
  display: flex;
   text-align: center;
   
}

div.gallery:hover {
  border: 2px solid #f8981d;
}

div.desc {
  padding: 15px;
  text-align: center;
}
.img {
  display: block;
  margin-left: 5px;
  margin-right: 5px;
  width: 40%;
  
}
.image_center {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    align-content: flex-end;
    justify-content: center;
}

</style>
    </head>

    <body class="page">
        <!-- Top Bar Start -->
        <?php include "include/header.php";?>

        <!-- Team Start -->
        
        <div class="team mt-125">
            <section class="w3l-content-bg">
            <div class="container">
                <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Gallery Images</li>
                </ol>
                <div class="section-header">
                   
                    <a href="gallery_video.php">
                    <h2 style="color:#ffff;"> Click on 
                    <button type="button" class="btn btn-primary"> <i class="fa fa-video "></i>
                       Gallery Videos
                      </button></h2>
                    </a>
                </div>
                
                <br>
                </div>
                </div>
                </section>
                <br>
<div class="section-header">
<div class="row image_center">

<?php 
     $hjhdc=1;
     $ty="SELECT * FROM `web_gallery` WHERE `note`='photo Published'";
     //echo $rr;
     $hhsdc=$con->query($ty);
     
     while($fdfd=$hhsdc->fetch_assoc()){ ?>
            <div class="gallery img">
              <a target="_blank" href="admin/ibo_panel/production/nios_image/<?php echo $fdfd['image'] ?>">
                <img src="admin/ibo_panel/production/nios_image/<?php echo $fdfd['image'] ?>" alt="Cinque Terre" width="300" height="250">
              </a>
             </div>
					 
	    <?php $hjhdc++;
     } ?> 
 </div>
 </div>
<br><br><br><br>
        <div class="section-header">
                <div class="row">
 <?php /*
     $hjhdc=1;
     $ty="SELECT * FROM `web_gallery` WHERE `note`='photo Published'";
     //echo $rr;
     $hhsdc=$con->query($ty);
     
     while($fdfd=$hhsdc->fetch_assoc()){ ?>  
     
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src ="admin/ibo_panel/production/nios_image/<?php echo $fdfd['image'] ?>" height="300px" width="300px" ></img>
                                
                            </div>
                         </div>
                    </div>
    <?php $hjhdc++;
     }*/ ?> 
                  
                </div>
               
            </div>
        </div>
        
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
