<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<title>Bootstrap Test</title>
<!-- Bootstrap core CSS -->
<link href="<%=basePath%>assets/css/bootstrap/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=basePath%>assets/css/bootstrap/navbar-fixed-top.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="<%=basePath%>assets/js/bootstrap/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">项目名称</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">主页</a></li>
					<li><a href="#freq">频率划分图</a></li>
					<li><a href="#contact">联系我们</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">下拉菜单<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">子菜单1</a></li>
							<li><a href="#">子菜单2</a></li>
							<li><a href="#">子菜单3</a></li>
							<li role="separator" class="divider"></li>
							<li class="dropdown-header">菜单头</li>
							<li><a href="#">子菜单1</a></li>
							<li><a href="#">子菜单2</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="javascript:void(0);">其它链接<span
							class="sr-only">(current)</span></a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container" style="width: 100%">
		<ul class="nav nav-tabs" style="border-right: solid" id="tabs">
			<li><a href="#tab1" data-toggle="tab"
				data-tab-remote="/FreqAlloc/frmAllocation/getAllocations">Tab1</a></li>
			<li><a href="#tab2" data-toggle="tab" data-tab-remote="/tab2url">Tab2</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane fade" id="tab1"></div>
			<div class="tab-pane fade in active" id="tab2"></div>
		</div>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script src="<%=basePath%>assets/js/bootstrap/bootstrap.min.js"></script>
	<script src="<%=basePath%>assets/js/bootstrap/tab.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="<%=basePath%>assets/js/bootstrap/ie10-viewport-bug-workaround.js"></script>
	<script type="text/javascript">
		$('a[data-toggle="tab"]').on('show.bs.tab', function(e) {
			currTabTarget = $(e.target).attr('href');

			var remoteUrl = $(this).attr('data-tab-remote')
			if (remoteUrl !== '') {
				$(currTabTarget).load(remoteUrl)
			}
		})
	</script>
</body>
</html>
