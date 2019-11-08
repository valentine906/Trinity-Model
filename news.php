<?php include "views/header.php" ?>

    <!-- Title Section -->
    <div class="title-section module">
        <div class="row">

            <div class="small-12 columns">
                <h1>News</h1>
            </div><!-- Top Row /--
        </div><!-- Row /-->
    </div>
    <!-- Title Section Ends /-->

    <!-- Content section -->

        </div>

        <!-- Blog Posts -->
        <div class="blog-posts module grey-bg">
        	<div class="section-title-wrapper">
                <div class="section-title">
                    <h2>Recent News</h2>
                    <p>What's going on in our school?</p>
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
	                            	<img src="images/help/newspaper-vector-icons5.jpg" alt="My Blog post" />
                                </a>
                            </div><!-- Thumb /-->
                            <div class="post-content">
                            	<h4><a href="#">$title</a></h4>
                                <p> $content </p>
                            </div><!-- post content /-->
                        </div><!-- Post /-->
                	</div><!-- Post column /-->
show;
}
if ($value === null)
{
    echo"<div class='well text-center margin-lg text-black'><h1><i class='fa fa-meh-o'></i> No News Available At The Moment!</h1></div>";
}
?>
                </div><!-- Posts Wrapper /-->


            </div><!-- Row Ends /-->

        </div>
        <!-- Blog Posts Ends /-->

            </div><!-- row /-->
        </div>

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