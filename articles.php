<?php include "views/header.php" ?>

    <!-- Title Section -->
    <div class="title-section module">
        <div class="row">

            <div class="small-12 columns">
                <h1>Our Articles</h1>
            </div><!-- Top Row /-->

        </div><!-- Row /-->
    </div>
    <!-- Title Section Ends /-->

    <!-- Content section -->
    <div class="content-section module blog-page">

        <div class="row">

            <div class="medium-9 small-12 columns posts-wrap">
           <?php error_reporting(0);

                    include_once './admin/includes/ArticleManager.php';

                    $obj=new ArticleManager;

                    foreach($obj->showData($school_id, "article") as $value)
                    {
                        extract($value);
                        echo <<<show
                <div class="blog-post">
                    <div class="featured-image">
                        <a href="#">
                            <img alt="" src="images/help/blog1.jpg" class="thumbnail" />
                        </a>
                        <div class="post-meta">
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        $date | <i class="fa fa-user" aria-hidden="true"></i>
                        <a href="#">Administrator</a> | <i class="fa fa-list" aria-hidden="true"></i>
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        <a href="#"> $time</a></div>
                    </div>

                    <h3><a href="#">$title</a></h3>

                    <div class="post-excerpt">
                        <p>$content</p>
                    </div><!-- post content ends /-->
                </div><!-- post Ends here /-->
show;
                    }
?>
            </div><!-- Posts wrap /-->

        </div><!-- Row Ends /-->

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