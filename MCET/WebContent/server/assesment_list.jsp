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
                 <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                            <form method="post" action="save_treatment">
                                       <table class="table table-bordered table-striped">
                                    <thead>
                                    <tbody>
                                        <tr>
                                            <td><label>Duration in days</label></td>
                                            <td><input type="text" name="treatmentPlan.durationInDays" class="form-control"  value="<s:property value="treatmentPlan.durationInDays"/>"/>
                                            <input type="hidden" name="treatmentPlan.id" <s:property value="treatmentPlan.id"/>"/>
                                             <input type="hidden" name="treatmentPlan.evaluationCriteria.id" value="<s:property value="evalCritO.id"/>"/>
                                            </td>
                                            <td><label>Status</label></td>
                                            <td><input type="text" name="treatmentPlan.status" class="form-control"  value="<s:property value="treatmentPlan.status"/>"/>
                                            </td>
                                             <td><label>Department</label></td>
                                            <td><input type="text" name="treatmentPlan.department" class="form-control"  value="<s:property value="treatmentPlan.department"/>"/>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div><input type="submit" class="btn btn-sm btn-primary pull-right" value="Save"/></div><br/>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                       <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>
                                                Duration in days
                                            </th>
                                            <th>
                                                Status
                                            </th>
                                            <th>
                                                Department
                                            </th>
                                             <th>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="planList" var="plan">
                                        <tr>
                                            <td><s:property value="#plan.durationInDays"/></td>
                                            <td><s:property value="#plan.status"/></td>
                                            <td><s:property value="#plan.department"/></td>                                        
                                            <td><a href="treatment_progress?treatmentPlan.id=<s:property value="#plan.id"/>">Progress Report</a></td>
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
            <!-- /.row -->
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
