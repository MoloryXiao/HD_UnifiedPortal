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
            		<h1 class="page-header">校内信息概述</h1>
            	</div>
            	<!-- /.col-lg-12 -->
            </div>
            
        	<div class="row">
                <div class="col-lg-10">
                	<div class="panel panel-default">
                		<div class="panel-heading">
                			<strong>人数统计<strong>
                		</div>
                		<!-- /.panel-heading -->
                		<div class="panel-body">
                			<div class="col-lg-3 alert alert-warning">
                				学校总人数：1165人
                			</div>
                			<div class="col-lg-3 alert alert-success col-lg-offset-1">
                				学生人数：915人
                            </div>
                			<div class="col-lg-3 alert alert-info col-lg-offset-1" >
                                教职工人数：250人
                			</div>
                		</div>
                		<!-- .panel-body -->
                	</div>
                	<!-- /.panel -->
                </div>
            </div>
            
            <div class="row">
            	<div class="col-lg-12">
            		<h1 class="page-header">信息统计图表</h1>
            	</div>
            	<!-- /.col-lg-12 -->
                <div class="col-lg-5">
                	<div class="panel panel-default">
                		<div class="panel-heading">
                			生源地分布
                		</div>
                		<!-- /.panel-heading -->
                		<div class="panel-body">
                			<div class="flot-chart">
                				<div class="flot-chart-content" id="flot-pie-chart"></div>
                			</div>
                		</div>
                		<!-- /.panel-body -->
                	</div>
                	<!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                
                <div class="col-lg-5">
                	<div class="panel panel-default">
                		<div class="panel-heading">
                			就业地分布
                		</div>
                		<!-- /.panel-heading -->
                		<div class="panel-body">
                			<div class="flot-chart">
                				<div class="flot-chart-content" id="flot-pie-chart2"></div>
                			</div>
                		</div>
                		<!-- /.panel-body -->
                	</div>
                	<!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-lg-7">
                	<div class="panel panel-default">
                		<div class="panel-heading">
                			薪资分布
                		</div>
                		<!-- /.panel-heading -->
                		<div class="panel-body">
                			<div id="morris-bar-chart"></div>
                		</div>
                		<!-- /.panel-body -->
                	</div>
                	<!-- /.panel -->
                </div>
                                
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-tasks fa-fw"></i> 薪资区间
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group" id="item-group">
                                <a href="#item-group" class="list-group-item">
                                    <i class="fa fa-upload fa-fw"></i> 4000元以下
                                    <span class="pull-right text-muted small"><em>50人</em>
                                    </span>
                                </a>
                                <a href="#item-group" class="list-group-item">
                                    <i class="fa fa-upload fa-fw"></i> 4000-5000元
                                    <span class="pull-right text-muted small"><em>180人</em>
                                    </span>
                                </a>
                                <a href="#item-group" class="list-group-item">
                                	<i class="fa fa-upload fa-fw"></i> 5000-6000元
                                	<span class="pull-right text-muted small"><em>180人</em>
                                	</span>
                                </a>
                                <a href="#item-group" class="list-group-item">
                                    <i class="fa fa-upload fa-fw"></i> 6000-7000元
                                    <span class="pull-right text-muted small"><em>150人</em>
                                    </span>
                                </a>
                                <a href="#item-group" class="list-group-item">
                                	<i class="fa fa-upload fa-fw"></i> 7000-8000元
                                	<span class="pull-right text-muted small"><em>180人</em>
                                	</span>
                                </a>
                                <a href="#item-group" class="list-group-item">
                                    <i class="fa fa-upload fa-fw"></i> 8000-9000元
                                    <span class="pull-right text-muted small"><em>138人</em>
                                    </span>
                                </a>
                                <a href="#item-group" class="list-group-item">
                                	<i class="fa fa-upload fa-fw"></i> 9000-10000元
                                	<span class="pull-right text-muted small"><em>180人</em>
                                	</span>
                                </a>
                                <a href="#item-group" class="list-group-item">
                                    <i class="fa fa-upload fa-fw"></i> 10000元以上
                                    <span class="pull-right text-muted small"><em>19人</em>
                                    </span>
                                </a>                                
                            </div>
                            <!-- /.list-group -->
                            <a href="#item-group" class="btn btn-default btn-block">查看更多</a>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.col-lg-4 -->
                </div>
            </div>
            
            <div class="row" style="margin-top: 50px;">
                <div class="col-lg-7">
                	<div class="panel panel-default">
                		<div class="panel-heading">
                			师资力量
                		</div>
                		<!-- /.panel-heading -->
                		<div class="panel-body">
                			<div id="morris-donut-chart"></div>
                		</div>
                		<!-- /.panel-body -->
                	</div>
                	<!-- /.panel -->
                </div>
                <div class="col-lg-4">
                	<div class="panel panel-default">
                		<div class="panel-heading">
                			<i class="fa fa-tasks fa-fw"></i> 师资力量
                		</div>
                		<!-- /.panel-heading -->
                		<div class="panel-body">
                			<div class="list-group" id="item-group2">
                				<a href="#item-group2" class="list-group-item">
                					<i class="fa fa-upload fa-fw"></i> 正教授
                					<span class="pull-right text-muted small"><em>30人</em>
                					</span>
                				</a>
                				<a href="#item-group2" class="list-group-item">
                					<i class="fa fa-upload fa-fw"></i> 副教授
                					<span class="pull-right text-muted small"><em>65人</em>
                					</span>
                				</a>
                				<a href="#item-group2" class="list-group-item">
                					<i class="fa fa-upload fa-fw"></i> 讲师
                					<span class="pull-right text-muted small"><em>90人</em>
                					</span>
                				</a>
                				<a href="#item-group2" class="list-group-item">
                					<i class="fa fa-upload fa-fw"></i> 实验员
                					<span class="pull-right text-muted small"><em>50人</em>
                					</span>
                				</a>
                				<a href="#item-group2" class="list-group-item">
                					<i class="fa fa-upload fa-fw"></i> 辅导员
                					<span class="pull-right text-muted small"><em>5人</em>
                					</span>
                				</a>
                				<a href="#item-group2" class="list-group-item">
                					<i class="fa fa-upload fa-fw"></i> 助教
                					<span class="pull-right text-muted small"><em>10人</em>
                					</span>
                				</a>                           
                			</div>
                			<!-- /.list-group -->
                			<a href="#item-group2" class="btn btn-default btn-block">查看更多</a>
                		</div>
                		<!-- /.panel-body -->
                	</div>
                	<!-- /.col-lg-4 -->
            </div>
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

    <!-- Flot Charts JavaScript -->
    <!-- <script src="../vendor/flot/excanvas.min.js"></script> -->
    <script src="../vendor/flot/jquery.flot.js"></script>
    <script src="../vendor/flot/jquery.flot.pie.js"></script>
    <!-- <script src="../vendor/flot/jquery.flot.resize.js"></script> -->
    <script src="../vendor/flot/jquery.flot.time.js"></script>
    <script src="../vendor/flot-tooltip/jquery.flot.tooltip.min.js"></script>
    <script src="../data/flot-data.js"></script>
    
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
</body>

</html>
