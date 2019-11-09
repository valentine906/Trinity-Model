<?php
include_once 'admin/includes/ApplicationManager.php';
include_once 'admin/includes/formkey.class.php';
if(isset($_REQUEST['submitApplicationForm']) && (isset($_REQUEST['submitApplicationForm'])))
{
    $admission_status = "Not Admitted";
    $school_id = trim(strip_tags($_POST['school_id']));
    $form_year = trim(strip_tags(date('Y')));
    $exam_number = $school_id.'/'.date('Y').'/'.mt_rand(10000,99999);
    $application_id = strtoupper(substr(md5(rand()), 0, 15));

    $card_pin = trim(strip_tags(ucwords($_POST['card_pin'])));
    $card_serial = trim(strip_tags(ucwords($_POST['card_serial'])));
    $applicant_surname = preg_replace('/[«»""!?,!@£$%<>^-&*{}#;:()_]+/','', trim(strip_tags(ucwords($_POST['applicant_surname']))));
    $applicant_firstname = preg_replace('/[«»""!?,!@£$%<>-^&*{}#;:()_]+/','',trim(strip_tags(ucwords($_POST['applicant_firstname']))));
    $applicant_othernames = preg_replace('/[«»""!?,!@£$%<>-^&*{}#;:()_]+/','',trim(strip_tags(ucwords($_POST['applicant_othernames']))));

    $applicant_dob = trim(strip_tags($_POST['applicant_dob']));
    $applicant_pob = preg_replace('/[«»""!?!@£$%<>^*{}#;:_]+/','',trim(strip_tags(ucwords($_POST['applicant_pob']))));

    $applicant_phone = preg_replace('/[«»""!?,!@£$%<>^&*{}#;:(-)_]+/','',trim(strip_tags($_POST['applicant_phone'])));
    $applicant_email = trim(strip_tags(ucwords($_POST['applicant_email'])));

    $applicant_nationality = preg_replace('/[«»""!?,!@£$%<>^&*{-}#;:()_]+/','',trim(strip_tags($_POST['applicant_nationality'])));
    $applicant_state = preg_replace('/[«»""!?,!@£$%<>^&*{}#;:()_]+/','',trim(strip_tags($_POST['applicant_state'])));
    $applicant_lga = preg_replace('/[«»""!?,!@£$%<>^&*{}#;:()_]+/','',trim(strip_tags($_POST['applicant_lga'])));

    $applicant_address = trim(strip_tags(ucwords($_POST['applicant_address'])));

    $applicant_primaryschool = trim(strip_tags(ucwords($_POST['applicant_primaryschool'])));
    $applicant_class = preg_replace('/[«»""!?,!@£$%<>^&*{}#;:()_]+/','',trim(strip_tags($_POST['applicant_class'])));
    $applicant_lastschool = trim(strip_tags(ucwords($_POST['applicant_lastschool'])));
    $applicant_profession = trim(strip_tags(ucwords($_POST['applicant_profession'])));

    $applicant_parentname = preg_replace('/[«»""!?,!@£$%<>^-&*{}#;:()_]+/','', trim(strip_tags(ucwords($_POST['applicant_parentname']))));
    $applicant_parentaddress = trim(strip_tags(ucwords($_POST['applicant_parentaddress'])));
    $applicant_parentphone = preg_replace('/[«»""!?,!@£$%<>^&*{}#;:(-)_]+/','',trim(strip_tags($_POST['applicant_parentphone'])));
    $applicant_parentemail = trim(strip_tags(ucwords($_POST['applicant_parentemail'])));

    $applicant_medical = preg_replace('/[«»""!?,!@£$%<>^&*{}#;:(-)_]+/','',trim(strip_tags($_POST['applicant_medical'])));
    $applicant_medicalaid = trim(strip_tags(ucwords($_POST['applicant_medicalaid'])));
    $applicant_allergy = preg_replace('/[«»""!?,!@£$%<>^&*{}#;:(-)_]+/','',trim(strip_tags($_POST['applicant_allergy'])));
    $applicant_allergies = trim(strip_tags(ucwords($_POST['applicant_allergies'])));

    extract($_REQUEST);

    if($_SERVER['REQUEST_METHOD'] == 'post') {
        //Validate the form key
        if (!isset($_POST['form_key']) || !$formKey->validate()) {
            //Form key is invalid, show an error
            $error[] = 'An unauthorized operation was carried out! Please exit the page!';
        }
    }
    else
    {
        if($ApplicationManager->submitApplication($card_pin,$card_serial,$admission_status,$form_year,$application_id,$school_id,$exam_number,$applicant_surname,$applicant_firstname,$applicant_othernames,$applicant_dob,$applicant_pob,$applicant_phone,$applicant_email,$applicant_nationality,$applicant_state,$applicant_lga,$applicant_address,$applicant_primaryschool,$applicant_class,$applicant_lastschool,$applicant_profession,$applicant_parentname,$applicant_parentaddress,$applicant_parentphone,$applicant_parentemail,$applicant_medical,$applicant_medicalaid,$applicant_allergy,$applicant_allergies))
        {
            $ApplicationManager->redirect('application-form.php?registration_success&application_id='.$application_id.'&school_id='.$school_id);
            echo "<script>window.location.href = 'application-form.php?registration_success&application_id=$application_id&school_id=$school_id';</script>";
        }
    }
}
if(isset($_REQUEST['reprintForm']) && (isset($_REQUEST['reprintForm'])))
{
    $application_id = trim(strip_tags($_POST['application_id']));
    $school_id = trim(strip_tags($_POST['school_id']));

    extract($_REQUEST);

    $sql = "SELECT * FROM applications WHERE application_id=:application_id AND school_id=:school_id";
    $q = $ApplicationManager->runQuery($sql);
    $q->execute(array(':application_id' => $application_id, ':school_id' => $school_id));
    $row = $q->fetch(PDO::FETCH_ASSOC);

    if(empty($row))
    {
        $error[] = "Invalid or Incorrect Examination Number <strong>$application_id</strong>. Please Check And Try Again!";
    }
    else
    {
        if($_SERVER['REQUEST_METHOD'] == 'post') {
            //Validate the form key
            if(!isset($_POST['form_key']) || !$formKey->validate()) {
                //Form key is invalid, show an error
                $error[] = 'An unauthorized operation was carried out! Please exit the page!';
            }
        }
        else
        {
            $ApplicationManager->redirect('applied-form.php?application_id='.$application_id.'&school_id='.$school_id);
        }
    }
}

