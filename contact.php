<?php include "views/header.php" ?>
        
        <!-- Title Section -->
        <div class="title-section module">
            <div class="row">
        
                <div class="small-12 columns">
                    <h1>Contact Us</h1>
                </div><!-- Top Row /-->
                
            </div><!-- Row /-->
        </div>
        <!-- Title Section Ends /-->
        
        <!-- Content section -->
        <div class="content-section module">
        	<div class="row">
            	
                <!-- Map Area -->
                <div class="map-wrapper module">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.8735896183175!2d6.786032728193137!3d6.14767502094645!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x10439301868f316f%3A0x169b69c33f8c1cb6!2sOld+Cemetery+Rd%2C+City+Centre%2C+Onitsha!5e0!3m2!1sen!2sng!4v1552384518275" height="300"></iframe>
                </div>
                <!-- Map Ends /-->
                
                <!-- Contact content area -->
                <div class="content-wrapper">
                
                	<div class="medium-3 small-12 columns">

                        <div class="contact-info">
                        	<h4>Meet our School</h4>
                            <p>Onitsha, Anambra state, Nigeria</p>
                        </div>
                        <div class="contact-info">
                        	<h4>Get in Touch</h4>
                            <p><strong>Office: </strong>+234 806 494 275<br>
                            	<strong>Fax: </strong>+234 806 494 275<br>

                            </p>
                        </div>
                        <div class="contact-info">
                        	<h4>Follow Us</h4>
	                         <div class="socialicons">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-google"></i></a>
	                        </div><!-- Social Icons /-->
                        </div>
                    </div><!-- Left column Ends /-->

                    <?php
                    if (isset($_POST['contact_name']) && isset($_POST['contact_email']) && isset($_POST['contact_phone']) && isset($_POST['contact_message'])){
                        $contact_name = $_POST['contact_name'];
                        $contact_email = $_POST['contact_email'];
                        $contact_phone = $_POST['contact_phone'];
                        $contact_message = $_POST['contact_message'];

                        if (!empty ($_POST['contact_name']) && !empty($_POST['contact_email']) && !empty($_POST['contact_phone']) && !empty($_POST['contact_message'])) {

                            $to = 'solecnetlinksng@gmail.com';
                            $Subject = 'Hallowed Model Secondary School Onitsha Website.';
                            $body = $contact_name."\n". ($contact_phone)."\n".$contact_message;
                            $headers = 'From: ' .$contact_email;

                            if (@mail($to, $Subject, $body, $headers)){
                                echo 'Thanks for contacting us. We\'ll be in touch soon';
                            }else {
                                echo 'Sorry, an Error Occurred. Please try again later';
                            }

                        }
                    }

                    ?>

                    <div class="medium-9 small-12 columns">
                    	<h2>Please fill the form below to contact us</h2>
                        <div class="contact-form">

                        	<div class="row">
                            	<div class="medium-12 small-12 columns">
                                	<label>
                                    	Your Name*
                                        <input type="text" value="" name="contact_name" placeholder="Your name here..." />
                                    </label>    
                                </div>
                            </div><!-- Row Ends /-->
                            <div class="medium-6 small-12 columns">
                                <label>
                                    Your Email
                                    <input type="text" value="" name="contact_email" placeholder="Your Email Adddress here..." />
                                </label>
                            </div>

                            <div class="row">
                            	<div class="medium-6 small-12 columns">
                                	<label>
                                    	Phone
                                        <input type="text" value="" name="contact_phone" placeholder="Enter your Phone Number ..." />
                                    </label>    
                                </div>
                            </div><!-- Row Ends /-->

                            
                            <div class="row">
                            	<div class="medium-12 small-12 columns">
                                	<label>
                                    	Your Comments 
                                        <textarea rows="10" name="contact_message" placeholder="Your message ..."></textarea>
                                    </label>    
                                	<input type="submit" class="button primary" value="Send your message" />
                                </div>
                            </div><!-- Row Ends /-->

                        </div><!-- Contact form /-->
                    </div><!-- Right Column Ends /-->
                    <div class="clearfix"></div>
                </div>
                <!-- Contact Content Area /-->
                
            </div><!-- Row /-->
        </div>
        <!-- Content Section Ends /-->
        
        
        <!-- Call to Action box -->
        <div class="call-to-action">
           <div class="row">
                <div class="medium-10 small-12 columns">
                    <h2><i class="fa fa-phone" aria-hidden="true"></i> 	If you Have Any Questions Call Us On <span>(+234)806 494 275</span></h2>
                </div>
                <div class="medium-2 small-12 columns">
                    <a href="contact" class="button secondary">Appointment</a>
                </div>
           </div><!-- row /-->
         </div>
        <!-- Call to Action End /-->
        
     <?php include "views/footer.php" ?>