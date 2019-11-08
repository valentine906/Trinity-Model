<?php include "views/header.php" ?>
        
        <!-- Title Section -->
        <div class="title-section module">
            <div class="row">
        
                <div class="small-12 columns">
                    <h1>About Us</h1>
                </div><!-- Top Row /-->
                
            </div><!-- Row /-->
        </div>
        <!-- Title Section Ends /-->
        
        <!-- Content section -->
        <div class="content-section module">

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
                            Thank you for your interest in Trinity Model Secondary School, Nnobi website.
                            Know about our vision , mission and beliefs. We believe you will not regret sending
                            your wards to attend our school. We are founded on strong moral and intellectual base
                            with long standing history of excellence in all we do. Trinity Model Secondary School, Nnobi is a knowledge and excellence Centered school committed to partnering with parents
                            to educate the minds and nurture the hearts of students for a better tomorrow. Also, we are
                            committed to ensure that lives are transformed by the power of knowledge and that's why we
                            are called the home of knowledge. Our belief is founded on the principle that says knowledge is power.
                            The power to do exploits in life is proportional to the quality of useful knowledge one has acquired.
                            That's why we are committed to standard principles and pedagogical learning.
                            The foundation of this school is based on God as the source of all true wisdom and knowledge.
                            Our philosophy is to provide a safe and pleasant environment where our children can work, learn
                            and play......
                        </p>
                    </div><!-- Right Column /-->

                </div><!-- Row /-->
            </div>
            <!-- Welcome Message Ends /-->
            
            <!-- Icons Process -->
            <div class="icons-box-wrap module">
                <div class="row">
            
                    <div class="medium-3 small-12 columns">
                        <div class="icon-box">
                            <div class="icon-side float-left">
                                <i class="fa fa-heart" aria-hidden="true"></i>
                            </div><!-- icon side /-->
                            <div class="info-side float-left">
                                <p><strong>Why Study With Us?</strong><br>
                                From Last 30 years we are in industy and have honor. <br>
                                000-000-0000
                                </p>
                            </div><!-- info side /-->
                            <div class="clearfix"></div>
                        </div><!-- icon-box /-->
                    </div><!-- icon-box ends /-->
                    
                    <div class="medium-3 small-12 columns">
                        <div class="icon-box">
                            <div class="icon-side float-left">
                                <i class="fa fa-book" aria-hidden="true"></i>
                            </div><!-- icon side /-->
                            <div class="info-side float-left">
                                <p><strong>Special Techniques</strong><br>
                                We are providing special visual teaching techniques to help you grow faster.
                                </p>
                            </div><!-- info side /-->
                            <div class="clearfix"></div>
                        </div><!-- icon-box /-->
                    </div><!-- icon-box ends /-->
                    
                    <div class="medium-3 small-12 columns">
                        <div class="icon-box">
                            <div class="icon-side float-left">
                                <i class="fa fa-user" aria-hidden="true"></i>
                            </div><!-- icon side /-->
                            <div class="info-side float-left">
                                <p><strong>Qualified Staff</strong><br>
                                Our Qualified best teachers from industry give you best professional Knowledge.
                                </p>
                            </div><!-- info side /-->
                            <div class="clearfix"></div>
                        </div><!-- icon-box /-->
                    </div><!-- icon-box ends /-->
                    
                    <div class="medium-3 small-12 columns">
                        <div class="icon-box">
                            <div class="icon-side float-left">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </div><!-- icon side /-->
                            <div class="info-side float-left">
                                <p><strong>Get Admission</strong><br>
                                Rush before all seats are reserved for current batch. <br>
                                    000-000-0000
                                </p>
                            </div><!-- info side /-->
                            <div class="clearfix"></div>
                        </div><!-- icon-box /-->
                    </div><!-- icon-box ends /-->
            
                
                </div><!-- Row /-->
            </div>
            <!-- Icons Process Ends /-->

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
            
        </div>
        <!-- Content Section Ends /-->
        
        
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