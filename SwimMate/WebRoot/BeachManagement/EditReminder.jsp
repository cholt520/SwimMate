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
<link
	href="../assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/global/plugins/clockface/css/clockface.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css"
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
										<li class="active"><a href="reminderDescription.action">
												Plan Your Journey </a></li>
									</s:if>
									<s:else>
										<li class="active"><a
											href="reminder.action?loginUserID=<s:property value="loginUserID"/>">
												Plan Your Journey </a></li>
									</s:else>

									<s:if test="%{loginUserID==-1}">
										<li class=""><a href="reportDescription.action">
												Report Beach Hazards </a></li>
									</s:if>
									<s:else>
										<li class=""><a
											href="report.action?loginUserID=<s:property value="loginUserID"/>">
												Report Beach Hazards </a></li>
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
									<h1>Reminder</h1>
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
									<li><a href="index.html">Home</a> <i class="fa fa-circle"></i>
									</li>
									<li><span>Reminder</span></li>
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

												<!-- PORTLET MAIN -->
												<div class="portlet light ">
													<div class="portlet-title">
														<div class="caption caption-md">
															<i class="icon-bar-chart theme-font hide"></i> <span
																class="caption-subject font-blue-madison bold uppercase">Your
																Reminders</span>
														</div>
													</div>
													<div class="portlet-body">
														<div class="table-scrollable table-scrollable-borderless">
															<div class="scroller" style="height: 200px;"
																data-always-visible="1" data-rail-visible1="0"
																data-handle-color="#D7DCE2">
																<table class="table table-hover table-light">
																	<thead>
																		<tr class="uppercase">
																			<th colspan="2">Date</th>
																			<th>View</th>
																			<th>Delete</th>
																		</tr>
																	</thead>
																	<tbody>
																		<s:iterator value="reminderList" id="reminder">
																			<tr>
																				<td colspan="2"><s:property
																						value="#reminder.date" /></td>
																				<td><a href=""
																					class="btn btn-transparent blue-hoki btn-outline btn-circle btn-xs">
																						<i class="fa fa-search"></i>
																				</a></td>
																				<td><a
																					href="deleteReminder.action?loginUserID=<s:property value="loginUserID"/>&deleteReminderID=<s:property
																						value="#reminder.ID" />"
																					class="btn btn-transparent red-mint btn-outline btn-circle btn-xs">
																						<i class="fa fa-times"></i>
																				</a></td>
																			</tr>
																		</s:iterator>
																	</tbody>

																</table>
															</div>
														</div>
													</div>
												</div>
												<!-- END PORTLET MAIN -->
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
																		class="caption-subject font-green-sharp bold uppercase">
																		Your Plan </span>
																</div>
															</div>

															<div class="portlet-body">
																<div class="tab-content">
																	<!-- Start set reminder page -->
																	<!-- Start Alert -->
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
																	<!-- End Alert -->

																	<div class="row">
																		<div class="col-md-12">
																			<p style="font-size:130%;" class="font-blue-hoki">
																				Dear <span
																					class="bold"> <s:property
																						value="currentLoginUser.userName" />
																				</span>,<br /> <br /> This is the details of
																				your upcoming beach trip to <span
																					class="font-green-sharp bold"> <s:property
																						value="editBeachName" />
																				</span><br /> on <span class="font-green-sharp bold">
																					<s:property value="currentSelectedReminder.date" />
																				</span>.<br /> <br />You left the following note for this
																				trip:<br /> <span class="font-green-sharp bold">
																					<s:property
																						value="currentSelectedReminder.description" />
																				</span> <br /> <br />Enjoy your trip!<br />
																			</p>
																		</div>
																	</div>
																	<br />
																	<div class="row">
																		<div class="col-md-3">
																			<a
																				href="deleteReminder.action?loginUserID=<s:property value="loginUserID"/>&deleteReminderID=<s:property
																						value="#reminder.ID" />"
																				class="btn red-mint ">DELETE</a>
																		</div>
																		<div class="col-md-3">
																			<a
																				href="reminder.action?loginUserID=<s:property value="loginUserID"/>"
																				class="btn green-sharp">BACK</a>
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
	<script src="../assets/global/plugins/moment.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/clockface/js/clockface.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="../assets/global/scripts/app.min.js"
		type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/pages/scripts/profile.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/pages/scripts/components-date-time-pickers.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/pages/scripts/components-bootstrap-select.min.js"
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