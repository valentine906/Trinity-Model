<?php include "views/header.php" ?>
<?php include "views/banner.php" ?>
        
        <!-- information boxes starts -->
        <div class="information-boxes module">
            <div class="newadmission-info medium-4 small-12 columns">
                <div class="">
                    <h3><i class="fa fa-book" aria-hidden="true"></i> Mission</h3>
                    <p>
                    Trinity Model Secondary School, Nnobi is committed to provide maximum educational room for all student, to enable them build a brighter future for themselves through stimulating academic forum to meet up to current status  Via combined effort of the staff and students
                    </p>
                    <div class="clearfix"></div>
                    <a href="about" class="primary button bordered-light">Find out More!</a>
                </div>
            </div><!-- courses column Ends /-->

            <div class="faculty-info medium-4 small-12 columns">
                <div class="">
                    <h3><i class="fa fa-eye" aria-hidden="true"></i> Vision</h3>
                    <p>
                        To provide an academic environment where students are inspired with deep-seated interest for excellence. At the end to achieve success, parental joy, staff accomplishment and societal well-being.
                    </p>
                    <div class="clearfix"></div>
                    <a href="admission" class="primary button bordered-light">Get Enrolled!</a>
                </div>
            </div>

            <div class="courses-info medium-4 small-12 columns">
                <div class="">
                    <h3><i class="fa fa-graduation-cap" aria-hidden="true"></i> Curriculum</h3>
                    <p>
                        The curriculum of Trinity Model Secondary School, Nnobi is designed to take care of the Interest of students from all parts of the world. The school operates basically Nigerian curriculum but patterned to suit students from any other Part of the world.
                        Trinity Model Secondary School, Nnobi has a high policy on academic standards and its students
                    </p>
                    <div class="clearfix"></div>
                    <a href="about" class="primary button bordered-light">Meet Our Teachers!</a>
                </div>
            </div><!-- faculty info ends /-->

            <div class="clearfix"></div>
        </div>
        <!-- information boxes ends /-->
        
        <!-- Welcome Message -->
        <div class="welcome-message module">
        	<div class="row">
            
            	<div class="medium-6 small-12 columns">
                	<img src="images/help/student.jpg" class="image-border" alt="Education Background" />
                </div><!-- Left Column /-->
            	
                <div class="medium-6 small-12 columns">
                    <h2> Trinity Model <span>Secondary School Nnobi</span></h2>
                    <h3>We are eager to give you best Education.</h3>
                    <p>
                        Thank you for your interest in Trinity Model Secondary School, Nnobi website. Know about our vision , mission and beliefs. We believe you will not regret sending your wards to attend our school. We are founded on strong moral and intellectual base with long standing history of excellence in all we do. Trinity Model Secondary School, Nnobi is a knowledge and excellence Centered school committed to partnering with parents to educate the minds and nurture the hearts of students for a better tomorrow. Also, we are committed to ensure that lives are transformed by the power of knowledge and that's why we are called the home of knowledge. Our belief is founded on the principle that says knowledge is power. The power to do exploits in life is proportional to the quality of useful knowledge one has acquired. That's why we are committed to standard principles and pedagogical learning. The foundation of this school is based on God as the source of all true wisdom and knowledge. Our philosophy is to provide a safe and pleasant environment where our children can work, learn and play......
                    </p>

                </div><!-- Right Column /-->
                
            </div><!-- Row /-->
        </div>
        <!-- Welcome Message Ends /-->
        

        
        <!-- Our Teachers -->
        <div class="our-teachers module">
        	<div class="row">
            	<div class="section-title-wrapper">
                    <div class="section-title">
                        <h2>Our Teachers</h2>
                        <p>Some Special Teachers From the Industry!</p>
                    </div>
                </div> <!-- Title Ends /-->

                <div class="teachers-wrapper">
                <?php
error_reporting(0); // Turn off all error reporting

include_once './admin/includes/MembersManager.php';

$obj = New MembersManager();

