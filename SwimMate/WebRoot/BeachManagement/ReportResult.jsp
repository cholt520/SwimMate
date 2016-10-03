<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>

<!DOCTYPE html>

<html lang="en">
<head>
<title>Show Report</title>
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
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link
	href="../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="../assets/pages/css/search.min.css" rel="stylesheet"
	type="text/css" />
<!-- END PAGE LEVEL STYLES -->
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
					<div class="page-header-top">
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
							<div class="hor-menu  ">
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
										<li class=""><a href="reportDescription.action">
												Report Issues </a></li>
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
									<h1>Show Report</h1>
								</div>
								<!-- END PAGE TITLE -->

							</div>
						</div>
						<!-- END PAGE HEAD-->
						<!-- BEGIN PAGE CONTENT BODY -->
						<div class="page-content">
							<div class="container">



								<!-- BEGIN
								PAGE BREADCRUMBS -->
								<ul class="page-breadcrumb breadcrumb ">
									<s:if test="%{loginUserID==-1}">
										<li><a href="index.action?loginUserID=-1"
											class="font-green-sharp">Home</a> <i class="fa fa-circle"></i></li>
									</s:if>
									<s:else>
										<li><a
											href="index.action?loginUserID=<s:property value="loginUserID"/>"
											class="font-green-sharp">Home</a> <i class="fa fa-circle"></i></li>
									</s:else>
									<li><span>Search Reports</span></li>
								</ul>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="search-page search-content-2">

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

										<!--Search Bar-->
										<div class="search-bar ">
											<div class="row">
												<div class="col-md-12">
													<form>
														<div class="input-group">
															<input name="searchBeachName" type="text"
																class="form-control" placeholder="Search a Beach">
															<span class="input-group-btn"> <s:if
																	test="%{loginUserID==-1}">
																	<button class="btn green-sharp uppercase bold"
																		type="submit"
																		formaction="getReportByBeach.action?loginUserID=-1"
																		formmethod="post">Search</button>
																</s:if> <s:else>
																	<button class="btn green-sharp uppercase bold"
																		type="submit"
																		formaction="getReportByBeach.action?loginUserID=<s:property value="loginUserID"/>"
																		formmethod="post">Search</button>
																</s:else>
															</span>
														</div>
													</form>
												</div>
											</div>
										</div>
										<!--End Search Bar-->

										<!--Result Table-->
										<div class="row" style="Margin:2px;">
											<div class="search-container ">
												<ul class="search-container">
													<!-- BEGIN SAMPLE TABLE PORTLET-->
													<div class="portlet box green">
														<div class="portlet-title">
															<div class="caption">
																<i class="fa fa-cogs"></i>Search Report
															</div>
															<div class="tools">
																<a href="javascript:;" class="collapse"> </a> <a
																	href="#portlet-config" data-toggle="modal"
																	class="config"> </a> <a href="javascript:;"
																	class="reload"> </a> <a href="javascript:;"
																	class="remove"> </a>
															</div>
														</div>
														<div class="portlet-body flip-scroll">
															<table
																class="table table-bordered table-striped table-condensed flip-content">
																<thead class="flip-content">
																	<tr>
																		<th width="20%">Beach Name</th>
																		<th>Submitted Name</th>
																		<th>Reason</th>
																		<th>Description</th>
																		

																	</tr>
																</thead>
																<tbody>
																	<s:iterator value="reportList" id="report">
																		<tr>
																			<td><s:property value="#report.beachName" /></td>
																			<td><s:property value="#report.submittedName" /></td>
																			<td><s:property value="#report.reason" /></td>
																			<td><s:property value="#report.description" /></td>
																			
																		</tr>
																	</s:iterator>
																</tbody>
															</table>
														</div>
													</div>
													<!-- END SAMPLE TABLE PORTLET-->
												</ul>
											</div>
										</div>
										<!--End Result Table-->

									</div>
									<br /> <br />
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
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script
		src="../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/pages/scripts/search.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- Start Map Scripts -->

	<!-- End Map Scripts -->
</body>
</html>
