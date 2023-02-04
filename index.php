<?php include "database_connect.php";?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Navyug Group</title>
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

.center_text {
  margin: auto;
  width: 60%;
  padding: 10px;
}
</style>
    </head>

    <body>
<?php include "include/header.php";?>

<!---Get touch--->
<section class="enquiry-modal d-flex justify-content-center">
		<div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-scrollable h-100 d-flex flex-column justify-content-center " role="document">
				<div class="modal-content">
				  <div class="modal-header">
				      <h1>Get In Touch For Any Query</h1>
				    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				    
					<h4 class="modal-title text-center" id="memberModalLabel"></h4>
					
				  </div>
				  <div class="modal-body">
					<h4 class="text-center mb-0"><b>Please Any Query Details To Register With Us</b></h4><br>

					        <form method="post" class="inquiry-form" name="inquiry" id="inquiry" >
					      <input id="name" class="form-control" type="text" value="Name" name="full_name" aria-describedby="emailHelp" placeholder="Enter Your Name" onblur="if(this.value=='') this.value='Name'" onfocus="if(this.value =='Name' ) this.value=''"/><br/>
                            
							<input id="mail" type="text" class="form-control" name="email" value="Email" placeholder="Enter Email " onblur="if(this.value=='') this.value='Email'"
							onfocus="if(this.value =='Email' ) this.value=''"  /><br/>

							<input id="subj" type="text" name="mobile" value="Phone" placeholder="Enter Your Contact Number " onblur="if(this.value=='') this.value='Phone'"
							onfocus="if(this.value =='Phone' ) this.value=''" class="form-control" /><br/>
							 <textarea class="form-control" name="messages" id="message" placeholder="Message" required="required" data-validation-required-message="Please enter your message"></textarea> <br/>
							
							<input type="submit" class="btn btn-primary" name="c_submit" onclick="validateForm();">

							<script language="javascript">

														var objfrmStand = document.getElementById("inquiry");

														function validateForm() {
														var objfrmStand = document.getElementById("inquiry");
														var Bol_true = true;
														if (objfrmStand.name.value == "Name") {
														objfrmStand.name.focus();
														alert("Please enter valid Full name.");
														Bol_true = false;
														}
														else if (objfrmStand.mail.value == "Email") {
														objfrmStand.mail.focus();
														alert("Please enter valid Email Id.");
														Bol_true = false;
														}
														else if (objfrmStand.subj.value == "Phone") {
														objfrmStand.subj.focus();
														alert("Please enter valid Mobile no.");
														Bol_true = false;
														}
														else if (objfrmStand.message.value == "Message") {
														objfrmStand.message.focus();
														alert("Please enter your message.");
														Bol_true = false;
														}
														if (Bol_true == true) {
														objfrmStand.action = "";
														objfrmStand.method = "post";
														objfrmStand.submit();
														}
														return Bol_true;
														}
                                           </script>
					</form>
