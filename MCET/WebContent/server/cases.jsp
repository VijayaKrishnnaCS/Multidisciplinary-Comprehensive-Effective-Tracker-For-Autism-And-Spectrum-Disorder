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
                    <h1 class="page-header">Cases</h1>
                </div>
                <!-- /.col-lg-12 -->
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
                                            <th></th>
                                            <th>
                                                Extra small devices
                                                <small>Phones (&lt;768px)</small>
                                            </th>
                                            <th>
                                                Small devices
                                                <small>Tablets (&ge;768px)</small>
                                            </th>
                                            <th>
                                                Medium devices
                                                <small>Desktops (&ge;992px)</small>
                                            </th>
                                            <th>
                                                Large devices
                                                <small>Desktops (&ge;1200px)</small>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>Grid behavior</th>
                                            <td>Horizontal at all times</td>
                                            <td colspan="3">Collapsed to start, horizontal above breakpoints</td>
                                        </tr>
                                        <tr>
                                            <th>Max container width</th>
                                            <td>None (auto)</td>
                                            <td>750px</td>
                                            <td>970px</td>
                                            <td>1170px</td>
                                        </tr>
                                        <tr>
                                            <th>Class prefix</th>
                                            <td>
                                                <code>.col-xs-</code>
                                            </td>
                                            <td>
                                                <code>.col-sm-</code>
                                            </td>
                                            <td>
                                                <code>.col-md-</code>
                                            </td>
                                            <td>
                                                <code>.col-lg-</code>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th># of columns</th>
                                            <td colspan="4">12</td>
                                        </tr>
                                        <tr>
                                            <th>Max column width</th>
                                            <td class="text-muted">Auto</td>
                                            <td>60px</td>
                                            <td>78px</td>
                                            <td>95px</td>
                                        </tr>
                                        <tr>
                                            <th>Gutter width</th>
                                            <td colspan="4">30px (15px on each side of a column)</td>
                                        </tr>
                                        <tr>
                                            <th>Nestable</th>
                                            <td colspan="4">Yes</td>
                                        </tr>
                                        <tr>
                                            <th>Offsets</th>
                                            <td colspan="4">Yes</td>
                                        </tr>
                                        <tr>
                                            <th>Column ordering</th>
                                            <td colspan="4">Yes</td>
                                        </tr>
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
