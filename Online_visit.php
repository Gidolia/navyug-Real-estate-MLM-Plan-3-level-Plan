<?php include "database_connect.php";?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Navyug Group Online Visit</title>
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
.content {
  max-width: 500px;
  margin: auto;
}
</style>
    </head>

    <body class="page">
         <?php include "include/header.php";?>
        <!-- Feature Start -->
       <!-- Contact Start -->
        
        <div class="contact mt-125">
            <section class="w3l-content-bg">  
            <div class="container ">
                <div class="section-header">
                    <p> <ol class="breadcrumb my-breadcrumb page">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Online Visit</li>
                </ol></p>
                
                    <h2 style="color:#ffff;"> Online Visit</h2>
                </div>
               
                <div class="row">
                   
                     <div class="col-md-6 content" >
                        <div class="contact-form" style="background-color:#ffffff;">
                            <div id="success"></div>
                <form method="post">
                                <div class="control-group">
                                    <input type="text" class="form-control" id="name" placeholder="Your Name" required="required" data-validation-required-message="Please enter your name" name="full_name" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="email" class="form-control" id="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email" name="email" />
                                    <p class="help-block text-danger"></p>
                                </div>
                               
                                <div class="control-group">
                                    <textarea class="form-control" id="message" placeholder="Message" required="required" data-validation-required-message="Please enter your message" name="messages"></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                                
                                <button class="btn" type="submit" id="sendMessageButton" name="visit_submit">Send Message
                                </button>
                            
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="https://wa.me/+919425770164?text=%20message%20add!" style="text-decoration: none;" target="_blank">
                            	 <img src="https://i.ibb.co/N9P0K9H/239px-Whats-App-svg.png" width="50" height="50"/>
                            </a>
                            
                            <a href="https://wa.me/+919425770164?text=Hi%20message%20add!" target="_blank">
                              Send Message
                            </a>
                            </div>
                                
                            </form>
<?php
if(isset($_POST[visit_submit]))
{
$ss="INSERT INTO `web_contacts` (`wc_id`, `d_id`, `full_name`, `mob_number`, `email_id`, `subject`, `messages`, `date`, `time`, `note`) VALUES (NULL, '', '$_POST[full_name]', '$_POST[mobile]', '$_POST[email]', '', '$_POST[messages]', '$date', '$time', 'Online Visit');";
if($con->query($ss)===TRUE)
{
  //echo "sucsses";
	echo "<script>alert('Message sent successfully');location.href='index.php';</script>";
}else{echo "fail";}
}
?>
                        </div>
                    </div>
                 </div>
                  </section >
            </div>
        </div>
        <!-- Contact End -->

<?php include "include/footer.php";?>

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