<?php
if(isset($_POST[c_submit]))
{
$ss="INSERT INTO `web_contacts` (`wc_id`, `d_id`, `full_name`, `mob_number`, `email_id`, `subject`, `messages`, `date`, `time`, `note`) VALUES (NULL, '', '$_POST[full_name]', '$_POST[mobile]', '$_POST[email]', '$_POST[subject]', '$_POST[messages]', '$date', '$time', 'Get In Touch');";
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
		</div>
	</section>
<!---/Get touch--->
        <!-- Carousel Start -->
        <div class="carousel">
            <div class="container-fluid">
                <div class="owl-carousel">
                    <div class="carousel-item">
                        <div class="about-img">
                            <img src="image/h7Administrative-Business-Centre-for-Dholera-ABCD-3 (1).webp" alt="Image">
                        </div>
                        
                    </div>
                    <div class="carousel-item">
                        <div class="about-img">
                            <img src="image/h6DJI_0189.webp" alt="Image">
                        </div>
                        
                    </div>
                    <div class="carousel-item">
                        <div class="about-img">
                            <img src="image/h8Broadwalk.webp" alt="Image">
                        </div>
                        
                    </div>
                    <div class="carousel-item">
                        <div class="about-img">
                            <img src="image/h1STP_REINF-FOR-MBR-SLAB.webp" alt="Image">
                        </div>
                        
                    </div>
                    <div class="carousel-item">
                        <div class="about-img">
                            <img src="image/h5images.webp" alt="Image">
                        </div>
                        
                    </div>
                    <div class="carousel-item">
                        <div class="about-img">
                            <img src="image/h2STP_MBR-2.webp" alt="Image">
                        </div>
                        
                    </div>
                    <div class="carousel-item">
                        <div class="about-img">
                            <img src="image/h3IMG_20210429_155510.webp" alt="Image">
                        </div>
                        
                    </div>
                    <div class="carousel-item">
                        <div class="about-img">
                            <img src="image/h4STP_GRAVITY-THICKNER.webp" alt="Image">
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- Video Modal Start-->
        <div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>        
                        <!-- 16:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="" id="video"  allowscriptaccess="always" allow="autoplay"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <!-- Video Modal End -->
        
        
        <!-- Fact Start -->
        <div class="fact">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-6">
                        <div class="fact-item">
                            <img src="img/icon-4.png" alt="Icon">
                            <h2>Qualified Team</h2>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="fact-item">
                            <img src="img/icon-1.png" alt="Icon">
                            <h2>Individual Approach</h2>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="fact-item">
                            <img src="img/icon-8.png" alt="Icon">
                            <h2>100% Success</h2>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="fact-item">
                            <img src="img/icon-6.png" alt="Icon">
                            <h2>100% Satisfaction</h2>
                        </div>
                    </div>
                </div>
                <div class="row counters">
                             <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/NG_logo.jpg" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Trademark</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/Legal.webp" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Legal</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/icon (2).png" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Government Aroved</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/Transparent.webp" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Transparent</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/Architect.webp" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto"> Architect</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/Corporate-Banking.webp" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Corporate Banking</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/Statutory-Auditors.webp" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Statutory Auditors</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/High-Return.webp" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">High Return</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/Structural-Consultant.webp" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Structural Consultant</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/icon (9).png" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Secure</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/Notary Advocate.webp" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Notary & Advocate</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/icon (11).png" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Vastu Consultant</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 title-main text-center mx-auto">
                                <img src="image/Landscap-Coordinature.webp" width="95" height="95">
                                <div class="counters-text">
                                   <p class="title-main text-center mx-auto">Landscape Coordinator</p>
                                </div>
                            </div>
                             <div class="col-9 title-main text-center mx-auto">
                                 <br>
                                <h4 class="mt-5">Our Vision</h4>
                                <b style="color:#007bff;">To create spaces that enhance the quality of life </b>
                                <div class="counters-text">
                                   <h4 class="mt-5">our mission</h4>
                                   <b style="color:#007bff;">To fulfill growing aspirations of our customers</b>
                                </div>
                            </div>
                            
                        </div>
            </div> <br><br>
        </div>
        <!-- Fact Start -->
   <!-- Service Start -->
        <section class="w3l-content-bg">
        <div class="service">
            <div class="container">
                <div class="section-header" >
                    <p style="color:#ffff;">Smart Infrastructure</p>
                    <h2 style="color:#ffff;">Best Plug and Play at Each Plot</h2>
                    <br>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="service-item"style="background-color:#ffffff;">
                            <img src="image/water-cycle (1).png" alt="Icon">
                            <h3>100% Recycle and reuse of waste water</h3>
                           </br></br>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="service-item" style="background-color:#ffffff;">
                            <img src="image/recycle-bin (1).png" alt="Icon">
                            <h3>100% waste collection, Maxium Recycling and Reuse</h3>
                           </br>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="service-item" style="background-color:#ffffff;">
                            <img src="image/trash (1).png" alt="Icon">
                            <h3>100% Domestic Waste Collection, 100% Industrial effuent Collection</h3>
                            
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="service-item" style="background-color:#ffffff;">
                            <img src="image/heavy-rain (1).png" alt="Icon" >
                            <h3>100% rain water collection, Open Storm canal with recreational spaces</h3>
                        
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="service-item" style="background-color:#ffffff;">
                            <img src="image/smart-city (1).png" alt="Icon">
                            <h3>ICT Enabled Infrastructure, City Wifi</h3>
                           
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="service-item" style="background-color:#ffffff;">
                            <img src="image/electric-tower (2).png" alt="Icon">
                            <h3>24x7 Electricity</h3>
                            <br><br>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="service-item" style="background-color:#ffffff;">
                            <img src="image/motorway (1).png" alt="Icon">
                            <h3>Roads, Cycle tracks, Footpaths, Trees & Plants</h3>
                           
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="service-item" style="background-color:#ffffff;">
                            <img src="image/rain (1).png" alt="Icon">
                            <h3>24x7 Water Smart meters SCADA</h3>
                           <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
        <!-- Service End -->


        <!-- Feature Start -->
        <div class="feature">
            <div class="container">
                <div class="row align-items-end">
                   
                    <div class="col-md-12 center">
                        
                        <div class="row counters ">
                            <div class="col-6 ">
                                
                                <div class="counters-text center_text">
                                    <i class="fa fa-user"></i>
                                    <h2 data-toggle="counter-up">100</h2>
                                    <p> &nbsp;&nbsp;Our Staffs</p>
                                </div>
                            </div>
                            <div class="col-6 ">
                               <div class="counters-text center_text">
                                    <i class="fa fa-users"></i>
                                    <h2 data-toggle="counter-up">200</h2>
                                    <p>&nbsp;&nbsp;Our Clients</p>
                                </div>
                            </div>
                            <div class="col-6">
                                 <div class="counters-text center_text">
                                    <i class="fa fa-check"></i>
                                    <h2 data-toggle="counter-up">300</h2>
                                    <p>&nbsp;&nbsp;Completed Projects</p>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="counters-text center_text">
                                    <i class="fa fa-running"></i>
                                    <h2 data-toggle="counter-up">400</h2>
                                    <p>&nbsp;&nbsp;Running Projects</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Feature End -->
        
    <!-- team_Prof Start -->
        <div class="team_Prof">
            <div class="container">
                <div class="section-header">
                   <h2>Our Professional team</h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="team_Prof-item">
                            <div class="team_Prof-img">
                                <img src="image/team (2).jpeg" alt="team_Prof Image">
                            </div>
                            <div class="team_Prof-text">
                                <h2>Mukul jain</h2>
                                
                                <div class="team_Prof-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team_Prof-item">
                            <div class="team_Prof-img">
                                <img src="image/team (1).jpeg" alt="team_Prof Image">
                            </div>
                            <div class="team_Prof-text">
                                <h2>Bhaskar Jain</h2>
                                
                                <div class="team_Prof-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team_Prof-item">
                            <div class="team_Prof-img">
                                <img src="image/team (3).jpeg" alt="team_Prof Image">
                            </div>
                            <div class="team_Prof-text">
                                <h2>Rakesh Kushwah</h2>
                                
                                <div class="team_Prof-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team_Prof-item">
                            <div class="team_Prof-img">
                                <img src="image/team (4).jpeg" alt="team_Prof Image">
                            </div>
                            <div class="team_Prof-text">
                                <h2>Mr. Pankaj Hardeniya</h2>
                                
                                <div class="team_Prof-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <br><br>
        <!-- team_Prof End -->
        <!-- Testimonial Start -->
        <section class="w3l-content-bg">
        <div class="testimonial">
            <div class="container">
                <div class="section-header">
                    
                    <h2 style="color:#ffffff;">100% Positive Customer Reviews</h2>
                     <br>
                </div>
                <div class="owl-carousel testimonials-carousel">
  <?php 
     $ghx=1;
     $tmkj="SELECT * FROM `web_gallery` WHERE `note`='Reviews Video Published'";
     //echo $rr;
     $dc=$con->query($tmkj);
     
     while($gfd=$dc->fetch_assoc()){ ?> 
                    
                    <div class="testimonial-item col-lg-12 col-md-12">
                       <a href="admin/ibo_panel/production/nios_image/<?php echo $gfd['video'] ?>">
                        <video width="320" height="220" controls >
                          <source src="admin/ibo_panel/production/nios_image/<?php echo $gfd['video'] ?>" type="video/mp4">
                         </a>
                        </video>
                    </div>
<?php $ghx++;
     } ?>                     
                </div>
            </div>
        </div>
        </section>
        <!-- Testimonial End -->


        
        <!-- Blog Start -->
        <div class="blog">
            <div class="container">
                <div class="section-header">
                    <p>News Blog</p>
                    <h2>Latest News</h2>
                </div>
                <div class="owl-carousel blog-carousel">
    <?php 
     $rs=1;
     $rr="SELECT * FROM `web_latest_news`WHERE `s_note`='s'";
     //echo $rr;
     $r=$con->query($rr);
     
     while($s=$r->fetch_assoc()){ ?>
                    <div class="blog-item">
                        <div class="blog-img">
                            <img src ="admin/ibo_panel/production/nios_image/<?php echo $s['image'] ?>" height="300px" width="500px" alt="Blog"></img>
                            
                        </div>
                        <div class="blog-content">
                            <h2 class="blog-title"><?php echo $s['news_header'] ?></h2>
                            <div class="blog-meta">
                                
                                <i class="fa fa-calendar-alt"></i>
                                <p><?php echo $s['date'] ?></p>
                            </div>
                            <div class="blog-text">
                                <p>
                                   <?php echo $s['message'] ?>
                                </p>
                                <a href="news_more.php?news=<?php echo $s['news_header'] ?>"><span class="badge badge-btn btn btn-primary">
                               Read More</span></a>
                            </div>
                        </div>
                    </div>
    <?php $rs++;
     } ?>  
                </div>
            </div>
        </div>
        <!-- Blog End -->
 <!-- Testimonial Start -->
        <section class="w3l-content-bg">
        <div class="testimonial">
            <div class="container">
                <div class="section-header">
                    
                    <h2 style="color:#ffffff;">100% Positive Customer Reviews</h2>
                     <br>
                </div>
                <div class="owl-carousel testimonials-carousel">
  <?php 
     $wsx=1;
     $wjndj="SELECT * FROM `web_gallery` WHERE `note`='Reviews Text Published'";
     //echo $rr;
     $okj=$con->query($wjndj);
     
     while($sed=$okj->fetch_assoc()){ ?> 
                    <div class="testimonial-item col-lg-10 col-md-12" style="background-color:#ffffff;"> <br>
                        <img src="admin/ibo_panel/production/nios_image/<?php echo $sed['image'] ?>" alt="Image"> <br>
                        <p>
                           <?php echo $sed['text_mess'] ?>
                        </p>
                        <h2><?php echo $sed['name'] ?></h2>
                        <br>
                    </div>
<?php $wsx++;
     } ?>                      
                </div>
            </div>
        </div>
        </section>
        <!-- Testimonial End -->

        
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
         <script>
		$(document).ready(function(){
			$("#memberModal").modal('show');
		});
	</script>
    </body>
</html>
