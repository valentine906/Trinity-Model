<?php
include_once 'admin/includes/ScratchCardController.php';
include_once 'admin/includes/ApplicationManager.php';
include_once 'admin/includes/formkey.class.php';

if(isset($_REQUEST['checkAdmissionStatus']) && (isset($_REQUEST['checkAdmissionStatus'])))
{
    $card_pin = trim(strip_tags($_POST['card_pin']));
    $card_serial = trim(strip_tags($_POST['card_serial']));
    $exam_number = trim(strip_tags(strtoupper($_POST['exam_number'])));
    $used = trim(strip_tags($_POST['used']));
    $date_used = trim(strip_tags($_POST['date_used']));

    extract($_REQUEST);

    $sql = "SELECT exam_number FROM applications WHERE exam_number=:exam_number";
    $q = $ApplicationManager->runQuery($sql);
    $q->execute(array(':exam_number'=>$exam_number));
    $row = $q->fetch(PDO::FETCH_ASSOC);

    if(empty($row))
    {
        $error[] = "Invalid Examination Number";
    }
    else
    {
        try
        {
            $sql = "SELECT * FROM scratch_card WHERE card_serial=:card_serial AND card_pin=:card_pin";
            $q = $ScratchCardController->runQuery($sql);
            $q->execute(array(':card_serial' => $card_serial, ':card_pin' => $card_pin));
            $row = $q->fetch(PDO::FETCH_ASSOC);

            if($row == 0)
            {
                $error[] = "Invalid Card or Card Does Not Exist";
            }
            else
            {
                if(empty($row['card_user']) or $row['card_user'] == $exam_number)
                {
                    $sql = "UPDATE scratch_card SET used=:used, card_user=:card_user, date_used=:date_used WHERE card_serial=:card_serial";
                    $q = $ScratchCardController->runQuery($sql);
                    $q->execute(array(':used'=>$used,':card_user'=>$exam_number, ':date_used'=>$date_used, ':card_serial'=>$card_serial));


                        if($_SERVER['REQUEST_METHOD'] == 'post') {
                            //Validate the form key
                            if (!isset($_POST['form_key']) || !$formKey->validate()) {
                                //Form key is invalid, show an error
                                $error[] = 'An unauthorized operation was carried out! Please exit the page!';
                            }
                        }
                        else
                        {
                            $sql = "SELECT * FROM applications WHERE exam_number=:exam_number";
                            $q = $ApplicationManager->runQuery($sql);
                            $q->execute(array(':exam_number'=>$exam_number));
                            $row = $q->fetch(PDO::FETCH_ASSOC);

                            if($row['admission_status'] == "Admitted")
                            {
                                $ApplicationManager->redirect('check-admission.php?message=admitted&exam_number='.$exam_number);
                            }
                            else if($row['admission_status'] == "Not Admitted")
                            {
                                $ApplicationManager->redirect('check-admission.php?message=failed&exam_number='.$exam_number);
                            }
                        }

                }
                else if($row['card_user'] !== $exam_number)
                {
                    $error[] = 'This Card Is Not Available Or Has Already Been Used By Another User';
                }
            }
        }
        catch(PDOException $e)
        {
            $e->getMessage();
        }
    }
}
include "views/header.php";
extract($ApplicationManager->getStudentByExamNumber($_REQUEST['exam_number']));
?>
    <!--about-->
    <div id="about" class="about">
        <div class="container">

            <div class="row">
                <div class="col-md-8 col-md-offset-3">

                    <div class="title">
                        <h1>Check Admission Status</h1>
                    </div>

                    <?php error_reporting(0);
                    if($_REQUEST['message'] == "failed" and !empty($_REQUEST['exam_number']))
                    {
                        ?>
                        <div class="alert alert-danger text-center">
                            <h3><i class="fa fa-user"></i> <?php echo $applicant_surname.', '.$applicant_firstname.' '.$applicant_othernames; ?></h3>
                            <hr>
                            <h4 style="color: #000;"><i class="fa fa-info-circle"></i> You Have Not Been Admitted Yet! Check Back Later.</h4>
                        </div>
                        <?php
                    }
                    else if($_REQUEST['message'] == "admitted" and !empty($_REQUEST['exam_number']))
                    {
                        ?>
                        <div class="alert alert-success text-center">
                            <ul class="list-group">
                                <h4 class="list-group-item">Congratulations <strong><?php echo $applicant_surname.', '.$applicant_firstname.' '.$applicant_othernames; ?></strong></h4>
                                <li class="list-group-item"><i class="fa fa-check"></i> You Have Been Granted Admission!</li>
                                <a class="list-group-item active" href="admission-letter.php?<?php echo 'message='.$_REQUEST['message'].'&exam_number='.$_REQUEST['exam_number'].'&school_id='.$school_id; ?>"><i class="fa fa-print"></i> Click Here To Print Your Admission Letter!</a>
                            </ul>
                        </div>
                        <?php
                    }
                    else
                    {
                        ?>
                        <form method="post">
                            <?php
                            if(isset($error))
                            {
                                foreach ($error as $error) {
                                    ?>
                                    <div class="alert alert-danger">
                                        <h4><i class="icon fa fa-warning"></i> <?php echo $error; ?></h4>
                                    </div>
                                    <?php
                                }
                            }

                            $formKey->outputKey();
                            ?>


                            <label>Card Serial Number</label>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                <input type="text" class="form-control" placeholder="Card Serial Number" name="card_serial"  required>
                                <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                            </div>
                            <hr>

                            <label>Card PIN</label>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon"><i class="fa fa-expeditedssl"></i></span>
                                <input type="text" class="form-control" placeholder="Card PIN" name="card_pin"  required>
                                <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                            </div>
                            <hr>

                            <label>Examination Number</label>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input type="text" class="form-control" placeholder="Examination Number" name="exam_number" required>
                                <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                            </div>

                            <input type="hidden" class="form-control" placeholder="" name="used" value="1" >
                            <input type="hidden" class="form-control" placeholder="" name="date_used"  value="<?php echo date("l jS \of F Y "); ?>" required>
                            <hr>

                            <button type="submit" class="btn btn-success btn-lg" name="checkAdmissionStatus">
                                <i class="fa fa-check"></i> Check Admission Status
                            </button>
                            <hr>

                        </form>
                        <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
    <!--//about-->
<?php include "views/footer.php"?>