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
										<li class="active"><a href="tips.action?loginUserID=-1 "> Tips for
												Swimmers </a></li>
									</s:if>
									<s:else>
										<li class="active"><a href="tips.action?loginUserID=<s:property value="loginUserID"/>"> Tips for
												Swimmers </a></li>
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
									<h1>Tips for Swimmers</h1>
								</div>
								<!-- END PAGE TITLE -->
							</div>
						</div>
						<!-- END PAGE HEAD-->
						<!-- BEGIN PAGE CONTENT BODY -->

						<!-- BEGIN PAGE CONTENT BODY -->
						<div class="page-content">

							<div class="container">
								<!-- BEGIN PAGE BREADCRUMBS -->
								<ul class="page-breadcrumb breadcrumb">
									<li><a href="index.action" class="font-green-sharp">Home</a>
										<i class="fa fa-circle"></i></li>
									<li><span class="font-blue-oleo">Tips for Swimmers</span></li>
								</ul>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="row">
										<div class="col-md-12">
											<div class="portlet light">
												<div class="portlet-body">

													<div class="row">
														<div class="col-md-12">
															<div class="content-section-a">
																<div class="row">
																	<div class="col-md-6">
																		<hr class="section-heading-spacer">
																		<div class="clearfix"></div>
																		<h2 class="section-heading">Beach Safety in
																			Australia</h2>
																		<p class="lead">
																			At patrolled beaches the first thing to do is pay
																			attention to any signage, particularly if the signs
																			say the beach is closed. This is not because the
																			lifesavers are on strike, it's because the beach is
																			too dangerous to swim at. <br /> If the beach is
																			open the safest place to swim is between the red and
																			yellow flags. The flags are placed at the safest
																			places to swim and are for swimmers only. If you are
																			surfing it is not good form to do it between the
																			flags (lifeguards may confiscate your board). <br /><br />
																			For additional safety instructions, visit <a href="http://www.healthdirect.gov.au/beach-safety"
																				target="_blank" class="font-blue-soft">healthdirect.com.au</a>
																		</p>

																	</div>
																	<div class="col-md-6">
																		<img class="img-responsive"
																			src="../image/BeachSafety.jpg" alt="">
																	</div>
																</div>
															</div>
														</div>
													</div>


													<div class="row">
														<div class="col-md-12">
															<div class="content-section-b">
																<div class="row">
																	<div class="col-md-6">
																		<img class="img-responsive" src="../image/Rip.jpg"
																			alt="">
																	</div>
																	<div class="col-md-6">
																		<hr class="section-heading-spacer">
																		<div class="clearfix"></div>
																		<h2 class="section-heading">How can I Spot a Rip?</h2>
																		<p class="lead">
																			Many of Australia's beaches have rips, these are
																			powerful currents of water that can drag you along
																			and out to sea. If you find yourself caught in a rip,
																			do not panic (easier said than done). A rip is a
																			narrow current that flows against the waves back out
																			to sea, so if you swim parallel to the beach just a
																			few metres you can often swim out of it. <br /> You
																			can also float and go with the rip, because they
																			often disperse just beyond the breakers, as long as
																			you are a good swimmer to then get yourself back to
																			shore.
																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>


													<div class="row">
														<div class="col-md-12">
															<div class="content-section-a">
																<div class="row">
																	<div class="col-md-6">
																		<hr class="section-heading-spacer">
																		<div class="clearfix"></div>
																		<h2 class="section-heading">Jellyfish</h2>
																		<p class="lead">
																			Another danger in shallow water and along the waters
																			edge are stingers! It should come as no surprise to
																			hear that Australia is home to a large range of
																			lethal and non-lethal marine stingers! Before you
																			totally re-think your Aussie Beach Holiday, stingers
																			are usually pretty easy to avoid and spot. <br />
																			Lethal stingers include Irukandji and the blue-ringed
																			octopus. To treat these stings rinse the affected
																			area with vinegar or salt water not freshwater or
																			urine as some people may suggest, and pick off any
																			tentacles that have stuck to the skin. Try not to rub
																			the affected area and seek out a lifesaver or
																			lifeguard for assistance.
																		</p>
																	</div>
																	<div class="col-md-6">
																		<img class="img-responsive"
																			src="../image/Jellyfish.jpg" alt="">
																	</div>
																</div>
															</div>
														</div>
													</div>


													<div class="row">
														<div class="col-md-12">
															<div class="content-section-b">
																<div class="row">
																	<div class="col-md-6">
																		<img class="img-responsive" src="../image/Sunburn.jpg"
																			alt="" style="text-align: center;">
																	</div>
																	<div class="col-md-6">
																		<hr class="section-heading-spacer">
																		<div class="clearfix"></div>
																		<h2 class="section-heading">Beach and Sun Safety</h2>
																		<p class="lead">
																			Sun protection is a very serious matter in Australia,
																			as the Ultra Violet (UV) is very high at all times of
																			the year. The UV exposure is at its greatest between
																			10am and 3pm so it's best to totally avoid skin
																			exposure to the sun between these times, particularly
																			children. <br /> The key to being sun-safe in
																			Australia is Slip, Slop, Slap. This is the
																			recommendation from The Australian Cancer Council:
																			Slip on clothing that covers arms and legs; slap on a
																			hat; slop on sunscreen; seek shade and an extra one
																			from us.
																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>


												</div>
											</div>
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