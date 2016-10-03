<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html lang="en">
<head>
<!-- <meta charset="utf-8" /> -->
<title>Beach Information</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="dist/themes/fontawesome-stars.css">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="jquery.barrating.js"></script>
<script src="examples/js/examples.js"></script>
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
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
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="../assets/global/css/components-rounded.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
<link href="../assets/global/css/plugins.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="../assets/layouts/layout3/css/layout.min.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/layouts/layout3/css/themes/default.min.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="../assets/layouts/layout3/css/custom.min.css"
	rel="stylesheet" type="text/css" />
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="favicon.ico" />

</head>
<!-- END HEAD -->

<body class="page-container-bg-solid">
	<div class="page-wrapper">
		<div class="page-wrapper-row">
			<div class="page-wrapper-top">
				<!-- BEGIN HEADER -->
				<div class="page-header">
					<!-- BEGIN HEADER TOP -->
					<div class="page-header-top" style="margin-top:0px;">
						<div class="container">
							<!-- BEGIN LOGO -->
							<div class="page-logo">
								<s:if test="%{loginUserID==-1}">
									<a href="index.action?loginUserID=-1"> <img
										src="../image/logo_green.jpg" alt="logo" class="logo-default"
										style="width:230px; height:45px; margin-top:18px;">
									</a>
								</s:if>
								<s:else>
									<a
										href="index.action?loginUserID=<s:property value="loginUserID"/>">
										<img src="../image/logo_green.jpg" alt="logo"
										class="logo-default"
										style="width:230px; height:45px; margin-top:18px;">
									</a>
								</s:else>
							</div>
							<!-- END LOGO -->
							<!-- BEGIN RESPONSIVE MENU TOGGLER -->
							<a href="javascript:;" class="menu-toggler"></a>
							<!-- END RESPONSIVE MENU TOGGLER -->

							<!-- Begin Login and Sign up -->
							<jsp:include page="LoginorSignup.jsp" />
							<!-- End Login and Sign up -->

						</div>
					</div>
					<!-- END HEADER TOP -->
					<!-- BEGIN HEADER MENU -->
					<div class="page-header-menu">
						<div class="container">

							<!-- END HEADER SEARCH BOX -->

							<!-- BEGIN MEGA MENU -->
							<div class="hor-menu">
								<ul class="nav navbar-nav">
									<s:if test="%{loginUserID==-1}">
										<li class=""><a href="index.action?loginUserID=-1">
												Home </a></li>
									</s:if>
									<s:else>
										<li class=""><a
											href="index.action?loginUserID=<s:property value="loginUserID"/>">
												Home </a></li>
									</s:else>
									<s:if test="%{loginUserID==-1}">
										<li class=""><a href="beach.action?loginUserID=-1">
												Find Beach </a></li>
									</s:if>
									<s:else>
										<li class=""><a
											href="beach.action?loginUserID=<s:property value="loginUserID"/>">
												Find Beach </a></li>
									</s:else>
									<s:if test="%{loginUserID==-1}">
										<li class=""><a href="Training.action?loginUserID=-1">Find
												Swimming Centres </a></li>
									</s:if>
									<s:else>
										<li class=""><a
											href="Training.action?loginUserID=<s:property value="loginUserID"/>">Find
												Swimming Centres </a></li>
									</s:else>
									<!-- <li class=""><a href="SharkAlarm.action">Shark alarm </a>
									</li> -->
									<s:if test="%{loginUserID==-1}">
										<li class=""><a href="tips.action?loginUserID=-1 ">
												Tips for Swimmers </a></li>
									</s:if>
									<s:else>
										<li class=""><a
											href="tips.action?loginUserID=<s:property value="loginUserID"/>">
												Tips for Swimmers </a></li>
									</s:else>

									<s:if test="%{loginUserID==-1}">
										<li class=""><a href="reminderDescription.action">
												Plan Your Journey </a></li>
									</s:if>
									<s:else>
										<li class=""><a
											href="reminder.action?loginUserID=<s:property value="loginUserID"/>">
												Plan Your Journey </a></li>
									</s:else>

									<s:if test="%{loginUserID==-1}">
										<li class="active"><a href="reportDescription.action">
												Report Issues </a></li>
									</s:if>
									<s:else>
										<li class="active"><a
											href="report.action?loginUserID=<s:property value="loginUserID"/>">
												Report Issues </a></li>
									</s:else>
								</ul>
							</div>
							<!-- END MEGA MENU -->

						</div>
					</div>
					<!-- END HEADER MENU -->
				</div>
				<!-- END HEADER -->
			</div>
		</div>
		<div class="page-wrapper-row full-height">
			<div class="page-wrapper-middle">
				<!-- BEGIN CONTAINER -->
				<div class="page-container">
					<!-- BEGIN CONTENT -->
					<div class="page-content-wrapper">
						<!-- BEGIN CONTENT BODY -->
						<!-- BEGIN PAGE HEAD-->
						<div class="page-head">
							<div class="container">
								<!-- BEGIN PAGE TITLE -->
								<div class="page-title">
									<h1>Plan Your Journey</h1>
								</div>
								<!-- END PAGE TITLE -->

							</div>
						</div>
						<!-- END PAGE HEAD-->
						<!-- BEGIN PAGE CONTENT BODY -->
						<div class="page-content">
							<div class="container">
								<!-- BEGIN PAGE BREADCRUMBS -->
								<ul class="page-breadcrumb breadcrumb">
									<s:if test="%{loginUserID==-1}">
										<li><a href="index.action?loginUserID=-1"
											class="font-green-sharp">Home</a> <i class="fa fa-circle"></i></li>
									</s:if>
									<s:else>
										<li><a
											href="index.action?loginUserID=<s:property value="loginUserID"/>"
											class="font-green-sharp">Home</a> <i class="fa fa-circle"></i></li>
									</s:else>
									<li><span class="font-blue-oleo">Report Issues</span></li>
								</ul>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="search-page search-content-2">
										<div class="page-content-inner">

											<div class="row">
												<div class="col-md-12">
													<div class="portlet light ">

														<div class="portlet-title">
															<div class="caption">
																<span
																	class="caption-subject font-green-sharp bold uppercase">
																	<i class="fa fa-warning"></i> Report Issues
																</span>
															</div>
														</div>

														<div class="portlet-body">
															<div class="row">
																<div class="col-md-6"
																	style="padding-left:50px; padding-right:50px;">
																	<h2 class="section-heading bold">Report Issues</h2>
																	<br />
																	<p class="lead" style="font-size:140%">
																		We believe in providing quality information and
																		real-time alerts to our users. The report issues
																		feature allows registered users to upload photos of
																		any uncertain conditions on beaches, on the go! We use
																		the information you provide to give real-time updates
																		to other users of our website. <br /> <br /> Get
																		involved by registering with us and help us provide
																		comprehensive and real-time alerts to other swimmers!
																		Please use the instructions below to report problems
																		on the beaches.<br /> <br /> 1.Register as a new
																		user / log in as an existing user<br /> 2.Select the
																		beach you want to report issue about<br /> 3.Select
																		or add a description of your problem <br />4.Add an
																		image<br /> 5.Submit your report!
																	</p>
																</div>
																<div class="col-md-6" style="padding-top:50px;">
																	<div class="row">
																		<div class="col-md-12">
																			<img class="img-responsive" src="../image/issue.jpg"
																				alt="">
																		</div>
																	</div>
																	<br /> <br /> <br />
																	<div class="row">
																		<div class="col-md-12">
																			<a href="jumpToLoginPage.action"
																				class="btn green-sharp btn-outline sbold uppercase">
																				Sign up and Login </a>
																		</div>
																	</div>
																</div>
															</div>
															<br /> <br />
														</div>
													</div>
													<br />
												</div>
											</div>
										</div>
										<!-- END PAGE CONTENT INNER -->
									</div>
								</div>
								<!-- END PAGE CONTENT BODY -->
								<!-- END CONTENT BODY -->
							</div>
							<!-- END CONTENT -->
						</div>
						<!-- END CONTAINER -->
					</div>
				</div>
			</div>
			<div class="page-wrapper-row">
				<div class="page-wrapper-bottom">
					<!-- BEGIN FOOTER -->
					<jsp:include page="Footer.jsp" />
					<!-- END FOOTER -->
				</div>
			</div>
		</div>
		<!-- BEGIN CORE PLUGINS -->
		<script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js"
			type="text/javascript"></script>
		<script src="../assets/global/plugins/js.cookie.min.js"
			type="text/javascript"></script>

		<script
			src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
			type="text/javascript"></script>
		<!-- END CORE PLUGINS -->
		<!-- BEGIN THEME GLOBAL SCRIPTS -->
		<script src="../assets/global/scripts/app.min.js"
			type="text/javascript"></script>
		<!-- END THEME GLOBAL SCRIPTS -->
		<!-- BEGIN THEME LAYOUT SCRIPTS -->
		<script src="../assets/layouts/layout3/scripts/layout.min.js"
			type="text/javascript"></script>
		<script src="../assets/layouts/layout3/scripts/demo.min.js"
			type="text/javascript"></script>
		<script src="../assets/layouts/global/scripts/quick-sidebar.min.js"
			type="text/javascript"></script>
		<!-- END THEME LAYOUT SCRIPTS -->
</body>
</html>

