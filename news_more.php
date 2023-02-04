<?php include "database_connect.php";?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Navyug Group News more</title>
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
.central {
  max-width: 800px;
  margin: auto;
}
</style>
    </head>

    <body class="page">
         <?php include "include/header.php";?>
        <div class="about mt-125">
            <div class="container">
                <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">News More</li>
                </ol>
                <div class="container">

 <?php 
     $rs=1;
    $d_id=$_GET[news];
     $rr="SELECT * FROM `web_latest_news`WHERE `news_header`='$d_id'";
     //echo $rr;
     $r=$con->query($rr);
     
     while($s=$r->fetch_assoc()){ ?>
				<h4 ><?php echo $s['news_header'] ?></h4>
				<div class="blog-meta">
                            <i class="fa fa-calendar-alt"></i>
                                <p><?php echo $s['date'] ?></p>
                            </div>
                            
				
						<div class="row ">
						
						<div class="col-lg-6 central">
							<h6><?php echo $s['message'] ?></h6>
								<h6><?php echo $s['message2'] ?></h6>
								<h6><?php echo $s['message3'] ?></h6>
							</div>
							<div class="col-lg-6 pr-lg-0 ">
								<img src ="admin/ibo_panel/production/nios_image/<?php echo $s['image'] ?>" height="300px" width="500px" alt="item-1"></img>
								
							</div>
						</div>
					</div>
	<?php $rs++;
     } ?> 
            </div>
        </div>
        <!-- About End -->

<?php include "include/footer.php";?>

        <!-- Feature Start -->
     

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
