<?php include "views/header.php" ?>

    <!-- Title Section -->
    <div class="title-section module">
        <div class="row">
            <div class="small-12 columns">
                <h1>Past School Principal/Head Mistress</h1>
            </div><!-- Top Row /-->
        </div><!-- Row /-->
    </div>
    <!-- Title Section Ends /-->


    <!-- Meet your Team Sect -->
    <div class="module">
        <div class="row">

            <div class="section-title">
                <h2><span>Management</span></h2>
            </div><!-- section title end -->
<?php
                    error_reporting(0); // Turn off all error reporting

                    include_once './admin/includes/PrincipalManager.php';

                    $obj = New PrincipalManager();

                    foreach($obj->showData($school_id, "principals") as $value)
                    {

                        extract($value);
                        echo <<<show
            <div class="medium-4 small-12 columns">
                <div class="shadow">
                    <div class="staff-box">
                        <img src="admin/dashboard/$image" alt="staff-profile"/>
                    </div><!-- staff box /-->
                    <div class="staff-detail">
                        <h4><a href="#">$name</a></h4>
                        <p>$content</p>
                        <ul class="no-bullet">
                            <li>Phone : $number</li>
                            <li>Duration : $duration</li>
                        </ul>
                    </div>
                </div>
            </div><!-- Staff -->
show;
                    }
?>
        </div><!-- Row -->
    </div>
    <!-- Meet your Team Ends -->



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