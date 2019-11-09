<?php
$school_id = "CHRIST_ONITSHA";
include 'admin/includes/ApplicationManager.php';
include 'admin/includes/AdminController.php';
if($_REQUEST['message'] !== "admitted" or empty($_REQUEST['exam_number']))
{
    header('Location: index.php');
}
extract($AdminController->getSchool($_REQUEST['school_id']));

extract($ApplicationManager->getStudentByExamNumber($_REQUEST['exam_number']));


?>
<!DOCTYPE html>
<html>
<head>
    <title> <?php  echo $admin_name ?> </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--Custom Theme files-->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/font-awesome.min.css" type="text/css" rel="stylesheet" media="all">
    <!--//Custom Theme files-->
    <!--//js-->
    <!--web-fonts-->
    <link href='//fonts.googleapis.com/css?family=Nova+Round' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!--//web-fonts-->
    <!--start-smooth-scrolling-->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
</head>
<body>
<style type="text/css">
    html,body{
        font-family: Roboto, Candara;
    }
    @media print
    {
        a,button{visibility: hidden;}
    }
    dt{color: darkred;}
</style>
<div class="container">

    <section class="text-center" style="margin-bottom: 20px;">
        <h1 style="padding-top: 10px; color: orangered; border-bottom: 2px solid #a0a0a0; padding-bottom: 10px;margin-bottom: 20px;"> <?php  echo $admin_name ?> </h1>
        <h1 style="color: orangered;">Admission Letter</h1>
        <hr>
    </section>

    <section style="margin-bottom: 50px;">

        <h4><strong>Dear <?php echo $applicant_surname.', '.$applicant_firstname.' '.$applicant_othernames; ?>,</strong></h4>

        <h4>
            We are pleased to inform you that you have been offered a spot in the <?php echo $applicant_class.' Class of '. $form_year; ?> for <?php  echo $admin_name ?>.
            <br>
            <br>

            After successfully reviewing your application and the information you provided
            added to the fact that you passed our entrance examination, we have determined that you
            are exactly the kind of student that we are looking forward to carry on the <?php  echo $admin_name ?> tradition.
            <br>
            <br>

            We ask that you respond within 4 weeks, as there are many other candidates who are waiting for any unaccepted spots.
            <br>
            <br>

            Once again, congratulations. We hope to hear from you soon.
            <br>
            <br>
            <br>
            <br>

            <i>Sincerely,</i>
            <br>
            <br>
            <b><?php  echo $admin_name ?>.</b>



        </h4>


        <div class="btn-group" role="group" aria-label="...">
            <button type="button" class="btn btn-success btn-lg" onclick="window.print();"><i class="fa fa-print"></i> Print Admission Letter</button>
            <a class="pull-right btn btn-primary btn-lg" href="./"><i class="fa fa-home"></i> Back Home</a>
        </div>
    </section>

</div>


</body>
</html>