foreach($obj->showData($school_id, "members") as $value)
{

    extract($value);
    echo <<<show
                    <div class="teacher">
                    	<div class="teacher-thumb">
                        	<img src="admin/dashboard/$image" alt="Teacher Doe" />
                            <div class="teacher-links menu-centered">
                            	<ul class="menu">
                                	<li><a href="http://facebook.com/$facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="http://twitter.com/$twitter"><i class="fa fa-twitter"></i></a></li>
                                </ul>
                            </div><!-- teacher links /-->
                        </div><!-- Teacher thumb /-->
                        <div class="teacher-meta">
                        	<h3><a href="#">$name</a></h3>
                            <p>$$about</p>
                        </div><!-- teacher meta /-->
                    </div><!-- Teacher Ends /-->

show;
}
                ?>
                </div><!-- Teachers Wrapper /-->

            </div><!-- row /-->
        </div>
        <!-- Our Teachers /-->
        
        <!-- Seminar/Events -->
        <div class="seminar-events module">
        	<div class="row">
            	<div class="section-title-wrapper light-title">
                    <div class="section-title">
                        <h2>Upcoming Events</h2>
                        <p>Our Upcoming Seminars/Events Dont Miss Out!</p>
                    </div>
                </div> <!-- Title Ends /-->
                
                <div class="events-wrapper">
<?php
                    error_reporting(0); // Turn off all error reporting

                    include_once './admin/includes/CalendarManager.php';

                    $obj = New CalendarManager();

                    foreach($obj->showData($school_id, "calendar") as $value)
                    {
                        extract($value);
                        $mydate = strtotime($date);
                        $newdate = date('F jS Y', $mydate);
                        echo <<<show

                    <div class="medium-6 small-12 columns">
                        <div class="event">
                            <div class="medium-8 small-12 columns event-data">
                                <h4><a href="#">$title</a></h4>
                                <p>$description</p>
                                <p><strong>Timinings:</strong> $time
                                    <br><strong>Date:</strong> $newdate</p>
                                <a href="contact" class="button primary bordered-dark">Join Event</a>
                            </div><!-- Event DAta /-->
                            <div class="medium-4 small-12 columns event-thumb">
                                <img src="images/help/event-picture.jpg" alt="PHP Course" />
                            </div><!-- Event thumb /-->
                            <div class="clearfix"></div>
                        </div><!-- Event div ends /-->
                    </div><!-- Event Column Ends /-->
show;
                    }
?>

                    
                </div><!-- Events Wrapper Ends /-->
                
            </div><!-- Row Ends /-->
        </div>
        <!-- Seminar Events Ends /-->

<!-- Testimonials Section /-->
<div class="testimonials-wrapper side-controls module">
    <div class="section-title-wrapper">
        <div class="section-title">
            <h2>Our Testimonials</h2>
            <p>What Parent's Say About Us?</p>
        </div>
    </div> <!-- Title Ends /-->

    <div class="row">

        <div class="testimonials">

            <div class="testimonial">
                <div class="testimonial-thumb">
                    <img src="images/help/user-avatar.png" alt="John Doe" />
                </div><!-- Testimonial Thumb /-->
                <div class="testimonial-detail">
                    <h4>Very happy to find this institute!</h4>
                    <p>I must take time out to express my sincere gratitude to each one of you for enhancing my life and the life of my daughter!</p>
                    <cite>Maria Ikechukwu</cite>
                </div><!-- Testimonial Detail /-->
                <div class="clearfix"></div>
            </div> <!-- Testimonial /-->

            <div class="testimonial">
                <div class="testimonial-thumb">
                    <img src="images/help/user-avatar.png" alt="John Doe" />
                </div><!-- Testimonial Thumb /-->
                <div class="testimonial-detail">
                    <h4>Very happy to find this institute!</h4>
                    <p>After graduation we were very worried about our children what he will do as he does not have any work experience but when he joined this abc institute this he became so professional!</p>
                    <cite>Obiora Mgbakwe</cite>
                </div><!-- Testimonial Detail /-->
                <div class="clearfix"></div>
            </div> <!-- Testimonial /-->

        </div><!-- Testimonials /-->

    </div><!-- Row /-->

