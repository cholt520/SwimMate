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
	href="../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="../assets/global/css/components-rounded.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
<link href="../assets/global/css/plugins.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="../assets/pages/css/search.min.css" rel="stylesheet"
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

							<!-- END HEADER SEARCH BOX -->
							<!-- BEGIN MEGA MENU -->

							<div class="hor-menu  ">
								<ul class="nav navbar-nav">
									<li class=><a href="index.action"> Home </a></li>

									<li class="active"><a href="beach.action"> Find Beach
									</a></li>

									<li class=""><a href="getFacility.action "> Find
											Facility </a></li>
											
											<li class=""> <a href="Training.action">Find Swimming Centers </a>
									</li>
									
									<li class=""> <a href="SharkAlarm.action">Shark alarm </a>
									</li>

									<li class=""><a href="Tips.jsp "> Tips for Swimmers </a></li>
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
									<h1>Find a Beach</h1>
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
									<li><a href="index.action" class="font-green-sharp">Home</a>
										<i class="fa fa-circle"></i></li>
									<li><a href="beach.action" class="font-blue-oleo">Find
											Beach</a> <i class="fa fa-circle"></i></li>
									<li><span class="font-blue-oleo">Beach Details</span></li>
								</ul>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="search-page search-content-2">
										<div class="page-content-inner">
											<!-- <div class="row">
												<div class="col-md-12">
													<img src="../image/Melbourne_St_Kilda_Banner.jpg"
														alt="St_Kilda_Beach" style="width: 100%; height: auto;" />
												</div>
											</div>
											<br /> <br /> -->

											<div class="row">
												<div class="col-md-12">
													<div class="portlet light ">

														<div class="portlet-title">
															<div class="caption">

																<span
																	class="caption-subject font-green-sharp bold uppercase">
																	<i class="fa fa-map-pin"></i> <s:property
																		value="currentBeach.beach_name" />
																</span>
															</div>
														</div>
														<div class="portlet-body">
															<div class="row">
																<div class="col-md-6">

																	<h4 class="font-green-sharp">
																		<i class="fa fa-map-marker font-green-sharp"></i>
																		Location
																	</h4>
																	<p>
																		<a
																			href="http://maps.google.com/?q=<s:property value="currentBeach.latitude" />,<s:property value="currentBeach.longitude"/> "
																			target="_blank"> <s:property
																				value="currentBeach.beach_name" />, <s:property
																				value="currentBeach.address" />, <s:property
																				value="currentBeach.state" /> <s:hidden
																				id="latitude" value="%{currentBeach.latitude}"
																				name="latitude" /> <s:hidden id="longitude"
																				value="%{currentBeach.longitude}" name="longitude" />
																			<s:hidden id="beachName"
																				value="%{currentBeach.beach_name}" name="beachName" />
																		</a>
																	</p>
																	<div class="row">
																		<div class="col-md-6">
																			<h4 class="font-green-sharp">
																				<i class="fa fa-sun-o font-green-sharp" /></i> Weather (Live)
																			</h4>
																			<p>
																				Tempreture:
																				<s:property value="weather.temp" />
																				°C <br /> Pressure:
																				<s:property value="weather.pressure" />
																				mb <br /> Humidity:
																				<s:property value="weather.humidity" />
																				% <br />
																			</p>
																		</div>
																		<div class="col-md-6">
																			<h4 class="font-green-sharp">
																				<i class="fa fa-flag font-green-sharp" /></i> Tide
																			</h4>
																			<p>
																				Height:
																				<s:property value="tide.height" />
																				m <br /> Update Date:
																				<s:property value="tide.date" />
																				<%-- <br /> Type:
																				<s:property value="tide.type" /> --%>
																			</p>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-md-6">

																			<div class="row">
																			<div class="col-md-12">
																				<h4 class="font-green-sharp">
																					<i class="fa fa-info-circle font-green-sharp" /></i>
																					Water Quality
																				</h4>
																				<p>N/A</p>
																				</div>
																			</div>

																			<div class="row">
																			<div class="col-md-12">
																				<h4 class="font-green-sharp">
																					<i class="fa fa-ambulance font-green-sharp" /></i>
																					Patrolled
																				</h4>
																				<p>
																					<s:property value="facility.patrolled" />
																				</p>
																			</div>
																			</div>

																		</div>
																		<div class="col-md-6">
																			<h4 class="font-green-sharp">
																				<i class="fa fa-info-circle font-green-sharp" /></i>
																				Facilities
																			</h4>
																			<p>
																				Parking place:
																				<s:property value="facility.parking" />
																				<br /> Changing Room:
																				<s:property value="facility.babychange" />
																				<br /> Shower:
																				<s:property value="facility.showers" />
																				<br /> Drinking Water:
																				<s:property value="facility.drinkingwater" />
																				<br /> Toilet:
																				<s:property value="facility.toilet" />
																				<br />
																			</p>
																		</div>
																	</div>
																</div>
																<div class="col-md-6">
																	<div id="gmap_basic" class="gmaps">
																		<div id="map"
																			style="height:100%;overflow:hidden;display:block;"></div>
																	</div>
																</div>
															</div>
															<br />
															<div class="row">
																<div class="col-md-6">
																	<h4 class="font-green-sharp">
																		<i class="fa fa-tag font-green-sharp" /></i> Suggestion
																	</h4>
																	<p><s:property value="recommandation.recommandation" />
																	</p>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<br /> <br />
										</div>
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
									 <br /> Email: <a
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
		src="../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"
		type="text/javascript"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=false"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="../assets/global/scripts/app.min.js"
		type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/pages/scripts/ui-buttons.min.js"
		type="text/javascript"></script>
	<script src="../assets/pages/scripts/search.min.js"
		type="text/javascript"></script>
	<script src="../assets/pages/scripts/maps-google.min.js"
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
	<script>
		function initMap() {
			var longitude = document.getElementById('longitude').value;
			var latitude = document.getElementById('latitude').value;
			var beachName = document.getElementById('beachName').value;
	
			var latitude1 = parseFloat(latitude);
			var longitude1 = parseFloat(longitude);
	
			var myLatLng = {
				lat : latitude1,
				lng : longitude1
			};
	
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 12,
				center : myLatLng
			});
			var marker = new google.maps.Marker({
				position : myLatLng,
				map : map,
				title : beachName
			});
		}
	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDUuudit4OFSnhG3ZVXncE3ThuiP6xo25s&callback=initMap">
</script>
</body>
</html>

