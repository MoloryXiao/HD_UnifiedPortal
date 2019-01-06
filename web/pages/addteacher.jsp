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
            		<h1 class="page-header">教职工添加</h1>
            	</div>
            	<!-- /.col-lg-12 -->
            </div>
            <div class="row">
            	<div class="col-lg-12">
            		<div class="panel panel-default">
            			<div class="panel-heading">
            				教职工信息录入
            			</div>
            			<div class="panel-body">
            				<div class="row">
            					<div class="col-lg-5">
            						<form role="form" action="/pages/addteacher" method="post">
            							<div class="form-group">
            								<label>教职工姓名</label>
            								<input class="form-control" name="teacher_name">
            								<!-- <p class="help-block">Example block-level help text here.</p> -->
            							</div>
                                        <div class="form-group">
                                        	<label>性别</label>
                                            <br />
                                        	<label class="radio-inline">
                                        		<input type="radio" name="teacher_sex" value="1" checked>男
                                        	</label>
                                        	<label class="radio-inline">
                                        		<input type="radio" name="teacher_sex" value="0">女
                                        	</label>
                                        </div>
            							<div class="form-group">
            								<label>生源地</label>
            								<input class="form-control" name="teacher_birthplace" placeholder="例:四川省成都市">
            							</div>   
                                        <div class="form-group">
                                        	<label>生日</label>
                                        	<input class="form-control" name="teacher_birthday" placeholder="例:1997-01-06">
                                        </div>   
                                        <div class="form-group">
                                        	<label>入职时间</label>
                                        	<input class="form-control" name="teacher_admissionTime" placeholder="例:2015-09-01">
                                        </div>   
            							<div class="form-group">
            								<label>所属学院</label>
            								<select class="form-control" name="teacher_department">
                                                <option value="-1">选择学院</option>
            									<option value="1">计算机学院</option>
            									<option value="2">外国语学院</option>
            									<option value="3">机械电气学院</option>
            									<option value="4">电子信息学院</option>
            									<option value="5">新闻广播学院</option>
            								</select>
            							</div>
                                        <div class="form-group">
                                        	<label>职称</label>
                                        	<select class="form-control" name="teacher_title">
                                                <option value="-1">选择职称</option>
                                        		<option value="正教授">正教授</option>
                                        		<option value="副教授">副教授</option>
                                        		<option value="讲师">讲师</option>
                                        		<option value="实验员">实验员</option>
                                        		<option value="辅导员">辅导员</option>
                                        	</select>
                                        </div>
										<div class="form-group">
											<label>职工类型</label>
											<select class="form-control" name="teacher_type">
												<option value="-1">选择职工类型</option>
												<option value="1">任课老师</option>
												<option value="2">行政老师</option>
												<option value="3">辅导员</option>
												<option value="4">校领导</option>
											</select>
										</div>
                                        <div class="form-group">
                                        	<label>工资</label>
                                        	<input class="form-control" name="teacher_salary" placeholder="人民币元为单位">
                                        </div>
            							<div class="form-group">
            								<label>技能</label>
            								<textarea class="form-control" name="teacher_skill" rows="3" placeholder="简单描述擅长领域"></textarea>
            							</div>
            							<button type="submit" class="btn btn-success">提交</button>
            							<button type="reset" class="btn btn-info">重置</button>
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
