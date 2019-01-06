<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>统一信息门户</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="../dist/css/sb-icss-2.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
    <%@include file="header.jsp"%>
    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
            	<div class="col-lg-12">
            		<h1 class="page-header">教职工任免</h1>
            	</div>
            	<!-- /.col-lg-12 -->
            </div>
            <div class="row">
            	<div class="col-lg-12">
            		<div class="panel panel-default">
            			<div class="panel-heading">
            				教职工基本信息
            			</div>
            			<!-- /.panel-heading -->
            			<div class="panel-body">
                            <form action="changetype.jsp">
                                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>教职工号</th>
                                            <th>姓名</th>
                                            <th>性别</th>
                                            <th>职称</th>
                                            <th>入职时间</th>
                                            <th>生日</th>
                                            <th>工资</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd">
                                            <td>100185</td>
                                            <td>吴军</td>
                                            <td>男</td>
                                            <td class="center">校长</td>
                                            <td class="center">2005-06-10</td>
                                            <td class="center">1971-01-08</td>
                                            <td class="center">8500元/月</td>
                                            <td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                            <td>100081</td>
                                            <td>李乐民</td>
                                            <td>男</td>
                                            <td class="center">正教授</td>
                                            <td class="center">2015-05-10</td>
                                            <td class="center">1972-01-18</td>
                                            <td class="center">7500元/月</td>
                                            <td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                            <td>11757</td>
                                            <td>周宁</td>
                                            <td>女</td>
                                            <td class="center">正教授</td>
                                            <td class="center">2012-03-10</td>
                                            <td class="center">1969-01-08</td>
                                            <td class="center">7000元/月</td>
                                            <td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                        	<td>113185</td>
                                        	<td>毛玉明</td>
                                        	<td>男</td>
                                        	<td class="center">辅导员</td>
                                        	<td class="center">2018-06-10</td>
                                        	<td class="center">1975-01-08</td>
                                        	<td class="center">5500元/月</td>
                                        	<td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                            <td>10646</td>
                                            <td>朱学勇</td>
                                            <td>男</td>
                                            <td class="center">讲师</td>
                                            <td class="center">2015-06-10</td>
                                            <td class="center">1981-10-08</td>
                                            <td class="center">6500元/月</td>
                                            <td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                            <td>12072</td>
                                            <td>陈慧</td>
                                            <td>女</td>
                                            <td class="center">助教</td>
                                            <td class="center">2015-06-10</td>
                                            <td class="center">1992-09-08</td>
                                            <td class="center">3800元/月</td>
                                            <td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                        	<td>12011</td>
                                        	<td>张晓宁</td>
                                        	<td>女</td>
                                        	<td class="center">助教</td>
                                        	<td class="center">2016-01-10</td>
                                        	<td class="center">1993-09-08</td>
                                        	<td class="center">3800元/月</td>
                                        	<td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                        	<td>12015</td>
                                        	<td>张华国</td>
                                        	<td>男</td>
                                        	<td class="center">副教授</td>
                                        	<td class="center">2015-06-10</td>
                                        	<td class="center">1988-02-08</td>
                                        	<td class="center">7200元/月</td>
                                        	<td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                        	<td>12130</td>
                                        	<td>程文兵</td>
                                        	<td>男</td>
                                        	<td class="center">实验员</td>
                                        	<td class="center">2016-02-10</td>
                                        	<td class="center">1990-09-08</td>
                                        	<td class="center">6200元/月</td>
                                        	<td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                        	<td>12537</td>
                                        	<td>段景山</td>
                                        	<td>男</td>
                                        	<td class="center">正教授</td>
                                        	<td class="center">2015-06-10</td>
                                        	<td class="center">1982-09-08</td>
                                        	<td class="center">8800元/月</td>
                                        	<td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                        <tr class="odd">
                                        	<td>12052</td>
                                        	<td>刘永建</td>
                                        	<td>男</td>
                                        	<td class="center">副校长</td>
                                        	<td class="center">2001-06-10</td>
                                        	<td class="center">1970-05-04</td>
                                        	<td class="center">9800元/月</td>
                                        	<td><button type="submit" class="btn btn-success">修改</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- /.table-responsive -->
                            </form>
            			</div>
            			<!-- /.panel-body -->
            		</div>
            		<!-- /.panel -->
            	</div>
            	<!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
    </div>
    <!-- /#wrapper -->

    <%@include file="footer.jsp"%>

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
    
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
    
</body>

</html>
