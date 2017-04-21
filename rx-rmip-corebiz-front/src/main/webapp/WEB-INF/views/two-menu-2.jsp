<%@page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Two Menu Style - Ace Admin</title>

		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath%>assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="<%=basePath%>assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<%=basePath%>assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="<%=basePath%>assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="<%=basePath%>assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<%=basePath%>assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="<%=basePath%>assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="<%=basePath%>assets/js/html5shiv.min.js"></script>
		<script src="<%=basePath%>assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<%@include file="../common/header.jsp" %>
		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<%@include file="../common/sidebar.jsp" %>
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						<div class="ace-settings-container" id="ace-settings-container">
							<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</div>

							<div class="ace-settings-box clearfix" id="ace-settings-box">
								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<div class="pull-left">
											<select id="skin-colorpicker" class="hide">
												<option data-skin="no-skin" value="#438EB9">#438EB9</option>
												<option data-skin="skin-1" value="#222A2D">#222A2D</option>
												<option data-skin="skin-2" value="#C6487E">#C6487E</option>
												<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
											</select>
										</div>
										<span>&nbsp; Choose Skin</span>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
										<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
										<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
										<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
										<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
										<label class="lbl" for="ace-settings-add-container">
											Inside
											<b>.container</b>
										</label>
									</div>
								</div><!-- /.pull-left -->

								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
										<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
										<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
										<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
									</div>
								</div><!-- /.pull-left -->
							</div><!-- /.ace-settings-box -->
						</div><!-- /.ace-settings-container -->

						<div class="page-header">
							<h1>Two Menu Style </h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="invisible">
									<button data-target="#sidebar2" type="button" class="pull-left menu-toggler navbar-toggle">
										<span class="sr-only">Toggle sidebar</span>

										<i class="ace-icon fa fa-dashboard white bigger-125"></i>
									</button>

									<div id="sidebar2" class="sidebar responsive menu-min ace-save-state">
										<ul class="nav nav-list">
											<li>
												<a href="#">
													<i class="menu-icon fa fa-tachometer"></i>
													<span class="menu-text"> Dashboard </span>
												</a>

												<b class="arrow"></b>
											</li>

											<li>
												<a href="#">
													<i class="menu-icon fa fa-list-alt"></i>
													<span class="menu-text">Widgets</span>
												</a>

												<b class="arrow"></b>
											</li>

											<li>
												<a href="#">
													<i class="menu-icon fa fa-calendar"></i>

													<span class="menu-text">
														Calendar
														<span title="" class="badge badge-transparent tooltip-error" data-original-title="2 Important Events">
															<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
														</span>
													</span>
												</a>

												<b class="arrow"></b>
											</li>

											<li>
												<a href="#">
													<i class="menu-icon fa fa-picture-o"></i>
													<span class="menu-text"> Gallery </span>
												</a>

												<b class="arrow"></b>
											</li>

											<li>
												<a class="dropdown-toggle" href="#">
													<i class="menu-icon fa fa-tag"></i>
													<span class="menu-text"> More Pages </span>

													<b class="arrow fa fa-angle-down"></b>
												</a>

												<b class="arrow"></b>

												<ul class="submenu">
													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															User Profile
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Inbox
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Pricing Tables
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Invoice
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Timeline
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Email Templates
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Login &amp; Register
														</a>

														<b class="arrow"></b>
													</li>
												</ul>
											</li>

											<li>
												<a class="dropdown-toggle" href="#">
													<i class="menu-icon fa fa-file-o"></i>

													<span class="menu-text">
														Other Pages
														<span class="badge badge-primary">5</span>
													</span>

													<b class="arrow fa fa-angle-down"></b>
												</a>

												<b class="arrow"></b>

												<ul class="submenu">
													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															FAQ
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Error 404
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Error 500
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Grid
														</a>

														<b class="arrow"></b>
													</li>

													<li>
														<a href="#">
															<i class="menu-icon fa fa-caret-right"></i>
															Blank Page
														</a>

														<b class="arrow"></b>
													</li>
												</ul>
											</li>
										</ul><!-- /.nav-list -->

										<div class="sidebar-toggle sidebar-collapse">
											<i id="sidebar3-toggle-icon" class="ace-icon fa fa-angle-double-right ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
										</div>
									</div><!-- .sidebar -->
								</div>

								<div class="hidden-sm hidden-xs">
									<button type="button" class="sidebar-collapse btn btn-white btn-primary" data-target="#sidebar">
										<i id="sidebar4-toggle-icon" class="ace-icon fa fa-angle-double-up ace-save-state" data-icon1="ace-icon fa fa-angle-double-up" data-icon2="ace-icon fa fa-angle-double-down"></i>
										Collapse/Expand Menu
									</button>
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<%@include file="../common/footer.jsp" %>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="<%=basePath%>assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="<%=basePath%>assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=basePath%>assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->
		<script src="<%=basePath%>assets/js/ace-elements.min.js"></script>
		<script src="<%=basePath%>assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			   $('#sidebar2').insertBefore('.page-content');
			   $('#navbar').addClass('h-navbar');
			   $('.footer').insertAfter('.page-content');
			   
			   $('.page-content').addClass('main-content');
			   
			   $('.menu-toggler[data-target="#sidebar2"]').insertBefore('.navbar-brand');
			   
			   
			   $(document).on('settings.ace.two_menu', function(e, event_name, event_val) {
				 if(event_name == 'sidebar_fixed') {
					 if( $('#sidebar').hasClass('sidebar-fixed') ) $('#sidebar2').addClass('sidebar-fixed')
					 else $('#sidebar2').removeClass('sidebar-fixed')
				 }
			   }).triggerHandler('settings.ace.two_menu', ['sidebar_fixed' ,$('#sidebar').hasClass('sidebar-fixed')]);
			   
			   $('#sidebar2[data-sidebar-hover=true]').ace_sidebar_hover('reset');
			   $('#sidebar2[data-sidebar-scroll=true]').ace_sidebar_scroll('reset', true);
			})
		</script>
	</body>
</html>
