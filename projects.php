<?php include "views/header.php" ?>

<!-- Title Section -->
<div class="title-section module">
    <div class="row">

        <div class="small-12 columns">
            <h1> Our Projects</h1>
        </div><!-- Top Row /-->

    </div><!-- Row /-->
</div>
<!-- Title Section Ends /-->

<!-- Content section -->
<div class="content-section module">

    <!-- Seminar/Events -->
    <div class="space-section module">
        <div class="row">

            <div class="events-wrapper">
                <div class="team-grids">
                    <?php
                    error_reporting(0); // Turn off all error reporting

                    include_once './admin/includes/ProjectsManager.php';

                    $obj = New ProjectManager();

                    foreach($obj->showData($school_id, "projects") as $value)
                    {
                        extract($value);
                        echo <<<show
                <div class="medium-6 small-12 columns">
                    <div class="event">
                        <div class="medium-8 small-12 columns event-data">
                            <h4><a href="#">$name</a></h4>
                            <a href="#" class="button primary bordered-dark">Before</a>
                        </div><!-- Event DAta /-->
                        <div class="medium-4 small-12 columns event-thumb">
                            <img src="admin/dashboard/$beforeImage" alt="$name" />
                        </div><!-- Event thumb /-->
                        <div class="clearfix"></div>
                    </div><!-- Event div ends /-->
                </div><!-- Event Column Ends /-->

                <div class="medium-6 small-12 columns">
                    <div class="event">
                        <div class="medium-8 small-12 columns event-data">
                            <h4><a href="#">$name</a></h4>
                            <a href="#" class="button primary bordered-dark">After</a>
                        </div><!-- Event DAta /-->
                        <div class="medium-4 small-12 columns event-thumb">
                            <img src="admin/dashboard/$afterImage" alt="$name" />
                        </div><!-- Event thumb /-->
                        <div class="clearfix"></div>
                    </div><!-- Event div ends /-->
                </div><!-- Event Column Ends /-->

                <h4 class"project-date title-heading" style="text-align:center !important;">
                $sessionBegan Session - $sessionEnded Session
                </h4>

            </div><!-- Events Wrapper Ends /-->
show;
                    }
                    if ($value === null)
                    {
                        echo"<div class='well text-center margin-lg'><h1><i class='fa fa-meh-o'></i> No project Available At The Moment! Check Back Later</h1></div>";
                    }
                    ?>
        </div><!-- Row Ends /-->
    </div>
    <!-- Seminar Events Ends /-->


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
