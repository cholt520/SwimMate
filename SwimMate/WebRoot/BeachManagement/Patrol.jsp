<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>

<!DOCTYPE html>

<html lang="en">
<head>
<!-- <meta charset="utf-8" /> -->
<title>Find Patrol Information</title>
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
	 <link href="../assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
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
							<div class="page-logo" style="height:100px;">
								<a href="index.action"> <img
									src="../image/swimmate-logo-nobg.png" alt="logo"
									class="logo-default" style="width:160px; height:98px; margin-top:2px;">
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
							<!-- BEGIN HEADER SEARCH BOX -->
							<%-- <form class="search-form" action="page_general_search.html"
								method="GET">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search"
										name="query"> <span class="input-group-btn"> <a
										href="javascript:;" class="btn submit"> <i
											class="icon-magnifier"></i>
									</a>
									</span>
								</div>
							</form> --%>
							<!-- END HEADER SEARCH BOX -->
							<!-- BEGIN MEGA MENU -->
							<!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
							<!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
							<div class="hor-menu  ">
								<ul class="nav navbar-nav ">
									<li class="menu-dropdown classic-menu-dropdown "><a
										href="javascript:;" > Home Page <span class="arrow"></span>
									</a>
										<ul class="dropdown-menu pull-left">
											<li class=" "><a href="beach.action" class="nav-link  ">
													<i class="fa fa-search font-green-sharp"></i> Find Patrol Information
											</a></li>
											<!-- <li class=" "><a href="dashboard_2.html"
												class="nav-link  "> <i class="icon-bulb font-green-sharp"></i>
													SubFunction2
											</a></li>
											<li class=" "><a href="dashboard_3.html"
												class="nav-link  "> <i class="icon-graph font-green-sharp"></i>
													SubFunction3
											</a></li> -->
										</ul></li>
									<%-- <li class="menu-dropdown mega-menu-dropdown  "><a
										href="javascript:;"> Function2 <span class="arrow"></span>
									</a>
										<ul class="dropdown-menu pull-left">
											<li class=" "><a href="index.html" class="nav-link  ">
													<i class="icon-bar-chart font-green-sharp"></i> SubFunction1
											</a></li>
											<li class=" "><a href="dashboard_2.html"
												class="nav-link  "> <i class="icon-bulb font-green-sharp" ></i>
													SubFunction2
											</a></li>
											<li class=" "><a href="dashboard_3.html"
												class="nav-link  "> <i class="icon-graph font-green-sharp"></i>
													SubFunction3
											</a></li>
										</ul></li>
									<li class="menu-dropdown classic-menu-dropdown "><a
										href="javascript:;"> Function3 <span class="arrow"></span>
									</a>
										<ul class="dropdown-menu pull-left">
											<li class=" "><a href="index.html" class="nav-link  ">
													<i class="icon-bar-chart font-green-sharp"></i> SubFunction1
											</a></li>
											<li class=" "><a href="dashboard_2.html"
												class="nav-link  "> <i class="icon-bulb font-green-sharp"></i>
													SubFunction2
											</a></li>
											<li class=" "><a href="dashboard_3.html"
												class="nav-link  "> <i class="icon-graph font-green-sharp"></i>
													SubFunction3
											</a></li>
										</ul></li> --%>
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
									<h1 >Find Patrol Information</h1>
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
									<li><a href="index.action" class="font-green-sharp">Home</a> <i class="fa fa-circle"></i>
									</li>
									<li><span>Find Patrol Information</span></li>
								</ul>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="search-page search-content-2">
										<!-- <div class="row">
											<div class="col-md-12">
												<img src="../image/beach1.jpg" alt="St_Kilda_Beach" style="width: 100%; height: auto;"/>
											</div>
		                                </div>
		                                <br/>
		                                <br/> -->
										<!--Search Bar-->
										<div class="search-bar ">
											<div class="row">
												<div class="col-md-12">
                                           			<s:form action="getBeachByName.action">
														<div class="input-group">
															<input name="beachName" type="text" class="form-control" placeholder="Search Patrol" >
															<span class="input-group-btn">
																 <button class="btn green-sharp uppercase bold" type="submit">Search</button>
															</span>
														</div>
													</s:form>
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
                                                            <i class="fa fa-cogs"></i>Patrol Information </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                                            <a href="javascript:;" class="reload"> </a>
                                                            <a href="javascript:;" class="remove"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body flip-scroll">
                                                        <table class="table table-bordered table-striped table-condensed flip-content">
                                                            <thead class="flip-content">
                                                                <tr>
                                                                    <th width="20%"> Name </th>
                                                                    <th> Coarch </th>
                                                                    <th class="numeric"> Beach Name </th>
                                                                    <th class="numeric"> Location </th>
                                                                    
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td> AAC </td>
                                                                    <td> AUSTRALIAN AGRICULTURAL COMPANY LIMITED. </td>
                                                                    <td class="numeric"> &nbsp; </td>
                                                                    <td class="numeric"> -0.01 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> AAD </td>
                                                                    <td> ARDENT LEISURE GROUP </td>
                                                                    <td class="numeric"> $1.15 </td>
                                                                    <td class="numeric"> +0.02 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> AAX </td>
                                                                    <td> AUSENCO LIMITED </td>
                                                                    <td class="numeric"> $4.00 </td>
                                                                    <td class="numeric"> -0.04 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> ABC </td>
                                                                    <td> ADELAIDE BRIGHTON LIMITED </td>
                                                                    <td class="numeric"> $3.00 </td>
                                                                    <td class="numeric"> +0.06 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> ABP </td>
                                                                    <td> ABACUS PROPERTY GROUP </td>
                                                                    <td class="numeric"> $1.91 </td>
                                                                    <td class="numeric"> 0.00 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> ABY </td>
                                                                    <td> ADITYA BIRLA MINERALS LIMITED </td>
                                                                    <td class="numeric"> $0.77 </td>
                                                                    <td class="numeric"> +0.02 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> ACR </td>
                                                                    <td> ACRUX LIMITED </td>
                                                                    <td class="numeric"> $3.71 </td>
                                                                    <td class="numeric"> +0.01 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> ADU </td>
                                                                    <td> ADAMUS RESOURCES LIMITED </td>
                                                                    <td class="numeric"> $0.72 </td>
                                                                    <td class="numeric"> 0.00 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> AGG </td>
                                                                    <td> ANGLOGOLD ASHANTI LIMITED </td>
                                                                    <td class="numeric"> $7.81 </td>
                                                                    <td class="numeric"> -0.22 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> AGK </td>
                                                                    <td> AGL ENERGY LIMITED </td>
                                                                    <td class="numeric"> $13.82 </td>
                                                                    <td class="numeric"> +0.02 </td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td> AGO </td>
                                                                    <td> ATLAS IRON LIMITED </td>
                                                                    <td class="numeric"> $3.17 </td>
                                                                    <td class="numeric"> -0.02 </td>
                                                                    
                                                                </tr>
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
				<!-- BEGIN PRE-FOOTER -->
				<div class="page-prefooter">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12 footer-block">
								<h2>About Us</h2>
								<p>C.A.R.T. Solutions 
								<br />
								-- Creativity, Aesthetics, Robustness and good Technology.</p>
							</div>

							<!-- <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
								<h2>Follow Us On</h2>
								<ul class="social-icons">
									<li><a href="javascript:;" data-original-title="rss"
										class="rss"></a></li>
									<li><a href="javascript:;" data-original-title="facebook"
										class="facebook"></a></li>
									<li><a href="javascript:;" data-original-title="twitter"
										class="twitter"></a></li>
									<li><a href="javascript:;"
										data-original-title="googleplus" class="googleplus"></a></li>
									<li><a href="javascript:;" data-original-title="linkedin"
										class="linkedin"></a></li>
									<li><a href="javascript:;" data-original-title="youtube"
										class="youtube"></a></li>
									<li><a href="javascript:;" data-original-title="vimeo"
										class="vimeo"></a></li>
								</ul>
							</div> -->
							<div class="col-md-6 col-sm-6 col-xs-12 footer-block">
								<h2>Contacts</h2>
								<address class="margin-bottom-40">
									<br/> 
									Email: <a href="mailto:lzuo5@student.monash.edu">lzuo5@student.monash.edu</a>
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
	<!--[if lt IE 9]>
<script src="../assets/global/plugins/respond.min.js"></script>
<script src="../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
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
	<script src="../assets/global/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/jquery-bootpag/jquery.bootpag.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/holder.js" type="text/javascript"></script>
    
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
	<script src="../assets/pages/scripts/ui-buttons.min.js"
		type="text/javascript"></script>
	<script src="../assets/pages/scripts/search.min.js"
		type="text/javascript"></script>
	 <script src="../assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
     <script src="../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
	<script src="../assets/pages/scripts/ui-general.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<script src="../assets/layouts/layout3/scripts/layout.min.js"
		type="text/javascript"></script>
	<script src="../assets/layouts/layout3/scripts/demo.min.js"
		type="text/javascript"></script>
	<script src="../assets/layouts/global/scripts/quick-sidebar.min.js"
		type="text/javascript"></script>
	<!-- END THEME LAYOUT SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="../assets/pages/scripts/table-datatables-managed.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>
