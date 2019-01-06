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

    <!-- Morris Charts CSS -->
    <link href="../vendor/morrisjs/morris.css" rel="stylesheet">

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
            		<h1 class="page-header">教职工职称变更</h1>
            	</div>
            	<!-- /.col-lg-12 -->
            </div>
            <div class="row">
            	<div class="col-lg-12">
            		<div class="panel panel-success">
            			<div class="panel-heading">
            				教职工基本信息
            			</div>
            			<div class="panel-body">
            				<div class="row">
            					<div class="col-lg-2">
            						<form role="form" action="setteacher.jsp">
            							<div class="form-group">
            								<label>姓名：傅彦</label>
            							</div>
                                        <div class="form-group">
                                        	<label>性别：男</label>
                                        </div>
            							<div class="form-group">
            								<label>生源地：广东省深圳市</label>
            							</div>   
                                        <div class="form-group">
                                        	<label>生日：1971-01-02</label>
                                        </div>   
                                        <div class="form-group">
                                        	<label>入职时间：2005-02-01</label>
                                        </div>   
            							<div class="form-group">
            								<label>所属学院：计算机学院</label>
            							</div>
                                        <div class="form-group">
                                        	<label>工资：8500元/月</label>
                                        </div>
            							<div class="form-group">
            								<label>职称</label>
            								<select class="form-control">
            									<option>正教授</option>
            									<option>副教授</option>
            									<option>讲师</option>
            									<option>实验员</option>
            									<option>辅导员</option>
            								</select>
            							</div>
            							<button type="submit" class="btn btn-outline btn-success">更新</button>
            						</form>
            					</div>
            					<!-- /.col-lg-6 (nested) -->
            				</div>
            				<!-- /.row (nested) -->
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


    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
</body>

</html>
