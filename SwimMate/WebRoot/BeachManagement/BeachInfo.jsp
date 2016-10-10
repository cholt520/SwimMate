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
										<li class=""><a href="reminderDescription.action"> Plan Your Journey </a></li>
									</s:if>
									<s:else>
										<li class=""><a
											href="reminder.action?loginUserID=<s:property value="loginUserID"/>">
												Plan Your Journey </a></li>
									</s:else>

									<s:if test="%{loginUserID==-1}">
										<li class=""><a href="reportDescription.action"> Report Beach Hazards </a></li>
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
									<s:if test="%{loginUserID==-1}">
										<li><a href="index.action?loginUserID=-1"
											class="font-green-sharp">Home</a> <i class="fa fa-circle"></i></li>
									</s:if>
									<s:else>
										<li><a
											href="index.action?loginUserID=<s:property value="loginUserID"/>"
											class="font-green-sharp">Home</a> <i class="fa fa-circle"></i></li>
									</s:else>

									<s:if test="%{loginUserID==-1}">
										<li><a href="beach.action?loginUserID=-1"
											class="font-blue-oleo">Find Beach</a> <i class="fa fa-circle"></i></li>
									</s:if>
									<s:else>
										<li><a
											href="beach.action?loginUserID=<s:property value="loginUserID"/>"
											class="font-blue-oleo">Find Beach</a> <i class="fa fa-circle"></i></li>
									</s:else>

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

																	<div class="row">
																		<div class="col-md-6">
																			<h4 class="font-green-sharp">
																				<i class="fa fa-map-marker font-green-sharp "></i>
																				Location
																			</h4>
																			<p>
																				<a
																					href="http://maps.google.com/?q=<s:property value="currentBeach.latitude" />,<s:property value="currentBeach.longitude"/> "
																					target="_blank"> <s:property
																						value="currentBeach.beach_name" />, <s:property
																						value="currentBeach.state" /> <s:hidden
																						id="latitude" value="%{currentBeach.latitude}"
																						name="latitude" /> <s:hidden id="longitude"
																						value="%{currentBeach.longitude}" name="longitude" />
																					<s:hidden id="beachName"
																						value="%{currentBeach.beach_name}"
																						name="beachName" />
																				</a>
																			</p>
																		</div>
																		<div class="col-md-6">
																			<s:if test="%{loginUserID==-1}">
																			</s:if>
																			<s:else>
																				<form method="post">
																					<button type="submit" class="btn green pull-left"
																						formaction="reminder.action?loginUserID=<s:property value="loginUserID"/>"
																						formmethod="post">Plan a Journey</button>
																				</form>
																			</s:else>
																		</div>
																	</div>


																	<div class="row">
																		<div class="col-md-6">
																			<h4 class="font-green-sharp">
																				<i class="fa fa-sun-o font-green-sharp" /></i> Weather
																				(Live)
																			</h4>
																			<p>
																				Temperature:
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
																	<p>
																		<s:property value="recommandation.recommandation" />
																	</p>
																</div>
															</div>
															<br />

															<div class="row">
																<div class="col-md-6">
																	<h4 class="font-green-sharp">
																		<i class="fa fa-tag font-green-sharp" /></i> Write Your
																		Review
																	</h4>
																</div>
															</div>
															<div class="row">
																<div class="col-md-4">
																	<textarea id="comments" name="comments"
																		class="form-control" rows="5"></textarea>
																</div>
																<div class="col-md-1"
																	style="position:relative;left:10px;top:80px;">
																	<div class="examples">
																		<div class="row">
																			<div class="col col-fullwidth">
																				<div
																					class="star-ratings start-ratings-main clearfix">
																					<div class="stars stars-example-fontawesome">
																						<select id="example-fontawesome" name="rating"
																							autocomplete="off">
																							<option value="1">1</option>
																							<option value="2">2</option>
																							<option value="3">3</option>
																							<option value="4">4</option>
																							<option value="5">5</option>
																						</select>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-md-2">
																	<input type="submit" class="btn green-sharp"
																		onclick="submitAndRefresh()"
																		style="position:relative;left:20px;top:75px;" />
																</div>
															</div>
															<br /> <br />
															<div class="row">
																<div id="ratingList" class="col-md-12">
																	<h4 class="font-green-sharp">
																		<i class="fa fa-tag font-green-sharp" /></i> Reviews
																	</h4>
																	<div
																		class="table-scrollable table-scrollable-borderless">
																		<table class="table table-hover table-light">
																			<thead class="flip-content">
																				<tr class="uppercase">
																					<th>Beach Name</th>
																					<th>Ratings</th>
																					<th>Reviews</th>

																				</tr>
																			</thead>
																			<tbody>
																				<s:iterator value="ratingList" id="rating">
																					<tr>
																						<td><s:property value="#rating.beachName" /></td>
																						<td><s:property value="#rating.rating" /></td>
																						<td><s:property value="#rating.comments" /></td>

																					</tr>
																				</s:iterator>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
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

	<script language="javascript">
		function submitAndRefresh() {
			var comments = document.getElementById("comments").value;
	
			var r
			atingnumber = $("#example-fontawesome option:selected").text();
			var beachName = document.getElementById("beachName").value;
			var beachId = document.getElementById("beachId").value;
			alert(beachId);
	
			$.ajax({
				type : 'POST',
				url : 'rating.action?ratingnumber=' + ratingnumber + '&comments=' + comments + '&beachName=' + beachName + '&beachId=' + beachId,
				dataType : 'text',
				success : function(data) {
					$("#ratingList").hide().html(data).fadeIn('fast');
				},
				error : function(jqXhr, textStatus, errorThrown) {
					alert(textStatus);
				}
			});
		}
	</script>
</body>
</html>

