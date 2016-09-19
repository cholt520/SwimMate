<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE html>
<html lang="en">

<head>
<!-- <meta charset="utf-8" /> -->
<title>Log in</title>
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
<link href="../assets/pages/css/login-4.min.css" rel="stylesheet"
	type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->

<body class=" login">
	<!-- BEGIN LOGO -->
	<div class="logo">
		<a href="index.action"> <img src="../image/Logo.png" alt=""
			style="width:230px; height:45px;" />
		</a>
	</div>
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<form class="login-form" method="post">
			<h3 class="form-title">Login to your account</h3>
			<div class="alert alert-danger display-hide">
				<button class="close" data-close="alert"></button>
				<span> Enter any username and password. </span>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<div class="input-icon">
					<i class="fa fa-user"></i> <input name="username"
						class="form-control placeholder-no-fix" type="text"
						autocomplete="off" placeholder="Username" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="input-icon">
					<i class="fa fa-lock"></i> <input name="password"
						class="form-control placeholder-no-fix" type="password"
						autocomplete="off" placeholder="Password" />
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<a href="index.action" class="btn default"> Back </a>
				</div>
				<div class="col-md-6">
					<button type="submit" class="btn green pull-right"
						formaction="userLogin.action">Login</button>
				</div>
			</div>
			<br />

			<s:if test="hasActionErrors()">
				<div class="alert alert-danger">
					<s:actionerror />
				</div>
			</s:if>
			<s:elseif test="hasActionMessages()">
				<div class="alert alert-success">
					 <s:actionmessage/>
				</div>
			</s:elseif>

			<div class="create-account">
				<p>
					Don't have an account yet ?&nbsp; <a href="javascript:;"
						id="register-btn"> Create an account </a>
				</p>
			</div>
		</form>
		<!-- END LOGIN FORM -->


		<!-- BEGIN REGISTRATION FORM -->
		<form class="register-form" method="post">
			<h3>Sign Up</h3>
			<%-- <s:if test="hasActionErrors()">
				<div class="alert alert-danger">
					<s:actionerror />
				</div>
			</s:if> --%>
			<p>Enter your personal details below:</p>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">First
					Name</label>
				<div class="input-icon">
					<i class="fa fa-font"></i> <input name="firstname"
						class="form-control placeholder-no-fix" type="text"
						placeholder="First Name" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Last
					Name</label>
				<div class="input-icon">
					<i class="fa fa-font"></i> <input name="lastname"
						class="form-control placeholder-no-fix" type="text"
						placeholder="Last Name" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Email</label>
				<div class="input-icon">
					<i class="fa fa-envelope"></i> <input name="email"
						class="form-control placeholder-no-fix" type="text"
						placeholder="Email" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Phone
					Number</label>
				<div class="input-icon">
					<i class="fa fa-phone"></i> <input name="phone"
						class="form-control placeholder-no-fix" type="text"
						placeholder="Phone Number" />
				</div>
			</div>

			<p>Enter your account details below:</p>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<div class="input-icon">
					<i class="fa fa-user"></i> <input name="username"
						class="form-control placeholder-no-fix" type="text"
						autocomplete="off" placeholder="Username" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="input-icon">
					<i class="fa fa-lock"></i> <input name="password"
						class="form-control placeholder-no-fix" type="password"
						autocomplete="off" id="register_password" placeholder="Password" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Re-type
					Your Password</label>
				<div class="controls">
					<div class="input-icon">
						<i class="fa fa-check"></i> <input
							class="form-control placeholder-no-fix" type="password"
							autocomplete="off" placeholder="Re-type Your Password"
							name="rpassword" />
					</div>
				</div>
			</div>

			<div class="form-group">
				<a href="index.action" class="btn red"> Back </a>
				<button type="submit" id="register-submit-btn"
					class="btn green pull-right" formaction="userSignup.action"
					formmethod="post">Sign Up</button>
				<!-- <a class="btn blue btn-outline sbold uppercase" id="demo_1"> View Demo </a> -->
			</div>
		</form>
		<!-- END REGISTRATION FORM -->
	</div>
	<!-- END LOGIN -->
	<!-- BEGIN COPYRIGHT -->
	<div class="copyright">2016 &copy; C.A.R.T Solutions Template.</div>
	<!-- END COPYRIGHT -->


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
	<script
		src="../assets/global/plugins/backstretch/jquery.backstretch.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/bootbox/bootbox.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="../assets/global/scripts/app.min.js"
		type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/pages/scripts/login-4.min.js"
		type="text/javascript"></script>
	<script src="../assets/pages/scripts/ui-bootbox.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>