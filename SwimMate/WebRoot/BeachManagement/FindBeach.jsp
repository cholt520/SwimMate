<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>

<!DOCTYPE html>

<html lang="en">
<head>
<title>Find a Beach</title>
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
					<div class="page-header-top">
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
							<div class="hor-menu  ">
								<ul class="nav navbar-nav">

									<li class=><a href="index.action"> Home </a></li>

									<li class="active"><a href="beach.action"> Find Beach
									</a></li>


											
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
									<h1>Find Beach</h1>
								</div>
								<!-- END PAGE TITLE -->

							</div>
						</div>
						<!-- END PAGE HEAD-->
						<!-- BEGIN PAGE CONTENT BODY -->
						<div class="page-content">
							<div class="container">
								<!-- BEGIN PAGE BREADCRUMBS -->
								<ul class="page-breadcrumb breadcrumb ">
									<li><a href="index.action" class="font-green-sharp">Home</a>
										<i class="fa fa-circle"></i></li>
									<li><span>Find a Beach</span></li>
								</ul>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="search-page search-content-2">

										<!--Search Bar-->
										<div class="search-bar ">
											<div class="row">
												<div class="col-md-12">
													<s:form action="getBeachByName.action">
														<div class="input-group">
															<input name="beachName" type="text" class="form-control"
																placeholder="Search a Beach"> <span
																class="input-group-btn">
																<button class="btn green-sharp uppercase bold"
																	type="submit">Search</button>
															</span>
														</div>
													</s:form>
												</div>
											</div>
										</div>
										<!--End Search Bar-->

										<div class="row">
											<!-- Start Find Beach By State -->
											<div class="col-md-6">
												<div class="portlet light ">
													<div class="portlet-title">
														<div class="caption">
															<span
																class="caption-subject font-green-sharp bold uppercase"
																style="font-size:20px;"> <i class="fa fa-search"></i>
																Find a beach by state
															</span>
														</div>
													</div>
													<div class="portlet-body">
														<div class="row" style="margin: 6px;">
															<div class="col-md-6">
																<a href="getBeachByState.action?selectedState=VIC"
																	style="font-size:18px;" class="font-blue-oleo">
																	Victoria </a>
															</div>
															<div class="col-md-6">
																<a href="getBeachByState.action?selectedState=NSW"
																	style="font-size:18px;" class="font-blue-oleo"> New
																	South Wales </a>
															</div>
														</div>
														<br />
														<div class="row" style="margin: 6px;">
															<div class="col-md-6">
																<a href="getBeachByState.action?selectedState=QS"
																	style="font-size:18px;" class="font-blue-oleo">
																	Queensland </a>
															</div>
															<div class="col-md-6">
																<a href="getBeachByState.action?selectedState=NT"
																	style="font-size:18px;" class="font-blue-oleo">
																	Northern Territory </a>
															</div>
														</div>
														<br />
														<div class="row" style="margin: 6px;">
															<div class="col-md-6">
																<a href="getBeachByState.action?selectedState=WA"
																	style="font-size:18px;" class="font-blue-oleo">
																	Western Australia </a>
															</div>
															<div class="col-md-6">
																<a href="getBeachByState.action?selectedState=SA"
																	style="font-size:18px;" class="font-blue-oleo">
																	South Australia </a>
															</div>
														</div>
														<br />
														<div class="row" style="margin: 6px;">
															<div class="col-md-6">
																<a href="getBeachByState.action?selectedState=TA"
																	style="font-size:18px;" class="font-blue-oleo">
																	Tasmania </a>
															</div>
														</div>
														<br /> <br>
													</div>
												</div>
											</div>
											<!-- End Find Beach By State -->

											<!-- Start Map -->
											<div class="col-md-6">
												<div class="portlet light ">
													<div class="portlet-body">
														<div id="gmap_basic" class="gmaps">
															<div id="map"
																style="height:100%;overflow:hidden;display:block;"></div>
														</div>
													</div>
												</div>
											</div>
											<!-- End Map -->
										</div>

										<br />
										<!--Result Table-->
										<div class="row" style="Margin:2px;">
											<div class="search-container ">
												<ul class="search-container">
													<s:iterator value="beachList" status="userStatus">
														<li class="search-item clearfix">
															<div class="search-content text-left">
																<h2 class="search-title">
																	<a
																		href="beachInfo.action?id=<s:property value="beach_id" />">
																		<s:property value="beach_name" />
																	</a>
																</h2>
																<p class="search-desc">
																	<s:property value="beach_name" />
																	,
																	<s:property value="state" />
																</p>
															</div>
														</li>
													</s:iterator>
												</ul>
												<div class="search-pagination">

													<ul class="pagination">
														<li class="page-active"><a href="javascript:;"> 1
														</a></li>
														<li><a href="javascript:;"> 2 </a></li>
														<li><a href="javascript:;"> 3 </a></li>
														<li><a href="javascript:;"> 4 </a></li>
													</ul>
												</div>

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
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="../assets/global/scripts/app.min.js"
		type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/pages/scripts/search.min.js"
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

	<!-- Start Map Scripts -->
	<script>
	
		function initMap() {
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 4,
				center : {
					lat : -29,
					lng : 140.2
				}
			});
	
			setMarkers(map);
		}
		// Data for the markers consisting of a name, a LatLng and a zIndex for the
		// order in which these markers should display on top of each other.
		var beaches = [];
		<s:iterator value="beachList" status="userStatus">
							var latitude = '<s:property value="latitude"/>';
							var latitude1 = parseFloat(latitude);
							var longitude = '<s:property value="longitude"/>';
							var longitude1 = parseFloat(longitude);
				     	beaches.push(['<s:property value="beach_name"/>',latitude1,longitude1]);
				    </s:iterator>
	
	
		function setMarkers(map) {
			// Adds markers to the map.
	
			// Marker sizes are expressed as a Size of X,Y where the origin of the image
			// (0,0) is located in the top left of the image.
	
			// Origins, anchor positions and coordinates of the marker increase in the X
			// direction to the right and in the Y direction down.
			var image = {
				url : 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
				// This marker is 20 pixels wide by 32 pixels high.
				size : new google.maps.Size(20, 32),
				// The origin for this image is (0, 0).
				origin : new google.maps.Point(0, 0),
				// The anchor for this image is the base of the flagpole at (0, 32).
				anchor : new google.maps.Point(0, 32)
			};
			// Shapes define the clickable region of the icon. The type defines an HTML
			// <area> element 'poly' which traces out a polygon as a series of X,Y points.
			// The final coordinate closes the poly by connecting to the first coordinate.
			var shape = {
				coords : [ 1, 1, 1, 20, 18, 20, 18, 1 ],
				type : 'poly'
			};
			for (var i = 0; i < beaches.length; i++) {
				var beach = beaches[i];
				var marker = new google.maps.Marker({
					position : {
						lat : beach[1],
						lng : beach[2]
					},
					map : map,
					shape : shape,
					title : beach[0],
					zIndex : beach[3]
				});
			}
		}
	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDUuudit4OFSnhG3ZVXncE3ThuiP6xo25s&callback=initMap">
</script>
	<!-- End Map Scripts -->
</body>
</html>
