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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
    <%@include file="header.jsp"%>
    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
            	<div class="col-lg-12">
            		<h1 class="page-header">生活信息数据</h1>
            	</div>
            	<!-- /.col-lg-12 -->
            </div>
            <div class="row" style="margin-left: 3px;">
                <h4>姓名：${teacher.name}</h4>
                <h4>性别：${teacher.sex}</h4>
                <h4>职称：${teacher.job_title}</h4>
                <h4>教职类型：
					<c:if test="${teacher.job_type eq 1}">
						辅导员
					</c:if>
					<c:if test="${teacher.job_type eq 2}">
						任课老师
					</c:if>
					<c:if test="${teacher.job_type eq 3}">
						行政老师
					</c:if>
					<c:if test="${teacher.job_type eq 4}">
						校领导
					</c:if>
				</h4>
                <h4>工资：${teacher.salary}元/月</h4>
                <h4>入职时间：${teacher.admission_time}</h4>
                <h4>所属学院：计算机学院</h4>
                <h4>在职情况：
					<c:if test="${teacher.job_status eq 0}">
						离职
					</c:if>
					<c:if test="${teacher.job_status eq 1}">
						在职
					</c:if>
				</h4>
            </div>
            <div class="row" style="margin-top: 30px;">
            	<div class="col-lg-3 col-md-6">
            		<div class="panel panel-primary">
            			<div class="panel-heading">
            				<div class="row">
            					<div class="col-xs-3">
            						<i class="fa fa-credit-card fa-5x"></i>
            					</div>
            					<div class="col-xs-9 text-right">
            						<div class="huge">E卡通</div>
            						<div>UESTC-Yicard</div>
            					</div>
            				</div>
            			</div>
            			<a href="#">
            				<div class="panel-footer">
            					<span class="pull-left">E卡通余额：${livingCost.yicard_balance}元</span>
            					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
            					<div class="clearfix"></div>
            				</div>
            			</a>
            		</div>
            	</div>
            	<div class="col-lg-3 col-md-6 col-lg-offset-1">
            		<div class="panel panel-green">
            			<div class="panel-heading">
            				<div class="row">
            					<div class="col-xs-3">
            						<i class="fa fa-tasks fa-5x"></i>
            					</div>
            					<div class="col-xs-9 text-right">
            						<div class="huge">水费</div>
            						<div>Water Fee</div>
            					</div>
            				</div>
            			</div>
            			<a href="#">
            				<div class="panel-footer">
            					<span class="pull-left">水费余额：${livingCost.water_balance}元</span>
            					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
            					<div class="clearfix"></div>
            				</div>
            			</a>
            		</div>
            	</div>
            </div>
            <div class="row" style="margin-top: 50px;">
            	<div class="col-lg-3 col-md-6" >
            		<div class="panel panel-yellow">
            			<div class="panel-heading">
            				<div class="row">
            					<div class="col-xs-3">
            						<i class="fa fa-link fa-5x"></i>
            					</div>
            					<div class="col-xs-9 text-right">
            						<div class="huge">电费</div>
            						<div>Electric fee</div>
            					</div>
            				</div>
            			</div>
            			<a href="#">
            				<div class="panel-footer">
            					<span class="pull-left">电费余额：${livingCost.electric_balance}元</span>
            					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
            					<div class="clearfix"></div>
            				</div>
            			</a>
            		</div>
            	</div>
            	<div class="col-lg-3 col-md-6 col-lg-offset-1">
            		<div class="panel panel-red">
            			<div class="panel-heading">
            				<div class="row">
            					<div class="col-xs-3">
            						<i class="fa fa-signal fa-5x"></i>
            					</div>
            					<div class="col-xs-9 text-right">
            						<div class="huge">网费</div>
            						<div>Network Fee</div>
            					</div>
            				</div>
            			</div>
            			<a href="#">
            				<div class="panel-footer">
            					<span class="pull-left">网费月租：${livingCost.network_fee}元/100M</span>
            					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
            					<div class="clearfix"></div>
            				</div>
            			</a>
            		</div>
            	</div>
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