</div>
<!-- Testimonials Section Ends /-->
            
        </div>
        <!-- Gallery Section Ends /-->
        
        <!-- Process/Testimonials -->
        <div class="seminar-events content-area module">
        	<img src="images/help/teacher-clipart-transparent-background-8.png" class="upper-background" alt="Business Women" />
        	<div class="row">
            
			    <div class="our-process-wrapper">
                    
                    <div class="medium-8 medium-offset-3 small-12 columns our-process">
                    	<h2>Its Easy, Its Brilliant, It Works!</h2>

                        <div class="process">
                        	<div class="number">1</div>
                            <div class="right-info">
                            	<h3>Select a Course you like and Explore it!</h3>
                                <p>Once upon a time there was a thirsty crow he flew here and there in search of water.</p>
                            </div>
                            <div class="clearfix"></div>
                        </div><!-- process /-->
                        
                        <div class="process">
                        	<div class="number">2</div>
                            <div class="right-info">
                            	<h3>Join a Seminar To know More about it!</h3>
                                <p>But he could not find water anywhere at last he reached in a garden where he saw a pitcher.</p>
                            </div>
                            <div class="clearfix"></div>
                        </div><!-- process /-->

                        <div class="process">
                        	<div class="number">3</div>
                            <div class="right-info">
                            	<h3>Get Enrolled and start better future with us!</h3>
                                <p>Thirsty Crow should Call us at: 000-000-000 to drink water asap before all seats are reserved.</p>
                            </div>
                            <div class="clearfix"></div>
                        </div><!-- process /-->
                    </div><!-- Left Process Ends /-->
                    
<!--                    <div class="medium-4 small-12 columns our-testimonials"></div> Our Testimonials Ends /-->
                
                </div><!-- Events Wrapper Ends /-->
                
            </div><!-- Row Ends /-->
        </div>
        <!-- Seminar Events Ends /-->
        

        
        <!-- Blog Posts -->
        <div class="blog-posts module grey-bg">
        	<div class="section-title-wrapper">
                <div class="section-title">
                    <h2>Recent News</h2>
                    <p>What's going on in our Blog?</p>
                </div>
            </div> <!-- Title Ends /-->
            
        	<div class="row">
            	
                <div class="posts-wrapper">
                    <?php error_reporting(0);

                    include_once './admin/includes/NewsManager.php';

                    $obj = New NewsManager();

                    foreach($obj->showData($school_id, "news") as $value)
                    {
                    extract($value);
                    echo <<<show



                    <div class="medium-4 small-12 columns">
                        <div class="post">
                            <div class="post-thumb">
                            	<a href="#">
	                            	<img src="images/help/web.jpg" alt="My Blog post" />
                                </a>    
                            </div><!-- Thumb /-->
                            <div class="post-content">
                            	<h4><a href="#">$title</a></h4>
                                <div class="post-meta"><strong>time:</strong> $time </div>
                                <p>$content</p>
                            </div><!-- post content /-->
                        </div><!-- Post /-->
                	</div><!-- Post column /-->
show;
}
  ?>

                    
                </div><!-- Posts Wrapper /-->
                
            </div><!-- Row Ends /-->
        
        </div>
        <!-- Blog Posts Ends /-->

<!-- Content Area Starts -->
<div class="module">
    <div class="row">

        <a href="admission-requirements.php">
            <div class="medium-4 small-12 columns">
                <div class="price-plan">
                    <div class="price-title">
                        <h4 class="title-heading">Admission Requirements</h4>
                    </div><!-- price title ends /-->

                </div><!-- price-plan /-->
            </div><!-- first column ends /-->
        </a>

        <a href="check-admission">
            <div class="medium-4 small-12 columns">
                <div class="price-plan">
                    <div class="price-title">
                        <h4 class="title-heading">Admission Status</h4>
                    </div><!-- price title ends /-->

                </div><!-- price-plan /-->
            </div><!-- first column ends /-->
        </a>

        <a href="application-form">
            <div class="medium-4 small-12 columns">
                <div class="price-plan">
                    <div class="price-title">
                        <h4 class="title-heading">Get Admission</h4>
                    </div><!-- price title ends /-->

                </div><!-- price-plan /-->
            </div><!-- first column ends /-->
        </a>

    </div><!-- row ends /-->
</div>
<!-- Content Area ends -->
        
        <!-- Call to Action box -->
        <div class="call-to-action">
           <div class="row">
                <div class="medium-10 small-12 columns">
                    <h2><i class="fa fa-phone" aria-hidden="true"></i> 	If you Have Any Questions Call Us On <span>(+234)000-000-0000</span></h2>
                </div>
                <div class="medium-2 small-12 columns">
                    <a href="contact" class="button secondary">Appointment</a>
                </div>
           </div><!-- row /-->
         </div>
        <!-- Call to Action End /-->
        
      <?php include "views/footer.php" ?>
