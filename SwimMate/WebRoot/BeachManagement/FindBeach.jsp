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
										<li class="active"><a href="beach.action?loginUserID=-1">
												Find Beach </a></li>
									</s:if>
									<s:else>
										<li class="active"><a
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
									<s:if test="%{loginUserID==-1}">
										<li><a href="index.action?loginUserID=-1"
											class="font-green-sharp">Home</a> <i class="fa fa-circle"></i></li>
									</s:if>
									<s:else>
										<li><a
											href="index.action?loginUserID=<s:property value="loginUserID"/>"
											class="font-green-sharp">Home</a> <i class="fa fa-circle"></i></li>
									</s:else>
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
													<form>
														<div class="input-group">
															<input name="beachName" type="text" class="form-control"
																placeholder="Search a Beach"> <span
																class="input-group-btn"> <s:if
																	test="%{loginUserID==-1}">
																	<button class="btn green-sharp uppercase bold"
																		type="submit"
																		formaction="getBeachByName.action?loginUserID=-1"
																		formmethod="post">Search</button>
																</s:if> <s:else>
																	<button class="btn green-sharp uppercase bold"
																		type="submit"
																		formaction="getBeachByName.action?loginUserID=<s:property value="loginUserID"/>"
																		formmethod="post">Search</button>
																</s:else>
															</span>
														</div>
													</form>
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
																<s:if test="%{loginUserID==-1}">
																	<a
																		href="getBeachByState.action?selectedState=VIC&loginUserID=-1"
																		style="font-size:18px;" class="font-blue-oleo">
																		Victoria </a>
																</s:if>
																<s:else>
																	<a
																		href="getBeachByState.action?selectedState=VIC&loginUserID=<s:property value="loginUserID"/>"
																		style="font-size:18px;" class="font-blue-oleo">
																		Victoria </a>
																</s:else>
															</div>
															<div class="col-md-6">
																<s:if test="%{loginUserID==-1}">
																	<a
																		href="getBeachByState.action?selectedState=NSW&loginUserID=-1"
																		style="font-size:18px;" class="font-blue-oleo">
																		New South Wales </a>
																</s:if>
																<s:else>
																	<a
																		href="getBeachByState.action?selectedState=NSW&loginUserID=<s:property value="loginUserID"/>"
																		style="font-size:18px;" class="font-blue-oleo">
																		New South Wales </a>
																</s:else>
															</div>
														</div>
														<br />
														<div class="row" style="margin: 6px;">
															<div class="col-md-6">
																<s:if test="%{loginUserID==-1}">
																	<a
																		href="getBeachByState.action?selectedState=QS&loginUserID=-1"
																		style="font-size:18px;" class="font-blue-oleo">
																		Queensland </a>
																</s:if>
																<s:else>
																	<a
																		href="getBeachByState.action?selectedState=QS&loginUserID=<s:property value="loginUserID"/>"
																		style="font-size:18px;" class="font-blue-oleo">
																		Queensland </a>
																</s:else>
															</div>
															<div class="col-md-6">
																<s:if test="%{loginUserID==-1}">
																	<a
																		href="getBeachByState.action?selectedState=NT&loginUserID=-1"
																		style="font-size:18px;" class="font-blue-oleo">
																		Northern Territory </a>
																</s:if>
																<s:else>
																	<a
																		href="getBeachByState.action?selectedState=NT&loginUserID=<s:property value="loginUserID"/>"
																		style="font-size:18px;" class="font-blue-oleo">
																		Northern Territory </a>
																</s:else>
															</div>
														</div>
														<br />
														<div class="row" style="margin: 6px;">
															<div class="col-md-6">
																<s:if test="%{loginUserID==-1}">
																	<a
																		href="getBeachByState.action?selectedState=WA&loginUserID=-1"
																		style="font-size:18px;" class="font-blue-oleo">
																		Western Australia </a>
																</s:if>
																<s:else>
																	<a
																		href="getBeachByState.action?selectedState=WA&loginUserID=<s:property value="loginUserID"/>"
																		style="font-size:18px;" class="font-blue-oleo">
																		Western Australia </a>
																</s:else>
															</div>
															<div class="col-md-6">
																<s:if test="%{loginUserID==-1}">
																	<a
																		href="getBeachByState.action?selectedState=SA&loginUserID=-1"
																		style="font-size:18px;" class="font-blue-oleo">
																		South Australia </a>
																</s:if>
																<s:else>
																	<a
																		href="getBeachByState.action?selectedState=SA&loginUserID=<s:property value="loginUserID"/>"
																		style="font-size:18px;" class="font-blue-oleo">
																		South Australia </a>
																</s:else>
															</div>
														</div>
														<br />
														<div class="row" style="margin: 6px;">
															<div class="col-md-6">
																<s:if test="%{loginUserID==-1}">
																	<a
																		href="getBeachByState.action?selectedState=TA&loginUserID=-1"
																		style="font-size:18px;" class="font-blue-oleo">
																		Tasmania </a>
																</s:if>
																<s:else>
																	<a
																		href="getBeachByState.action?selectedState=TA&loginUserID=<s:property value="loginUserID"/>"
																		style="font-size:18px;" class="font-blue-oleo">
																		Tasmania </a>
																</s:else>
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

										<div class="row" style="Margin:2px;">
											<!--Result Table-->
											<div class="col-md-7">
												<div class="portlet light ">
													<div class="portlet-title">
														<div class="caption">
															<span
																class="caption-subject font-green-sharp bold uppercase"
																style="font-size:20px;"> <i class="fa fa-search"></i>
																Result List
															</span>
														</div>
													</div>
													<div class="portlet-body">
														<div class="scroller" style="height: 500px;"
															data-always-visible="1" data-rail-visible1="0"
															data-handle-color="#D7DCE2">
															<div class="search-container ">
																<ul class="search-container">
																	<s:iterator value="beachList" status="userStatus">
																		<li class="search-item clearfix">
																			<div class="search-content text-left">
																				<div class="col-md-4">
																					<img
																						src="https://maps.googleapis.com/maps/api/streetview?size=150x100&location=<s:property value="latitude" />,<s:property value="longitude" />&heading=151.78&pitch=-0.76&key=AIzaSyCKH-MtuoWl-NkYS_m5YxBIY2sQbkvPGfM" />
																				</div>

																				<div class="col-md-4">
																					<h2 class="search-title">
																						<s:if test="%{loginUserID==-1}">
																							<a
																								href="beachInfo.action?id=<s:property value="beach_id"/>&loginUserID=-1">
																								<s:property value="beach_name" />
																							</a>
																						</s:if>
																						<s:else>
																							<a
																								href="beachInfo.action?id=<s:property value="beach_id"/>&loginUserID=<s:property value="loginUserID"/>">
																								<s:property value="beach_name" />
																							</a>
																						</s:else>
																					</h2>

																					<p class="search-desc">
																						<s:property value="beach_name" />
																						,
																						<s:property value="state" />
																						<%-- <s:hidden id="beachID"
																							value="beach_id"
																							name="beachID" /> --%>
																					</p>
																				</div>

																				<%-- <div class="col-md-4">
																					<s:if test="%{loginUserID==-1}">
																						<s:property value="beach_name" />
																						</s:if>
																				</div> --%>

																			</div>
																		</li>
																	</s:iterator>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!--End Result Table-->
											<!-- Start Report Issues -->
											<div class="col-md-5">
												<div class="portlet light ">
													<div class="portlet-title">
														<div class="caption">
															<span
																class="caption-subject font-green-sharp bold uppercase"
																style="font-size:20px;"> <i class="fa fa-warning"></i>
																Recent Reports
															</span>
														</div>
													</div>
													<div class="portlet-body">
														<div class="scroller" style="height: 500px;"
															data-always-visible="1" data-rail-visible1="0"
															data-handle-color="#D7DCE2">
															<div class="search-container ">
																<ul class="search-container">
																	<s:iterator value="reportList" status="userStatus">
																		<li class="search-item clearfix">
																			<div class="search-content text-left">
																				<div class="col-md-12">
																					<!-- <marquee direction="up"> -->
																					<h2 class="search-title">
																						<s:property value="beachName" />
																					</h2>
																					<p>
																						<span class=" bold"> Reason: </span>

																						<s:property value="reason" />
																						<br /> <span class=" bold">Description:</span>
																						<s:property value="description" />
																					</p>
																					<!-- </marquee> -->
																				</div>

																			</div>
																		</li>
																	</s:iterator>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- End Report Issues -->
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
	
			/* setMarkers(map); */
	
			var markers = beaches.map(function(beach, i) {
				return new google.maps.Marker({
					position : {
						lat : beach[1],
						lng : beach[2]
					},
					title : beach[0],
				});
			});
	
			// Add a marker clusterer to manage the markers.
			var markerCluster = new MarkerClusterer(map, markers,
				{
					imagePath : 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'
				});
	
	
			/* var infoWindow = new google.maps.InfoWindow({
				map : map
			});
	
			// Try HTML5 geolocation.
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					var pos = {
						lat : position.coords.latitude,
						lng : position.coords.longitude
					};
	
					infoWindow.setPosition(pos);
					infoWindow.setContent('Your Current Location.');
					map.setCenter(pos);
				}, function() {
					handleLocationError(true, infoWindow, map.getCenter());
				});
			} else {
				// Browser doesn't support Geolocation
				handleLocationError(false, infoWindow, map.getCenter());
			} */
			
			/* var myLocation = new google.maps.Marker({
				map : map
			});
	
			// Try HTML5 geolocation.
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					var pos = {
						lat : position.coords.latitude,
						lng : position.coords.longitude
					};
	
					myLocation.setPosition(pos);
					myLocation.setTitle('Your Current Location.');
					myLocation.setIcon('http://maps.google.com/mapfiles/ms/icons/ltblue-dot.png')
					map.setCenter(pos);
				}, function() {
					handleLocationError(true, myLocation, map.getCenter());
				});
			} else {
				// Browser doesn't support Geolocation
				handleLocationError(false, myLocation, map.getCenter());
			}
		}
		
		function handleLocationError(browserHasGeolocation, myLocation, pos) {
        myLocation.setPosition(pos);
        myLocation.setTitle(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
      } */
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
	<script
		src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
    </script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDUuudit4OFSnhG3ZVXncE3ThuiP6xo25s&callback=initMap">
</script>
	<!-- End Map Scripts -->

</body>
</html>
