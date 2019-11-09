<?php
include 'admin/includes/ApplicationManager.php';
if(empty($_REQUEST['application_id']))
{
    header('Location: application-form.php');
}
extract($ApplicationManager->getRegisteredForm($_REQUEST['school_id'],$_REQUEST['application_id']));
extract($ApplicationManager->getAdmissionInfo($_REQUEST['school_id']));

include "views/header.php" ;
?>
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

        <h1 style="color: orangered;">Application Form For <?php echo $form_year; ?> Academic Year</h1>
        <hr>
    </section>

    <section style="margin-bottom: 50px;">
        <form>

            <dl>

                <div class="row">
                    <div class="col-sm-4 col-xs-3 margin-bottom">
                        <h4>
                            <dt>Application Year:</dt>
                            <dd><?php echo $form_year; ?></dd>
                        </h4>
                    </div>
                    <div class="col-sm-4 col-xs-4">
                        <h4>
                            <dt>Examination Number:</dt>
                            <dd><?php echo $exam_number; ?></dd>
                        </h4>
                    </div>
                    <div class="col-sm-4 col-xs-5">
                        <h4>
                            <dt>Form Number:</dt>
                            <dd><?php echo $application_id; ?></dd>
                        </h4>
                    </div>
                </div>
                <hr>

                <fieldset>
                    <legend><i class="fa fa-user"></i> Basic Information</legend>
                    <div class="row">
                        <div class="col-sm-4 margin-bottom">
                            <h4>
                                <dt>Applicant's Name:</dt>
                                <dd><?php echo $applicant_surname.', '.$applicant_firstname.' '.$applicant_othernames; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-4 col-xs-6">
                            <h4>
                                <dt>Applicant's Phone:</dt>
                                <dd><?php echo $applicant_phone; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-4 col-xs-6">
                            <h4>
                                <dt>Applicant's Email:</dt>
                                <dd><?php echo $applicant_email; ?></dd>
                            </h4>
                        </div>
                    </div>
                    <hr>

                    <div class="row">
                        <div class="col-sm-4 col-xs-6 margin-bottom">
                            <h4>
                                <dt>Applicant's Date Of Birth:</dt>
                                <dd><?php echo date('F jS Y', strtotime($applicant_dob)); ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-4 col-xs-6">
                            <h4>
                                <dt>Applicant's Place Of Birth:</dt>
                                <dd><?php echo $applicant_pob; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <h4>
                                <dt>Applicant's Home Address:</dt>
                                <dd><?php echo $applicant_address; ?></dd>
                            </h4>
                        </div>
                    </div>
                    <hr>

                    <div class="row">
                        <div class="col-sm-4 col-xs-4 margin-bottom">
                            <h4>
                                <dt>Applicant Nationality:</dt>
                                <dd><?php echo $applicant_nationality; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-4 col-xs-4">
                            <h4>
                                <dt>State of Origin:</dt>
                                <dd><?php echo $applicant_state; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-4 col-xs-4">
                            <h4>
                                <dt>Applicant L.G.A:</dt>
                                <dd><?php echo $applicant_lga; ?></dd>
                            </h4>
                        </div>
                    </div>
                    <hr>
                </fieldset>

                <fieldset>
                    <legend><i class="fa fa-graduation-cap"></i> Educational Information</legend>
                    <div class="row">
                        <div class="col-sm-4 col-xs-5 margin-bottom">
                            <h4>
                                <dt>Future Career:</dt>
                                <dd><?php echo $applicant_profession; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-8 col-xs-7">
                            <h4>
                                <dt>Primary School Attended:</dt>
                                <dd><?php echo $applicant_primaryschool; ?></dd>
                            </h4>
                        </div>
                    </div>
                    <hr>

                    <div class="row">
                        <div class="col-sm-4 col-xs-3 margin-bottom">
                            <h4>
                                <dt>Class Applying:</dt>
                                <dd><?php echo $applicant_class; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-8 col-xs-9">
                            <h4>
                                <dt>Last School Attended:</dt>
                                <dd><?php echo $applicant_lastschool; ?></dd>
                            </h4>
                        </div>
                    </div>
                    <hr>
                </fieldset>

                <fieldset>
                    <legend><i class="fa fa-user-secret"></i> Parents/Guardian Information</legend>
                    <div class="row">
                        <div class="col-sm-4 margin-bottom">
                            <h4>
                                <dt>Applicant's Parents/Guardian Name:</dt>
                                <dd><?php echo $applicant_parentname; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-8">
                            <h4>
                                <dt>Applicant's Parents/Guardian Home Address:</dt>
                                <dd><?php echo $applicant_parentaddress; ?></dd>
                            </h4>
                        </div>
                    </div>
                    <hr>

                    <div class="row">
                        <div class="col-sm-4 col-xs-6">
                            <h4>
                                <dt>Applicant's Parents/Guardian Phone:</dt>
                                <dd><?php echo $applicant_parentphone; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-4 col-xs-6">
                            <h4>
                                <dt>Applicant's Parents/Guardian Email:</dt>
                                <dd><?php echo $applicant_parentemail; ?></dd>
                            </h4>
                        </div>
                    </div>
                    <hr>
                </fieldset>

                <fieldset>
                    <legend><i class="fa fa-heartbeat"></i> Medical Information</legend>
                    <div class="row">
                        <div class="col-sm-4 col-xs-4">
                            <h4>
                                <dt>Medical Condition:</dt>
                                <dd><?php echo $applicant_medical; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-8 col-xs-8">
                            <h4>
                                <dt>Medical Aid:</dt>
                                <dd><?php echo $applicant_medicalaid; ?></dd>
                            </h4>
                        </div>
                    </div>
                    <br>

                    <div class="row">
                        <div class="col-sm-4 col-xs-4">
                            <h4>
                                <dt>Any Allergies:</dt>
                                <dd><?php echo $applicant_allergy; ?></dd>
                            </h4>
                        </div>
                        <div class="col-sm-8 col-xs-8">
                            <h4>
                                <dt>Allerg(ies):</dt>
                                <dd><?php echo $applicant_allergies; ?></dd>
                            </h4>
                        </div>
                    </div>
                    <hr>
                </fieldset>

            </dl>
        </form>

        <div class="row">
            <div class="col-sm-12">
                <h2 style="color: orangered; border-bottom: 2px solid #a0a0a0;"><i class="fa fa-flag"></i> Important Instructions</h2>
                <div class="well">
                    <?php echo $examination_requirements; ?>
                </div>
            </div>
        </div>
        <hr>

        <div class="btn-group" role="group" aria-label="...">
            <button type="button" class="btn btn-success btn-lg" onclick="window.print();"><i class="fa fa-print"></i> Print Application Form</button>
            <a class="pull-right btn btn-primary btn-lg" href="./"><i class="fa fa-home"></i> Back Home</a>
        </div>
    </section>

</div>


</body>
</html>