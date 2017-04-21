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
<title>无线电台设置新办</title>

<meta name="description" content="Static &amp; Dynamic Tables" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />




<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=basePath%>assets/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet"
	href="<%=basePath%>assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="<%=basePath%>assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

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


<!-- --------------------------------  样式      ------------------------------------>


<link rel="stylesheet" href="<%=basePath%>assets/css/common.css" />


</head>

<body class="no-skin" style="margin: 0; padding: 0;">
	<%@include file="../../common/header.jsp"%>
	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

		<%@include file="../../common/sidebar.jsp"%>
		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="ace-icon fa fa-home home-icon"></i> <a
								href="<%=basePath%>index">主页</a></li>

							<li><a href="#">无线电台（站）设置</a></li>
							<li class="active">新办</li>
						</ul>
						<!-- /.breadcrumb -->

						<!-- 		<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div>/.nav-search -->
					</div>


					<div class="container">
						<div class="row">
							<div id="myDiv" class="col-md-12" align="right">
								<!-- 添加内容 -->
								<%@include file="formT.jsp"%>
							</div>
							<!-- col-myDiv-->
						</div>
						<!-- row -->
					</div>
					<!-- container -->
				</div>
				<!-- page-content  -->
			</div>
		</div>
		<!-- /.main-content -->

		<%@include file="../../common/footer.jsp"%>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script src="<%=basePath%>assets/js/jquery-2.1.4.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="<%=basePath%>assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=basePath%>
		assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->
	<script src="<%=basePath%>assets/js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>assets/js/jquery.dataTables.bootstrap.min.js"></script>
	<script src="<%=basePath%>assets/js/dataTables.buttons.min.js"></script>
	<script src="<%=basePath%>assets/js/buttons.flash.min.js"></script>
	<script src="<%=basePath%>assets/js/buttons.html5.min.js"></script>
	<script src="<%=basePath%>assets/js/buttons.print.min.js"></script>
	<script src="<%=basePath%>assets/js/buttons.colVis.min.js"></script>
	<script src="<%=basePath%>assets/js/dataTables.select.min.js"></script>

	<!-- ace scripts -->
	<script src="<%=basePath%>assets/js/ace-elements.min.js"></script>
	<script src="<%=basePath%>assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->



	<!-- 页面校验(将来要把它写在资料表的jsp里面) -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery.validate.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/station/validate/FormValidate.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/station/validate/validateHelper.js"></script>





</body>
</html>
