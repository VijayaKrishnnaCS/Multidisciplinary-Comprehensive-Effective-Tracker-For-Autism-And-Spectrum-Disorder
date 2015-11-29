<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="server/include/startbootstrap/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="server/include/startbootstrap/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="server/include/startbootstrap/dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="server/include/startbootstrap/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="server/include/startbootstrap/bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="server/include/startbootstrap/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
<jsp:include page="header.jsp" />

      <jsp:include page="side_menu.jsp" />
            <!-- /.navbar-static-side -->
        </nav>
<form method="post" action="save_case">
     <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Cases</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
       <div class="col-lg-12">
                   <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#caseInfo" aria-controls="caseInfo" role="tab" data-toggle="tab">Case Information</a></li>
    <li role="presentation"><a href="#evaluation" aria-controls="evaluation" role="tab" data-toggle="tab">Evaluation</a></li>
  </ul>
   <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="caseInfo">
                    <div class="panel panel-default" style="border-top:none">
                        <div class="panel-body">
                            <div class="table-responsive">
                            <h3>Personal Information</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>
                                            <td><label>First Name</label></td>
                                            <td><input type="text" name="patient.firstName" class="form-control"  value="<s:property value="caseItem.patient.firstName"/>"/></td>
                                        <td><label>Last Name</label></td>
                                            <td><input type="text" name="patient.lasttName" class="form-control"  value="<s:property value="caseItem.patient.lastName"/>"/>
                                            <input type="hidden" name="callRequest.id" value="<s:property value="callRequest.id"/>"/>
                                            </td>
                                        </tr>
                          				<tr>
                                            <td><label>Age</label></td>
                                            <td><input type="text" name="patient.age" class="form-control"  value="<s:property value="caseItem.patient.age"/>"/></td>
                                        <td><label>Date of Birth</label></td>
                                            <td><input type="text" name="patient.dob" class="form-control"  value="<s:property value="caseItem.patient.dob"/>"/></td>
                                        </tr>
                                        <tr>
                                            <td><label>Gender</label></td>
                                            <td><input type="text" name="patient.gender" class="form-control"  value="<s:property value="caseItem.patient.gender"/>"/></td>
                                        <td><label>Height</label></td>
                                            <td><input type="text" name="patient.heightInInches" class="form-control"  value="<s:property value="caseItem.patient.heightInInches"/>"/></td>
                                        </tr>
                                        <tr>                                         
                                        <td><label>Weight</label></td>
                                            <td><input type="text" name="patient.weightInKgs" class="form-control"  value="<s:property value="caseItem.patient.weightInKgs"/>"/></td>
                                        <td colspan="2"></td>
                                        </tr>
                                        <tr>                                         
                                        <td><label>Address</label></td>
                                            <td colspan="3"><textarea name="patient.address" class="form-control"><s:property value="caseItem.patient.address"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3>Fathers Information</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>
                                            <td><label>First Name</label></td>
                                            <td><input type="text" name="patientRels[0].firstName" class="form-control"  value="<s:property value="caseItem.patient.patientRels[0].firstName"/>"/></td>
                                        <td><label>Last Name</label></td>
                                            <td><input type="text" name="patientRels[0].lasttName" class="form-control"  value="<s:property value="caseItem.patient.patientRels[0].lasttName"/>"/>
                                            <input type="text" name="patientRels[0].relation" class="form-control" style="display:none"  value="Father"/>
                                            </td>
                                        </tr>
                          				<tr>
                                            <td><label>Phone</label></td>
                                            <td><input type="text" name="patientRels[0].mobile" class="form-control"  value="<s:property value="caseItem.patient.patientRels[0].mobile"/>"/></td>
                                        <td><label>Email</label></td>
                                            <td><input type="text" name="patientRels[0].email" class="form-control"  value="<s:property value="caseItem.patient.patientRels[0].email"/>"/></td>
                                        </tr>
                                        <tr>                                         
                                        <td><label>Address</label></td>
                                            <td colspan="3"><textarea name="patientRels[0].address" class="form-control"><s:property value="caseItem.patient.patientRels[0].address"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                 <h3>Mothers Information</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>
                                            <td><label>First Name</label></td>
                                            <td><input type="text" name="patientRels[1].firstName" class="form-control"  value="<s:property value="caseItem.patient.patientRels[1].firstName"/>"/></td>
                                        <td><label>Last Name</label></td>
                                            <td><input type="text" name="patientRels[1].lasttName" class="form-control"  value="<s:property value="caseItem.patient.patientRels[1].lasttName"/>"/>
                                            <input type="text" name="patientRels[1].relation" class="form-control" style="display:none"  value="Mother"/>
                                            </td>
                                        </tr>
                          				<tr>
                                            <td><label>Phone</label></td>
                                            <td><input type="text" name="patientRels[1].mobile" class="form-control"  value="<s:property value="caseItem.patient.patientRels[1].mobile	"/>"/></td>
                                        <td><label>Email</label></td>
                                            <td><input type="text" name="patientRels[1].email" class="form-control"  value="<s:property value="caseItem.patient.patientRels[1].email"/>"/></td>
                                        </tr>
                                        <tr>                                         
                                        <td><label>Address</label></td>
                                            <td colspan="3"><textarea name="patientRels[1].address" class="form-control"><s:property value="caseItem.patient.patientRels[1].address"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3>Family History</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>                                         
                                            <td><textarea name="familyHistory" class="form-control"><s:property value="familyHistory"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3>Child Birth History</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>
                                            <td><label>Place of birth</label></td>
                                            <td><input type="text" name="pob" class="form-control"  value="<s:property value="pob"/>"/></td>
                                        <td><label>Delivery Type</label></td>
                                            <td><input type="text" name="delType" class="form-control"  value="<s:property value="delType"/>"/>                                         
                                            </td>
                                        </tr>
                          				<tr>
                                            <td><label>Condition at birth</label></td>
                                            <td><input type="text" name="condAtBirth" class="form-control"  value="<s:property value="condAtBirth"/>"/></td>
                                        <td><label>AGPAR Score</label></td>
                                            <td><input type="text" name="agpar" class="form-control"  value="<s:property value="agpar"/>"/></td>
                                        </tr>
                                        <tr>
                                            <td><label>Weight</label></td>
                                            <td><input type="text" name="weight" class="form-control"  value="<s:property value="weight"/>"/></td>
                                        <td><label>Age at delivery</label></td>
                                            <td><input type="text" name="ageAtDelvry" class="form-control"  value="<s:property value="ageAtDelvry"/>"/></td>
                                        </tr>
                                        <tr>                                         
                                        <td><label>Conplications during pregnancy?</label></td>
                                            <td colspan="3"><textarea name="pregCompl" class="form-control"><s:property value="pregCompl"/></textarea></td>
                                        </tr>
                                        <tr>
                                            <td><label>Age at 1st vaccination</label></td>
                                            <td><input type="text" name="ageAt1Vaccin" class="form-control"  value="<s:property value="ageAt1Vaccin"/>"/></td>
                                        <td><label>Vaccination Kind</label></td>
                                            <td><input type="text" name="vaccinKind" class="form-control"  value="<s:property value="vaccinKind"/>"/></td>
                                        </tr>
                                        <tr>
                                            <td><label>Any Vaccination reaction</label></td>
                                            <td><input type="text" name="vaccinReact" class="form-control"  value="<s:property value="vaccinReact"/>"/></td>
                                        <td><label>Breast Fed?</label></td>
                                            <td><input type="text" name="breastFed" class="form-control"  value="<s:property value="breastFed"/>"/></td>
                                        </tr>
                                        <tr>
                                            <td><label>Injuries?</label></td>
                                            <td><input type="text" name="injuries" class="form-control"  value="<s:property value="injuries"/>"/></td>
                                        <td><label>Fever?</label></td>
                                            <td><input type="text" name="fever" class="form-control"  value="<s:property value="fever"/>"/></td>
                                        </tr>
                                        <tr>
                                        <td><label>Infections?</label></td>
                                            <td colspan="3"><textarea name="infections" class="form-control"><s:property value="infections"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3>Childhood Illness</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox" name="colic"   value="Colic"/>&nbsp;<label>Colic</label></td>
                                      	 <td><input type="checkbox" name="allergies"   value="Allergies"/>&nbsp;<label>Allergies</label></td>
                                            <td><input type="checkbox" name="rhFever"  value="Rheumatic fever"/>&nbsp;<label>Rheumatic fever</label></td>
                                            <td><input type="checkbox" name="gmMesles"  value="German measles"/>&nbsp;<label>German measles</label></td>
                                            <td><input type="checkbox" name="eczema"  value="Eczema"/>&nbsp;<label>Eczema</label></td>
                                        </tr>
                          			<tr>
                                            <td><input type="checkbox" name="bronchitis"   value="Bronchitis"/>&nbsp;<label>Bronchitis</label></td>
                                      	 <td><input type="checkbox" name="recCold"   value="Recurrent colds"/>&nbsp;<label>Recurrent colds</label></td>
                                            <td><input type="checkbox" name="bedwetng"  value="Bedwetting"/>&nbsp;<label>Bedwetting</label></td>
                                            <td><input type="checkbox" name="asthma"  value="Asthma"/>&nbsp;<label>Asthma</label></td>
                                            <td><input type="checkbox" name="pneumonia"  value="Pneumonia"/>&nbsp;<label>Pneumonia</label></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="earInf"   value="Ear infections"/>&nbsp;<label>Ear infections</label></td>
                                      	 <td><input type="checkbox" name="tonsill"   value="Tonsillectomy"/>&nbsp;<label>Tonsillectomy</label></td>
                                            <td><input type="checkbox" name="polio"  value="Polio"/>&nbsp;<label>Polio</label></td>
                                            <td><input type="checkbox" name="meningitis"  value="Meningitis"/>&nbsp;<label>Meningitis</label></td>
                                            <td><input type="checkbox" name="thrush"  value="Thrush"/>&nbsp;<label>Thrush</label></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="perDiapRash"   value="Persistent diaper rashes"/>&nbsp;<label>Persistent diaper rashes</label></td>
                                      	 <td><input type="checkbox" name="lernDisb"   value="Learning disability"/>&nbsp;<label>Learning disability</label></td>
                                            <td><input type="checkbox" name="hypActv"  value="Hyperactivity"/>&nbsp;<label>Hyperactivity</label></td>
                                            <td><input type="checkbox" name="srgOrEt"  value="Meningitis"/>&nbsp;<label>Surgery or ear tubes</label></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                        <td><label>Other Comments</label></td>
                                            <td colspan="4"><textarea name="cicomments" class="form-control"><s:property value="cicomments"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3>Antibiotics</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>                                         
                                            <td><textarea name="familyHistory" placeholder="Has your child ever been on frequent or prolonged antibiotic therapy such as Erythromycin, Penicillin,Tetracycline, Sulfa drugs, Flagyl, etc.?" class="form-control"><s:property value="familyHistory"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3>Immunizations - <small>Specify when, if known, and adverse reactions or changes in behavior:</small></h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox" name="smallpox"   value="Smallpox"/>&nbsp;<label>Smallpox</label></td>
                                      	 <td><input type="checkbox" name="tetanus"   value="Tetanus"/>&nbsp;<label>Tetanus</label></td>
                                            <td><input type="checkbox" name="polio"  value="Polio"/>&nbsp;<label>Polio</label></td>
                                            <td><input type="checkbox" name="flu"  value="Flu"/>&nbsp;<label>Flu</label></td>
                                            <td><input type="checkbox" name="mumps"  value="Mumps"/>&nbsp;<label>Mumps</label></td>
                                        </tr>
                          			<tr>
                                            <td><input type="checkbox" name="measles"   value="Measles"/>&nbsp;<label>Measles</label></td>
                                      	 <td><input type="checkbox" name="neumonia"   value="Pneumonia"/>&nbsp;<label>Pneumonia</label></td>
                                            <td><input type="checkbox" name="diphtheria"  value="Diphtheria"/>&nbsp;<label>Diphtheria</label></td>
                                            <td><input type="checkbox" name="pertussis"  value="Pertussis"/>&nbsp;<label>Pertussis</label></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                        <td><label>Other Comments</label></td>
                                            <td colspan="4"><textarea name="comments" class="form-control"><s:property value="infections"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3>Seizures</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>                                         
                                            <td><textarea name="seizures" placeholder="Age of onset, type, accompanied by fever, timing re illnesses, injuries, vaccinations." class="form-control"><s:property value="seizures"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3>Prescribed Medication</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>                                         
                                            <td><textarea name="presMed" placeholder="Name of drug, dose and times Present:   Past:" class="form-control"><s:property value="presMed"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    </div>
                      <div role="tabpanel" class="tab-pane" id="evaluation">
                       <div class="panel" style="border-top:none">
                        <div class="panel-body">
                         <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>
                                            <td><label>Diagonised with </label></td>
                                            <td><input type="text" name="caseItem.diagonisedWith" class="form-control"  value="<s:property value="caseItem.diagonisedWith"/>"/></td>
                                        <td colspan="2"></td>
                                        </tr>
                                        </tbody>
                                        </table>
                          <h3>Evaluation</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody id="evalForm">
                                        <tr>                                         
                                            <td><input type="text" name="evaluation[0]" class="form-control"  value="<s:property value="evaluation[0]"/>"/></td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div><a href="#" class="btn btn-sm btn-primary pull-right" onclick="addEval()"><span class="glyphicon glyphicon-plus"></span> Add Evaluation</a></div>
                                <h3>Notes</h3><hr>
                                <table class="table table-bordered table-striped">
                                    <tbody>
                                        <tr>                                         
                                            <td><textarea name="caseItem.resolutionNotes" class="form-control"><s:property value="caseItem.resolutionNotes"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                        </div>
                        </div>
                      </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
<div><input type="submit" class="btn btn-sm btn-primary pull-right" value="Save"/></div><br/>
            </div>
            <!-- /.row -->
        </div>
    </div>
    <!-- /#wrapper -->
</form>
    <!-- jQuery -->
    <script src="server/include/startbootstrap/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="server/include/startbootstrap/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="server/include/startbootstrap/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="server/include/startbootstrap/bower_components/raphael/raphael-min.js"></script>
    <script src="server/include/startbootstrap/bower_components/morrisjs/morris.min.js"></script>
    <script src="server/include/startbootstrap/js/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="server/include/startbootstrap/dist/js/sb-admin-2.js"></script>
<script>
function addEval()
{
var trCount=$("tbody#evalForm").find("tr").length;
$("tbody#evalForm").append('<tr><td><input type="text" name="evaluation['+trCount+']" class="form-control" /></td><td><a href="#" class="btn btn-sm btn-primary" onclick="$(this).parent().parent().remove()" ><span class="glyphicon glyphicon-remove-sign"></span> Delete</a></td></tr>');
}
</script>
</body>

</html>
