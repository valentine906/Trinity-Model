<?php include "views/header.php" ?>

    <!-- Title Section -->
    <div class="title-section module">
        <div class="row">

            <div class="small-12 columns">
                <h1>Join Our Events</h1>
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
if ($value === null)
{
    echo"<div class='well text-center margin-lg'><h1><i class='fa fa-meh-o'></i> School Calendar Not Available At The Moment. Please Check Later</h1></div>";
}
?>

                </div><!-- Events Wrapper Ends /-->

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
