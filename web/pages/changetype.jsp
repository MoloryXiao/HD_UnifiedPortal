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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            					<div class="col-lg-3">
            						<form role="form" action="updateTeacherTitle" method="post">
										<div class="form-group">
											<label>工号：${teacher.no}</label>
											<input name="teacher_no" value="${teacher.no}" hidden>
										</div>
            							<div class="form-group">
            								<label>姓名：${teacher.name}</label>
            							</div>
                                        <div class="form-group">
                                        	<label>性别：
											<c:if test="${teacher.sex eq 1}">
												男
											</c:if>
											<c:if test="${teacher.sex eq 0}">
												女
											</c:if>
											</label>
                                        </div>
            							<div class="form-group">
            								<label>生源地：${teacher.birthplace}</label>
            							</div>   
                                        <div class="form-group">
                                        	<label>生日：${teacher.birthday}</label>
                                        </div>   
                                        <div class="form-group">
                                        	<label>入职时间：${teacher.admission_time}</label>
                                        </div>   
            							<div class="form-group">
            								<label>所属学院：计算机学院</label>
            							</div>
                                        <div class="form-group">
                                        	<label>工资：${teacher.salary}元/月</label>
                                        </div>
            							<div class="form-group">
            								<label>职称</label>
            								<select class="form-control" name="teacher_title">
            									<option value="正教授">正教授</option>
            									<option value="副教授">副教授</option>
            									<option value="讲师">讲师</option>
            									<option value="实验员">实验员</option>
            									<option value="辅导员">辅导员</option>
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
