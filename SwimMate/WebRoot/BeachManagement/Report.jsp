<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html lang="en">
<head>
<title>Reporting System</title>
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
<link
	href="../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css"
	rel="stylesheet" type="text/css" />
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
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="../assets/layouts/layout3/css/layout.min.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/layouts/layout3/css/themes/default.min.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="../assets/layouts/layout3/css/custom.min.css"
	rel="stylesheet" type="text/css" />
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="favicon.ico" />

<%-- <style >
body {
    background-image: url("../image/background.jpg");
}
</style> --%>
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
								<a href="index.action"> <img src="../image/logo_green.jpg"
									alt="logo" class="logo-default"
									style="width:230px; height:45px; margin-top:18px;">
								</a>
							</div>
							<!-- END LOGO -->
							<!-- BEGIN RESPONSIVE MENU TOGGLER -->
							<a href="javascript:;" class="menu-toggler"></a>
							<!-- END RESPONSIVE MENU TOGGLER -->
						</div>
					</div>
					<!-- END HEADER TOP -->
					<!-- BEGIN HEADER MENU -->
					<div class="page-header-menu">
						<div class="container">
							<!-- BEGIN MEGA MENU -->
							<div class="hor-menu ">
								<ul class="nav navbar-nav">
									<li class=""><a href="index.action"> Home </a></li>

									<li class=""><a href="beach.action"> Find Beach </a></li>



									<li class=""><a href="Training.action">Find Swimming
											Centres </a></li>

									<li class=""><a href="Tips.jsp "> Tips for Swimmers </a></li>
									<li class=""><a href="Report.jsp "> Reporting System </a></li>

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
									<h1>Reporting System</h1>
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
									<li><a href="#">Beach safety</a> <i class="fa fa-circle"></i>
									</li>
									<li><span>Report System</span></li>
								</ul>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="portlet light">
										<div class="portlet-title">
											<div class="caption">
												<span
													class="caption-subject font-green-sharp bold uppercase">
													Report issues </span>
											</div>
										</div>
										<div class="portlet-body">
											<s:form action="resultAction" method="post"
												enctype="multipart/form-data">
												<div class="row">
													<div class="col-md-2">
														<span class="help-block"> Beach Name: </span>
													</div>
													<div class="col-md-4">
														<input type="text" name="beachName" class="form-control" />
													</div>
												</div>
												<br />
												<div class="row">
													<div class="col-md-2">
														<span class="help-block"> User Name: </span>
													</div>
													<div class="col-md-4">
														<input type="text" name="SubmittedName"
															class="form-control" />
													</div>
												</div>
												<br />
												<div class="row">
													<div class="col-md-2">
														<span class="help-block"> Reason: </span>
													</div>
													<div class="col-md-4">
														<select name="reason" class="bs-select form-control">
															<option
																value="Recent and forecast rain,stormwater pollution likely">Recent
																and forecast rain,stormwater pollution likely</option>
															<option value="Recent rain, stormwater pollution likely">Recent
																rain, stormwater pollution likely</option>
															<option
																value="Recent and forecast rain,stormwater pollution possible">Recent
																and forecast rain, stormwater pollution possible</option>
															<option value="No rain, stormwater pollution unlikely">No
																rain, stormwater pollution unlikely</option>
														</select>
													</div>
												</div>
												<br />
												<div class="row">
													<div class="col-md-2">
														<span class="help-block"> Description: </span>
													</div>
													<div class="col-md-4">
														<textarea name="description" class="form-control"></textarea>
													</div>
												</div>
												<br />
												<div class="row">
													<div class="col-md-2">
														<span class="help-block"> Image: </span>
													</div>
													<div class="col-md-4">
														<div class="fileinput fileinput-new"
															data-provides="fileinput">
															<div class="input-group input-large">
																<div
																	class="form-control uneditable-input input-fixed input-medium"
																	data-trigger="fileinput">
																	<i class="fa fa-file fileinput-exists"></i>&nbsp; <span
																		class="fileinput-filename"> </span>
																</div>
																<span class="input-group-addon btn default btn-file">
																	<span class="fileinput-new"> Select file </span> <span
																	class="fileinput-exists"> Change </span> <input
																	type="file" name="fileUpload" accept="image/*">
																</span> <a href="javascript:;"
																	class="input-group-addon btn red fileinput-exists"
																	data-dismiss="fileinput"> Remove </a>
															</div>
														</div>
													</div>
												</div>
												<br />
												<br />
												<div class="row">
													<div class="col-md-6">
														<button type="submit"
															class="btn green-sharp uppercase bold">Submit</button>
													</div>
												</div>
											</s:form>
										</div>
									</div>


									<!-- END PAGE CONTENT INNER -->
								</div>
							</div>
							<!-- END PAGE CONTENT BODY -->

							<!-- END CONTENT BODY -->

						</div>
					</div>
					<br /> <br />

					<!-- END CONTENT -->
				</div>
				<!-- END CONTAINER -->
			</div>
		</div>
		<div class="page-wrapper-row">
			<div class="page-wrapper-bottom">
				<!-- BEGIN FOOTER -->
				<!-- BEGIN PRE-FOOTER -->
				<div class="page-prefooter">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12 footer-block">
								<h2>About Us</h2>
								<p>
									C.A.R.T. Solutions <br /> -- Creativity, Aesthetics,
									Robustness and good Technology.
								</p>
							</div>

							<div class="col-md-6 col-sm-6 col-xs-12 footer-block">
								<h2>Contacts</h2>
								<address class="margin-bottom-40">
									<br /> Email: <a href="mailto:lzuo5@student.monash.edu">lzuo5@student.monash.edu</a>
								</address>
							</div>
						</div>
					</div>
				</div>
				<!-- END PRE-FOOTER -->
				<!-- BEGIN INNER FOOTER -->
				<div class="page-footer">
					<div class="container">
						2016 &copy; Swim Mate By <a target="_blank" href="index.action">C.A.R.T.
							Solutions</a>
					</div>
				</div>
				<div class="scroll-to-top">
					<i class="icon-arrow-up"></i>
				</div>
				<!-- END INNER FOOTER -->
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
	<script src="../assets/global/plugins/select2/js/select2.full.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/pages/scripts/components-select2.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/pages/scripts/components-bootstrap-select.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->


</body>
</html>