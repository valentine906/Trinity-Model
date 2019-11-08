<?php include "views/header.php" ?>
        
        <!-- Title Section -->
        <div class="title-section module">
            <div class="row">
                <div class="small-12 columns">
                    <h1>Meet Our Staff</h1>
                </div><!-- Top Row /-->
            </div><!-- Row /-->
        </div>
        <!-- Title Section Ends /-->
        
        
        <!-- Content Area Starts -->
        <div class="module">
	    	<div class="row">
            	<!-- Welcome Message -->
			    <div class="medium-4 small-12 columns">
                 	<img  alt="" src="images/help/staff-image-01.jpg" class="thumbnail" />
                </div>
                <div class="medium-8 small-12 columns  staff-introduction">
                    <h2>Our Professional Staff Helps You Right!</h2>                     
                    <p>Nulla facilisi. Donec vel feugiat urna, vel sagittis enim. Quisque eros odio, cursus id libero ac, ornare viverra quam. Vestibulum diam diam, varius id tortor vitae, gravida congue risus. Fusce vitae ex vitae neque dignissim vulputate. Fusce et massa sodales ex scelerisque finibus. Vestibulum porttitor erat lacus, id tincidunt ex luctus nec. Suspendisse tempus porttitor libero, eu cursus ipsum. Phasellus et gravida neque, quis porttitor metus. Phasellus tempor enim enim, eget interdum quam vulputate sed. Maecenas ac dolor justo. Maecenas rhoncus, metus a condimentum suscipit, purus ligula sollicitudin nisi, scelerisque porttitor metus odio vel nisl. In hac habitasse platea dictumst. Vivamus ut lacus diam. Vestibulum porttitor erat lacus, id tincidunt ex luctus nec. Suspendisse tempus porttitor libero.</p>
                </div>
    			<!-- Welcom Message Ends -->
	        </div><!-- Row ends -->
		</div>
	    <!-- Content Area Ends -->
        
        
        <!-- Meet your Team Sect -->
        <div class="module">
        	<div class="row">
                <?php
error_reporting(0); // Turn off all error reporting

include_once './admin/includes/MembersManager.php';

$obj = New MembersManager();

foreach($obj->showData($school_id, "members") as $value)
{

    extract($value);
    echo <<<show
                <div class="medium-4 small-12 columns staff-box">
                    <div class="shadow">
                    	<div class="staff-box">
                            <a href="#"><img  alt="" src="admin/dashboard/$image" /></a>
                            <div class="staff-links">
                                <ul class="menu">
                                    <li><a href="http://facebook.com/$facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="http://twitter.com/$twitter"><i class="fa fa-twitter"></i></a></li>
                                </ul>                             
                            </div><!-- staff links /-->
                        </div>   
                        <div class="staff-detail">
                            <h4><a href="#">$name</a></h4>
                            <p>$about</p>
                           	<ul class="no-bullet">
                               <li>Phone : $number</li>
                         	</ul>
                            <a href="single-teacher.html" class="small-button">Read More &raquo;</a>                           
                        </div>                        
                    </div>                     
                </div><!-- Staff -->

            </div><!-- Row -->
        </div>
        <!-- Meet your Team Ends -->
show;
}
if ($value === null)
{
    echo"<div class='well text-center margin-lg'><h1><i class='fa fa-spinner fa-spin'></i> List Not Available At The Moment, Please Try Again Later!</h1></div>";
}
?>

                   
        <!-- Call to Action box -->
        <div class="call-to-action">
           <div class="row">
                <div class="medium-10 small-12 columns">
                    <h2><i class="fa fa-phone" aria-hidden="true"></i> 	If you Have Any Questions Call Us On <span>(+234)000-000-0000</span></h2>
                </div>
                <div class="medium-2 small-12 columns">
                    <a href="#" class="button secondary">Appointment</a>
                </div>
           </div><!-- row /-->
         </div>
        <!-- Call to Action End /-->
        
<?php include "views/footer.php" ?>