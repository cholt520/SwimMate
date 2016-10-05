<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html lang="en">
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>SwimMate</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link href="../assets/global/plugins/select2/css/select2.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/select2/css/select2-bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="../assets/global/css/components-rounded.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
<link href="../assets/global/css/plugins.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="../assets/pages/css/login-2.min.css" rel="stylesheet"
	type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
<style type="text/css">
.errors {
	background-color: #FFCCCC;
	border: 1px solid #CC0000;
	width: 400px;
	margin-bottom: 8px;
}

.errors li {
	list-style: none;
}
</style>


</head>
<!-- END HEAD -->

<body class=" login">
	<!-- BEGIN LOGO -->

	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<form class="login-form" method="post">
			<div class="form-title">
				<span class="form-title">Welcome to SwimMate</span> <span
					class="form-subtitle">Please login.</span>
			</div>
			<div class="alert alert-danger display-hide">
				<button class="close" data-close="alert"></button>
				<span> Enter any username and password. </span>
			</div>

			<s:if test="hasActionErrors()">
				<div class="errors">
					<s:actionerror />
				</div>
			</s:if>
			
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<input class="form-control form-control-solid placeholder-no-fix"
					type="text" autocomplete="off" placeholder="Username"
					name="username" />
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<input class="form-control form-control-solid placeholder-no-fix"
					type="password" autocomplete="off" placeholder="Password"
					name="password" />
			</div>
			<div class="form-actions">
				<button type="submit" class="btn red btn-block uppercase"
					formaction="validation.action?loginUserID=-1">Login</button>
			</div>
			<div class="form-actions"></div>
		</form>
		<!-- END LOGIN FORM -->

	</div>
	<!-- END LOGIN -->

	<!-- BEGIN CORE PLUGINS -->
	<script src="../assets/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/js.cookie.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script
		src="../assets/global/plugins/jquery-validation/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/jquery-validation/js/additional-methods.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/select2/js/select2.full.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="../assets/global/scripts/app.min.js"
		type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/pages/scripts/login.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<!-- END THEME LAYOUT SCRIPTS -->
</body>
</html>