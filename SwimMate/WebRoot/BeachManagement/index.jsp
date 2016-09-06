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

<!-- Custom CSS -->
<link href="../css/landing-page.css" rel="stylesheet">
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
									<li class="active"><a href="index.action"> Home </a></li>

									<li class=""><a href="beach.action"> Find Beach </a></li>

									<li class=""><a href="getFacility.action "> Find
											Facility </a></li>
											<li class=""> <a href="Training.action">Find Training </a>
									</li>
									
									<li class=""> <a href="getFacility.action">Shark alarm </a>
									</li>
									<li class=""><a href="Tips.jsp "> Tips for Swimmers </a></li>
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
						<div class="intro-header" >
							<div class="container">
								<div class="row">
									<div class="col-lg-12">
										<div class="intro-message">
											<h1>Welcome to SwimMate</h1>
											<h3>Find your ideal beach to swim</h3>
											<br />
											<hr />
											<p>
												The SwimMate website is designed for people like to swim at
												the beach in Australia. It benefits swimmers in<br />
												Australia to find beast beaches nearby based on different
												criteria like water quality, tide information,<br />
												weather updates, marine dangers and patrol Information.
											</p>
											<br />
											<h2>
												<a href="beach.action" class="font-white"> <i
													class="fa fa-search"></i> Get Started
												</a>
											</h2>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="page-content">
							<div class="content-section-a">
								<div class="container">
									<div class="row">
										<div class="col-lg-5 col-sm-6">
											<hr class="section-heading-spacer">
											<div class="clearfix"></div>
											<h2 class="section-heading">
												<a href="beach.action" class="font-dark"> Finding an
													ideal beach </a>
											</h2>
											<p class="lead">It is quite normal for people in
												Australia to swim at the beach. SwimMate can provide a range
												of beach information to promote swimmers to make swimming
												decision.</p>
										</div>
										<div class="col-lg-5 col-lg-offset-2 col-sm-6">
											<img class="img-responsive" src="../image/beach.jpg" alt="">
										</div>
									</div>
								</div>
							</div>


							<div class="content-section-b">
								<div class="container">
									<div class="row">
										<div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
											<hr class="section-heading-spacer">
											<div class="clearfix"></div>
											<h2 class="section-heading">
											<a href="Tips.jsp" class="font-dark">Ensuring the safety of
												swimmer</a></h2>
											<p class="lead">Royal Life Saving Report (2015) indicated
												that around 10 people are rescued from beaches every day in
												Australia, and there were 55 drowning deaths at beaches in
												Australia in the year of 2015. SwimMate informs everything
												swimmers need to know to ensure that they can keep
												themselves safe at he beaches.</p>
										</div>
										<div class="col-lg-5 col-sm-pull-6  col-sm-6">
											<img class="img-responsive" src="../image/swim.jpg" alt="">
										</div>
									</div>
								</div>
							</div>

							<div class="content-section-a">
								<div class="container">
									<div class="row">
										<div class="col-lg-5 col-sm-6">
											<hr class="section-heading-spacer">
											<div class="clearfix"></div>
											<h2 class="section-heading">User Interaction</h2>
											<p class="lead">With Swimmers’ involvement, SwimMate can
												provide a more customized notification and reminder for them
												to manage their swimming plan.</p>
										</div>
										<div class="col-lg-5 col-lg-offset-2 col-sm-6">
											<img class="img-responsive" src="../image/social.jpg" alt="">
										</div>
									</div>
								</div>
							</div>
						</div>
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
								C.A.R.T. Solutions <br /> -- Creativity, Aesthetics, Robustness
								and good Technology.
							</p>
						</div>

						<div class="col-md-6 col-sm-6 col-xs-12 footer-block">
							<h2>Contacts</h2>
							<address class="margin-bottom-40">
								Phone: 0400000000 <br /> Email: <a
									href="mailto:lzuo5@student.monash.edu">lzuo5@student.monash.edu</a>
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
</body>
</html>