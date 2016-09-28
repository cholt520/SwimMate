<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>SwimMate Home Page</title>
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
<link
	href="../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="../assets/global/css/components-rounded.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
<link href="../assets/global/css/plugins.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="../assets/pages/css/profile.min.css" rel="stylesheet"
	type="text/css" />
<!-- END PAGE LEVEL STYLES -->
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
							<!-- BEGIN MEGA MENU -->
							<div class="hor-menu ">
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
										
									</s:if>
									<s:else>
										<li class=""><a href="reminder.action?loginUserID=<s:property value="loginUserID"/>"> Plan Your Journey </a></li>
									</s:else>
									
									<s:if test="%{loginUserID==-1}">
									</s:if>
									<s:else>
										<li class=""><a
											href="report.action?loginUserID=<s:property value="loginUserID"/>">
												Report Issues </a></li>
									</s:else>
								</ul>
							</div>
							<!-- END MEGA MENU -->
						</div>
					</div>
				</div>
			</div>
			<!-- END HEADER MENU -->
			<!-- END HEADER -->
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
									<h1>
										User Profile | Account <small>Edit your account</small>
									</h1>
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
									<li><span>User Profile</span></li>
								</ul>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="row">
										<div class="col-md-12">
											<!-- BEGIN PROFILE SIDEBAR -->
											<div class="profile-sidebar">
												<!-- PORTLET MAIN -->
												<div class="portlet light profile-sidebar-portlet ">
													<!-- SIDEBAR USERPIC -->
													<div class="profile-userpic">
														<img src="../assets/pages/media/profile/profile_user.jpg"
															class="img-responsive" alt="">
													</div>
													<!-- END SIDEBAR USERPIC -->
													<!-- SIDEBAR USER TITLE -->
													<div class="profile-usertitle">
														<div class="profile-usertitle-name">
															<s:property value="currentLoginUser.userName" />
														</div>
													</div>
													<br /> <br />
													<!-- END SIDEBAR USER TITLE -->
												</div>
												<!-- END PORTLET MAIN -->


												<s:if test="hasActionErrors()">
													<div class="alert alert-danger">
														<s:actionerror />
													</div>
												</s:if>
												<s:elseif test="hasActionMessages()">
													<div class="alert alert-success">
														<s:actionmessage />
													</div>
												</s:elseif>

											</div>
											<!-- END BEGIN PROFILE SIDEBAR -->


											<!-- BEGIN PROFILE CONTENT -->
											<div class="profile-content">
												<div class="row">
													<div class="col-md-12">
														<div class="portlet light ">
															<div class="portlet-title tabbable-line">
																<div class="caption caption-md">
																	<i class="icon-globe theme-font hide"></i> <span
																		class="caption-subject font-blue-madison bold uppercase">Profile
																		Account</span>
																</div>
																<ul class="nav nav-tabs">
																	<li class="active"><a href="#tab_1_1"
																		data-toggle="tab">Personal Info</a></li>
																	<!-- <li><a href="#tab_1_2" data-toggle="tab">Change
																			Avatar</a></li> -->
																	<li><a href="#tab_1_3" data-toggle="tab">Change
																			Password</a></li>

																</ul>
															</div>

															<div class="portlet-body">
																<div class="tab-content">
																	<!-- PERSONAL INFO TAB -->
																	<div class="tab-pane active" id="tab_1_1">
																		<form role="form" method="post">
																			<div class="form-group">
																				<label class="control-label">First Name</label> <input
																					name="firstname" type="text"
																					placeholder="<s:property value="currentLoginUser.firstName"/>"
																					class="form-control" />
																			</div>
																			<div class="form-group">
																				<label class="control-label">Last Name</label> <input
																					name="lastname" type="text"
																					placeholder="<s:property value="currentLoginUser.lastName"/>"
																					class="form-control" />
																			</div>
																			<div class="form-group">
																				<label class="control-label">Mobile Number</label> <input
																					name="phone" type="text"
																					placeholder="<s:property value="currentLoginUser.phone"/>"
																					class="form-control" />
																			</div>
																			<div class="form-group">
																				<label class="control-label">Email</label> <input
																					name="email" type="text"
																					placeholder="<s:property value="currentLoginUser.email"/>"
																					class="form-control" />
																			</div>
																			<div class="margiv-top-10">
																				<button type="submit" class="btn green"
																					formaction="modifyProfile.action?loginUserID=<s:property value="loginUserID"/>"
																					formmethod="post">Save Changes</button>
																				<a href="javascript:;" class="btn default">
																					Cancel </a>
																			</div>
																		</form>
																	</div>
																	<!-- END PERSONAL INFO TAB -->


																	<!-- CHANGE AVATAR TAB -->
																	<div class="tab-pane" id="tab_1_2">

																		<form action="#" role="form">
																			<div class="form-group">
																				<div class="fileinput fileinput-new"
																					data-provides="fileinput">
																					<div class="fileinput-new thumbnail"
																						style="width: 200px; height: 150px;">
																						<img
																							src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image"
																							alt="" />
																					</div>
																					<div
																						class="fileinput-preview fileinput-exists thumbnail"
																						style="max-width: 200px; max-height: 150px;">
																					</div>
																					<div>
																						<span class="btn default btn-file"> <span
																							class="fileinput-new"> Select image </span> <span
																							class="fileinput-exists"> Change </span> <input
																							type="file" name="...">
																						</span> <a href="javascript:;"
																							class="btn default fileinput-exists"
																							data-dismiss="fileinput"> Remove </a>
																					</div>
																				</div>
																			</div>
																			<div class="margin-top-10">
																				<a href="javascript:;" class="btn green"> Submit
																				</a> <a href="javascript:;" class="btn default">
																					Cancel </a>
																			</div>
																		</form>
																	</div>
																	<!-- END CHANGE AVATAR TAB -->

																	<!-- CHANGE PASSWORD TAB -->
																	<div class="tab-pane" id="tab_1_3">
																		<form action="#">
																			<div class="form-group">
																				<label class="control-label">Current
																					Password</label> <input type="password"
																					name="currentPasswd" class="form-control" />
																			</div>
																			<div class="form-group">
																				<label class="control-label">New Password</label> <input
																					name="password" type="password"
																					class="form-control" />
																			</div>
																			<div class="form-group">
																				<label class="control-label">Re-type New
																					Password</label> <input type="password" name="rePasswd"
																					class="form-control" />
																			</div>
																			<div class="margin-top-10">
																				<button type="submit" class="btn green"
																					formaction="changePasswd.action?loginUserID=<s:property value="loginUserID"/>"
																					formmethod="post">Change Password</button>
																				<a href="javascript:;" class="btn default">
																					Cancel </a>
																			</div>
																		</form>
																	</div>
																	<!-- END CHANGE PASSWORD TAB -->
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- END PROFILE CONTENT -->
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
		src="../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/jquery.sparkline.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="../assets/global/scripts/app.min.js"
		type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/pages/scripts/profile.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
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