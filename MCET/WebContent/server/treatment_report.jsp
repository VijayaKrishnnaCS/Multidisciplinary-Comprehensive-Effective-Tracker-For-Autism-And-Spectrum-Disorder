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

     <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Assessment Plan</h1>
                </div>
                <!-- /.col-lg-12 -->
                
                     <div class="col-lg-12">
                    <h3 class="page-header">Assessments Track</h3>
                </div>
                 <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                            <form method="post" action="save_cont_assess">
                                       <table class="table table-bordered table-striped">
                                    <thead>
                                    <tbody>
                                        <tr>
                                            <td><label>Notes</label></td>
                                            <td><input type="text" name="contAssess.caseNotes" class="form-control"  value="<s:property value="contAssess.caseNotes"/>"/>
                                            <input type="hidden" name="contAssess.id" <s:property value="contAssess.id"/>"/>
                                             <input type="hidden" name="contAssess.treatmentPlan.id" value="<s:property value="treatmentPlan.id"/>"/>
                                            </td>
                                            <td><label>Rating</label></td>
                                            <td><input type="text" name="contAssess.rating" class="form-control"  value="<s:property value="contAssess.rating"/>"/>
                                            </td>
                                             <td><label>Consulted On</label></td>
                                            <td><input type="text" name="contAssess.creationDatetime" class="form-control"  value="<s:property value="contAssess.creationDatetime"/>"/>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div><input type="submit" class="btn btn-sm btn-primary pull-right" value="Save"/></div><br/><br/>
                                </form>

                                
                <!-- /.col-lg-12 -->
                 <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                       <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                             <th>
                                                Notes
                                            </th>
                                            <th>
                                                Rating
                                            </th>
                                            <th>
                                                Consulted On
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="contAssessList" var="contAssess">
                                        <tr>
                                            <td><s:property value="#contAssess.caseNotes"/></td>
                                            <td><s:property value="#contAssess.rating"/></td>
                                            <td><s:property value="#contAssess.creationDatetime"/></td>                                        
                                        </tr>
                                        </s:iterator>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
             <div class="col-lg-12">
                    <h3 class="page-header">Assessment Plan Feedback</h3>
                </div>
                                     <form method="post" action="save_trt_assess">
                                       <table class="table table-bordered table-striped">
                                    <thead>
                                    <tbody>
                                        <tr>
                                            <td><label>Notes</label></td>
                                            <td><input type="text" name="trtmntAssess.assessedFrom" class="form-control"  value="<s:property value="trtmntAssess.assessedFrom"/>"/>
                                            <input type="hidden" name="trtmntAssess.id" <s:property value="trtmntAssess.id"/>"/>
                                             <input type="hidden" name="trtmntAssess.treatmentPlan.id" value="<s:property value="treatmentPlan.id"/>"/>
                                            </td>
                                            <td><label>Rating</label></td>
                                            <td><input type="text" name="trtmntAssess.rating" class="form-control"  value="<s:property value="trtmntAssess.rating"/>"/>
                                        </tr>
                                        <tr>
                                        <td colspan="4">Notes</td>
                                        </tr>
                                        <tr>
                                        <td colspan="4"><textarea name="trtmntAssess.assessmentNotes" class="form-control"><s:property value="trtmntAssess.assessmentNotes"/></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div><input type="submit" class="btn btn-sm btn-primary pull-right" value="Save"/></div><br/><br/>
                                </form>
                                                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                       <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>
                                                Feedbacl from
                                            </th>
                                            <th>
                                                Rating
                                            </th>
                                            <th>
                                                Notess
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="trtmntAssessList" var="trtAssessList">
                                        <tr>
                                            <td><s:property value="#trtAssessList.assessedFrom"/></td>
                                            <td><s:property value="#trtAssessList.rating"/></td>
                                            <td><s:property value="#trtAssessList.assessmentNotes"/></td>                                        
                                        </tr>
                                        </s:iterator>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.row -->

                                                
               
            </div>
        </div>

    </div>
    <!-- /#wrapper -->

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

</body>

</html>