include "views/header.php";
?>
    <!--about-->
    <div id="about" class="about">
        <div class="container">
            <div class="title">
                <h1>Application Form</h1>
            </div>
            <hr>

            <?php
            if(isset($_REQUEST['registration_success']) && (isset($_REQUEST['registration_success'])))
            {
                ?>
                <div class="alert alert-success">
                    <h2><i class="fa fa-check"></i> Your Application Form Has Been Submitted Successfully</h2>
                    <hr>
                    <a href="applied-form.php?application_id=<?php echo $_REQUEST['application_id'].'&school_id='.$_REQUEST['school_id']; ?>" class="btn btn-success btn-lg"><i class="fa fa-print"></i> Click To Preview And Print Your Application Form</a>
                </div>
                <?php
            }
            else
            {
                if(isset($error))
                {
                    foreach($error as $error)
                    {
                        ?>
                        <div class="alert alert-danger">
                            <p><i class="fa fa-warning"></i> <?php echo $error; ?></p>
                        </div>
                        <?php
                    }
                }
                else
                {
                    ?>
                    <div class="alert alert-success">
                        <h4><i class="fa fa-info-circle"></i> Do You Want To Reprint Your Application Form? Enter Your <b>Application ID</b> below to print.</h4>
                    </div>
                    <?php
                }
                ?>

                <form method="post">
                    <?php $formKey->outputKey(); ?>

                    <input type="hidden" name="school_id" value="<?php echo $school_id; ?>" readonly required>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Application Form Number</label>
                                <div class="input-group input-group-lg">
                                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                    <input type="text" class="form-control" placeholder="Form Number" name="application_id" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label>&nbsp;</label>
                            <br>
                            <button type="submit" class="btn btn-success btn-lg" name="reprintForm"><i class="fa fa-print"></i> Retrieve And Print Form</button>
                        </div>
                    </div>

                </form>
                <hr>

                <legend><h2><i class="fa fa-file-text-o"></i> Fill The Form Below To Continue</h2></legend>
                <div class="alert alert-info">
                    <h4><i class="fa fa-info-circle"></i> Fill The Form Below, Providing The Required Information.</h4>
                    <p><b>Note:</b> Ensure your details are correctly filled. You will no longer be able to edit your application after submission</p>
                </div>

                <form method="post">

                    <?php $formKey->outputKey(); ?>

                    <input type="hidden" name="school_id" value="<?php echo $school_id; ?>" readonly required>



                    <fieldset>
                        <legend><i class="fa fa-check-circle"></i> Scratch Card Information</legend>
                        <?php
                        include_once 'admin/includes/ApplicationManager.php';

                        if (isset($_REQUEST['submitApplicationForm']) && isset($_REQUEST['card_pin']) && (isset($_REQUEST['card_serial'])))
                        {
                            $card_pin = trim(strip_tags($_POST['card_pin']));
                            $card_serial = trim(strip_tags($_POST['card_serial']));
                            $school_id = trim(strip_tags($_POST['school_id']));


                            extract($_REQUEST);

                            $sql = "SELECT card_pin,card_serial FROM applications WHERE card_pin=:card_pin AND card_serial=:card_serial AND school_id=:school_id";
                            $q = $ApplicationManager->runQuery($sql);
                            $q->execute(array(':card_pin' => $card_pin, ':card_serial' => $card_serial , ':school_id' => $school_id));
                            $row = $q->fetch(PDO::FETCH_ASSOC);

                            if($row == 1)

                            {
                                echo "<script>
					alert('This Card Is Not Available Or Has Already Been Used By Another User!');
				                    </script>";

                            }


                            if($_SERVER['REQUEST_METHOD'] == 'post') {
                                //Validate the form key
                                if (!isset($_POST['form_key']) || !$formKey->validate()) {
                                    //Form key is invalid, show an error
                                    $error[] = 'An unauthorized operation was carried out! Please exit the page!';
                                }
                            }
                            else
                            {
                                if($ScratchCardController->usedCard($id,$school_id,$card_pin,$card_serial,$used,$card_user,$date_used))
                                {
                                    echo "<script>alert('ok')</script>";
                                }
                            }

                        }


                        include_once 'admin/includes/ScratchCardController.php';

                        if (isset($_REQUEST['submitApplicationForm']) && isset($_REQUEST['card_pin']) && (isset($_REQUEST['card_serial'])))
                        {
                            $card_pin = trim(strip_tags($_POST['card_pin']));
                            $card_serial = trim(strip_tags($_POST['card_serial']));
                            $school_id = trim(strip_tags($_POST['school_id']));
                            $used = 1;
                            $card_user = $application_id;
                            $date_used = date("l jS \of F Y ");


                            extract($_REQUEST);

                            $sql = "SELECT * FROM scratch_card WHERE card_pin=:card_pin AND card_serial=:card_serial AND school_id=:school_id";
                            $q = $ApplicationManager->runQuery($sql);
                            $q->execute(array(':card_pin' => $card_pin, ':card_serial' => $card_serial , ':school_id' => $school_id));
                            $row = $q->fetch(PDO::FETCH_ASSOC);

                            if(empty($row))

                            {
                                echo "<script>
					alert('Incorrect Card Details. Please Check And Try Again!');
				                    </script>";

                            }


                            if($_SERVER['REQUEST_METHOD'] == 'post') {
                                //Validate the form key
                                if (!isset($_POST['form_key']) || !$formKey->validate()) {
                                    //Form key is invalid, show an error
                                    $error[] = 'An unauthorized operation was carried out! Please exit the page!';
                                }
                            }
                            else
                            {
                                if($ScratchCardController->usedCard($id,$school_id,$card_pin,$card_serial,$used,$card_user,$date_used))
                                {
                                    echo "<script>alert('ok')</script>";
                                }
                            }

                        }

                        ?>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Scratch Card Pin</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
                                        <input type="text" class="form-control" placeholder="Card Pin" name="card_pin" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Scratch Card Serial</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
                                        <input type="text" class="form-control" placeholder="Card Serial" name="card_serial" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6" hidden="hidden">
                                <div class="form-group">
                                    <label>School ID</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
                                        <input type="text" class="form-control" placeholder="School ID" name="school_id" value="<?php echo $school_id ?>"required>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </fieldset>

                    <fieldset>
                        <legend><i class="fa fa-user"></i> Basic Information</legend>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Surname</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <input type="text" class="form-control" placeholder="Surname" name="applicant_surname" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>First Name</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <input type="text" class="form-control" placeholder="First Name" name="applicant_firstname" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Other Names</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <input type="text" class="form-control" placeholder="Other Names" name="applicant_othernames" required>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        <input type="date" class="form-control" placeholder="Date of Birth" name="applicant_dob" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <label>Place of Birth</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-hospital-o"></i></span>
                                        <input type="text" class="form-control" placeholder="Place of Birth" name="applicant_pob" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend><i class="fa fa-phone"></i> Contact Information</legend>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Phone Number</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                        <input type="text" class="form-control" placeholder="Phone Number" name="applicant_phone">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                        <input type="email" class="form-control" placeholder="Email Address" name="applicant_email">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Nationality</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                                        <select class="form-control" id="national" name="applicant_nationality" required>
                                            <option value="">Nationality</option>
                                            <option value="Nigerian">Nigeria</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>State of Origin</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                                        <select class="form-control" id="state" name="applicant_state" required>
                                            <option value="">State of Origin</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>L.G.A of Origin</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                                        <select class="form-control" id="local" name="applicant_lga" required>
                                            <option value="">L.G.A of Origin</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Home Address</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-map-signs"></i></span>
                                        <input type="text" class="form-control" placeholder="Home Address" name="applicant_address" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend><i class="fa fa-graduation-cap"></i> Educational Information</legend>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Primary School Attended</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-institution"></i></span>
                                        <input type="text" class="form-control" placeholder="Primary School Attended" name="applicant_primaryschool" required>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Class Applying For</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-tags"></i></span>
                                        <select class="form-control" name="applicant_class" required>
                                            <option value="">Select Class</option>
                                            <option value="Primary 1">Primary 1</option>
                                            <option value="Primary 2">Primary 2</option>
                                            <option value="Primary 3">Primary 3</option>
                                            <option value="Primary 4">Primary 4</option>
                                            <option value="Primary 5">Primary 5</option>
                                            <option value="Primary 6">Primary 6</option>
                                            <option value="JSS 1">JSS 1</option>
                                            <option value="JSS 2">JSS 2</option>
                                            <option value="JSS 3">JSS 3</option>
                                            <option value="SSS 1">SSS 1</option>
                                            <option value="SSS 2">SSS 2</option>
                                            <option value="SSS 3">SSS 3</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <label>School Last Attended</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-institution"></i></span>
                                        <input type="text" class="form-control" placeholder="School Last Attended" name="applicant_lastschool" required>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Proposed Profession After Graduation</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-lightbulb-o"></i></span>
                                        <input type="text" class="form-control" placeholder="Proposed Profession After Graduation" name="applicant_profession" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend><i class="fa fa-user-secret"></i> Parents/Guardian Information</legend>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Parents/Guardian Name</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <input type="text" class="form-control" placeholder="Parents/Guardian Name" name="applicant_parentname" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Parents/Guardian Home Address</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-map-signs"></i></span>
                                        <input type="text" class="form-control" placeholder="Parents/Guardian Home Address" name="applicant_parentaddress" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Parents/Guardian Phone Number</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                        <input type="text" class="form-control" placeholder="Parents/Guardian Phone Number" name="applicant_parentphone" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Parents/Guardian Email Address</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                        <input type="text" class="form-control" placeholder="Parents/Guardian Email Address" name="applicant_parentemail">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend><i class="fa fa-heartbeat"></i> Medical Information</legend>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Do You Have Any Medical Condition or Special Need?</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-stethoscope"></i></span>
                                        <select class="form-control medicalSelect" name="applicant_medical" required>
                                            <option value="">Select Option</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-8 medical">
                                <div class="form-group">
                                    <label>Please specify the condition and specify which hospital or doctor should be contacted if the need arises</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-medkit"></i></span>
                                        <input type="text" class="form-control" placeholder="Medical Condition Aid" name="applicant_medicalaid">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Are You Allergic To Any Medication?</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-stethoscope"></i></span>
                                        <select class="form-control allergySelect" name="applicant_allergy" required>
                                            <option value="">Select Option</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-8 allergy">
                                <div class="form-group">
                                    <label>Please Specify Your Allerg(ies).</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-medkit"></i></span>
                                        <input type="text" class="form-control" placeholder="Please Specify Your Allerg(ies)" name="applicant_allergies">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <hr>

                    <button type="submit" class="btn btn-lg btn-success" name="submitApplicationForm"><i class="fa fa-send"></i> Submit Application Form</button>

                    <hr>
                </form>
                <?php
            }
            ?>

        </div>
    </div>
    <!--//about-->

    <script>
        $(function() {
            //Controls the Medical Condition Form
            $('.medical').hide();
            $('.medicalSelect').change(function(){
                if($('.medicalSelect').val() == 'Yes'){
                    $('.medical').show();
                } else {
                    $('.medical').hide();
                }
            });

            //Controls the Medical Allergy Form
            $('.allergy').hide();
            $('.allergySelect').change(function(){
                if($('.allergySelect').val() == 'Yes'){
                    $('.allergy').show();
                } else {
                    $('.allergy').hide();
                }
            });
        });
    </script>
<?php include "views/footer.php"?>