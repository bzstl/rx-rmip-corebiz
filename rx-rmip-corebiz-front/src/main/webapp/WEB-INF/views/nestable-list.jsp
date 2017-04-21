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
		<title>Nestable lists - Ace Admin</title>

		<meta name="description" content="Drag &amp; drop hierarchical list" />
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
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">UI &amp; Elements</a>
							</li>
							<li class="active">Nestable Lists</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>

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
							<h1>
								Nestable lists
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Drag &amp; drop hierarchical list
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-sm-6">
										<div class="dd" id="nestable">
											<ol class="dd-list">
												<li class="dd-item" data-id="1">
													<div class="dd-handle">
														Item 1
														<i class="pull-right bigger-130 ace-icon fa fa-exclamation-triangle orange2"></i>
													</div>
												</li>

												<li class="dd-item" data-id="2">
													<div class="dd-handle">Item 2</div>

													<ol class="dd-list">
														<li class="dd-item" data-id="3">
															<div class="dd-handle">
																Item 3
																<a data-rel="tooltip" data-placement="left" title="Change Date" href="#" class="pull-right tooltip-info btn btn-primary btn-mini btn-white btn-bold">
																	<i class="bigger-120 ace-icon fa fa-calendar"></i>
																</a>
															</div>
														</li>

														<li class="dd-item" data-id="4">
															<div class="dd-handle">
																<span class="orange">Item 4</span>
																<span class="lighter grey">
																	&nbsp; with some description
																</span>
															</div>
														</li>

														<li class="dd-item" data-id="5">
															<div class="dd-handle">
																Item 5
																<div class="pull-right action-buttons">
																	<a class="blue" href="#">
																		<i class="ace-icon fa fa-pencil bigger-130"></i>
																	</a>

																	<a class="red" href="#">
																		<i class="ace-icon fa fa-trash-o bigger-130"></i>
																	</a>
																</div>
															</div>

															<ol class="dd-list">
																<li class="dd-item item-orange" data-id="6">
																	<div class="dd-handle"> Item 6 </div>
																</li>

																<li class="dd-item item-red" data-id="7">
																	<div class="dd-handle">Item 7</div>
																</li>

																<li class="dd-item item-blue2" data-id="8">
																	<div class="dd-handle">Item 8</div>
																</li>
															</ol>
														</li>

														<li class="dd-item" data-id="9">
															<div class="dd-handle btn-yellow no-hover">Item 9</div>
														</li>

														<li class="dd-item" data-id="10">
															<div class="dd-handle">Item 10</div>
														</li>
													</ol>
												</li>

												<li class="dd-item" data-id="11">
													<div class="dd-handle">
														Item 11
														<span class="sticker">
															<span class="label label-success arrowed-in">
																<i class="ace-icon fa fa-check bigger-110"></i>
															</span>
														</span>
													</div>
												</li>

												<li class="dd-item" data-id="12">
													<div class="dd-handle">Item 12</div>
												</li>
											</ol>
										</div>
									</div>

									<div class="vspace-16-sm"></div>

									<div class="col-sm-6">
										<div class="dd dd-draghandle">
											<ol class="dd-list">
												<li class="dd-item dd2-item" data-id="13">
													<div class="dd-handle dd2-handle">
														<i class="normal-icon ace-icon fa fa-comments blue bigger-130"></i>

														<i class="drag-icon ace-icon fa fa-arrows bigger-125"></i>
													</div>
													<div class="dd2-content">Click on an icon to start dragging</div>
												</li>

												<li class="dd-item dd2-item" data-id="14">
													<div class="dd-handle dd2-handle">
														<i class="normal-icon ace-icon fa fa-clock-o pink bigger-130"></i>

														<i class="drag-icon ace-icon fa fa-arrows bigger-125"></i>
													</div>
													<div class="dd2-content">Recent Posts</div>
												</li>

												<li class="dd-item dd2-item" data-id="15">
													<div class="dd-handle dd2-handle">
														<i class="normal-icon ace-icon fa fa-signal orange bigger-130"></i>

														<i class="drag-icon ace-icon fa fa-arrows bigger-125"></i>
													</div>
													<div class="dd2-content">Statistics</div>

													<ol class="dd-list">
														<li class="dd-item dd2-item" data-id="16">
															<div class="dd-handle dd2-handle">
																<i class="normal-icon ace-icon fa fa-user red bigger-130"></i>

																<i class="drag-icon ace-icon fa fa-arrows bigger-125"></i>
															</div>
															<div class="dd2-content">Active Users</div>
														</li>

														<li class="dd-item dd2-item dd-colored" data-id="17">
															<div class="dd-handle dd2-handle btn-info">
																<i class="normal-icon ace-icon fa fa-pencil-square-o bigger-130"></i>

																<i class="drag-icon ace-icon fa fa-arrows bigger-125"></i>
															</div>
															<div class="dd2-content btn-info no-hover">Published Articles</div>
														</li>

														<li class="dd-item dd2-item" data-id="18">
															<div class="dd-handle dd2-handle">
																<i class="normal-icon ace-icon fa fa-eye green bigger-130"></i>

																<i class="drag-icon ace-icon fa fa-arrows bigger-125"></i>
															</div>
															<div class="dd2-content">Visitors</div>
														</li>
													</ol>
												</li>

												<li class="dd-item dd2-item" data-id="19">
													<div class="dd-handle dd2-handle">
														<i class="normal-icon ace-icon fa fa-bars blue bigger-130"></i>

														<i class="drag-icon ace-icon fa fa-arrows bigger-125"></i>
													</div>
													<div class="dd2-content">Menu</div>
												</li>
											</ol>
										</div>
									</div>
								</div><!-- PAGE CONTENT ENDS -->
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
		<script src="<%=basePath%>assets/js/jquery.nestable.min.js"></script>

		<!-- ace scripts -->
		<script src="<%=basePath%>assets/js/ace-elements.min.js"></script>
		<script src="<%=basePath%>assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($){
			
				$('.dd').nestable();
			
				$('.dd-handle a').on('mousedown', function(e){
					e.stopPropagation();
				});
				
				$('[data-rel="tooltip"]').tooltip();
			
			});
		</script>
	</body>
</html>
