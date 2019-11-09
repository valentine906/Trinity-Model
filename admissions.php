<?php
include '../admin/includes/ApplicationManager.php';
include "views/header.php";
include "views/banner.php";
extract($ApplicationManager->getAdmissionInfo($school_id));
?>
    <!--about-->
    <div id="about" class="about">
        <div class="container">
            <div class="title">
                <h2>Admission Requirements</h2>
            </div>
            <hr>

            <?php echo $admission_requirements; ?>

            <hr>
            <a href="application-form.php" class="btn btn-primary btn-lg btn-block">Click Here To Apply Now!</a>
            <hr>
        </div>
    </div>
    <!--//about-->
<?php include "views/footer.php"?>