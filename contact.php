<?php include "database_connect.php";?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Navyug Group Contact us</title>
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
    </head>

    <body class="page">

       <?php include "include/header.php";?>
        <!-- Contact Start -->
        
        <div class="contact mt-125">
            
            <div class="container">
                <div class="section-header">
                    <p> <ol class="breadcrumb my-breadcrumb page">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Contact us</li>
                </ol></p>
           
                    <h2>Get In Touch For Any Query</h2>
                </div>
                <div class="row">
                   <div class="col-md-6">
                        <div class="contact-info">
                            <div class="contact-icon">
                                <i class="fa fa-map-marker-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Head Office</h3>
                                <p>A-1009, Titanium Heights, Opp. Vodafone House,Makarba, Ahmedabad-380015. </p>
                            </div>&nbsp;
                            <div class="contact-icon">
                                <i class="fa fa-map-marker-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Branch office-for-North-west India Region Navyug group</h3>
                                <p>Purn kusum vila -behra pandit saunter ,mall road,morar, gwalior- mp- 474006</p>
                            </div>
                        </div>
                        
                        <div class="contact-info">
                            <div class="contact-icon">
                                <i class="fa fa-phone-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Call for Help</h3>
                                <p>0751-4922836 </p>
                            </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="contact-icon">
                                <i class="fa fa-envelope"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Email for Information</h3>
                                <p>Info@navyuggroup.in</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="contact-form">
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
                                    <input type="text" class="form-control" id="subject" placeholder="Subject" required="required" data-validation-required-message="Please enter a subject" name="subject" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <textarea class="form-control" id="message" placeholder="Message" required="required" data-validation-required-message="Please enter your message" name="messages"></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div>
                                <button class="btn" type="submit" id="sendMessageButton" name="c_submit">Send Message
                                </button>
                            </div>
                           </form>
<?php
if(isset($_POST[c_submit]))
{
$ss="INSERT INTO `web_contacts` (`wc_id`, `d_id`, `full_name`, `mob_number`, `email_id`, `subject`, `messages`, `date`, `time`, `note`) VALUES (NULL, '', '$_POST[full_name]', '$_POST[mobile]', '$_POST[email]', '$_POST[subject]', '$_POST[messages]', '$date', '$time', 'Contact us');";
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
                 <div class="col-md-12">
                                <i class="fa fa-map-marker-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Branch office-for-North-west India Region Navyug group</h3>
                 <iframe class="col-md-12" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3579.1943108169594!2d78.21942174917828!3d26.222875183348282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3976c15c318030c7%3A0xb9533978b46ef7ff!2sNew%20Ashok%20Colony%2C%20Morar%2C%20Gwalior%2C%20Madhya%20Pradesh%20474006!5e0!3m2!1sen!2sin!4v1624158943169!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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
