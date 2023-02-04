<?php include "database_connect.php";?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Navyug Group Property Booking</title>
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
        <!-- Contact Start -->
        
        <div class="contact mt-125">
            
            <div class="container">
                <div class="section-header">
                    <p> <ol class="breadcrumb my-breadcrumb page">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Property  Booking</li>
                </ol></p>
           
                    <h2>Get In Touch For BookingProperty Booking</h2>
                </div>
                <br>
                <div class="row">
                  <div class="col-md-8 central">
                        <div class="contact-form">
                            <div id="success"></div>
                           <form method="post">
                               <?php 
                				$d_id=$_GET[booking];
                				
                				?>
                               
                                <div class="control-group">
                                    <input type="text" class="form-control"  placeholder="Property Name" value="<?php echo $d_id; ?>"required="required" data-validation-required-message="Please enter your property name" name="property_name" readonly/>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <select  class="form-control col-md-12" name="property_type" required>
                                <option value="">select Property Type</option>
                                <option value="Inside Dholera">Inside Dholera</option>
                                <option value="Outside Dholera">Outside Dholera</option></select>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="text" class="form-control" id="name" placeholder="Your  Full Name" required="required" data-validation-required-message="Please enter your Full name" name="full_name" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="email" class="form-control" id="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email" name="email" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="number" class="form-control" id="subject" placeholder="Mobile" required="required" data-validation-required-message="Please enter a mobile number" name="mobile" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <textarea class="form-control" id="message" placeholder="Message" required="required" data-validation-required-message="Please enter your message" name="messages"></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div>
                                <button class="btn" type="submit" id="sendMessageButton" name="property_submit">Booking Now
                                </button>
                            </div>
                           </form>
<?php
if(isset($_POST[property_submit]))
{

$ss="INSERT INTO `web_booking` (`wb_id`, `d_id`, `date`, `time`, `name`, `mobile`, `email`, `property_type`, `property_name`, `message`) VALUES (NULL, '', '$date', '$time', '$_POST[full_name]', '$_POST[mobile]', '$_POST[email]', '$_POST[property_type]', '$_POST[property_name]', '$_POST[messages]');";

if($con->query($ss)===TRUE)
{
  //echo "sucsses";
	echo "<script>alert('Property Booking successfully Please Wait');location.href='index.php';</script>";
}else{echo "fail";}
}
?>
                        </div>
                    </div>
                 </div>
             </div>
        </div>
        <!-- Contact End -->
       
        <!-- Footer Start -->
       <a href="https://api.whatsapp.com/send?l=en&phone=0000000&text=Hi, Please send me project information and call me on this number for more information."><img src="image/Wh_Logo.gif" class="img-fluid enquiry-imgpopup" id="whatsapp-fixed" alt="enquiry"></a>
    
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>        
<?php include "include/footer.php";?>
        <!-- Footer End -->
       
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
