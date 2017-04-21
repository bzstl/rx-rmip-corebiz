<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>

<div id="banner" class="navbar navbar-default ace-save-state banner">
	<img src="${ctx }assets/images/avatars/banner_logo.png">
	<img src="${ctx }assets/images/avatars/banner_title.png">
	<div class="navbar-container ace-save-state" id="navbar-container">
		<button type="button" class="navbar-toggle menu-toggler pull-left"
			id="menu-toggler" data-target="#sidebar">
			<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>

		<div class="navbar-header pull-left">
			<a href="${ctx }index" class="navbar-brand"> <small>
					<i class="fa fa-rocket"></i> 统一信息展示系统
			</small>
			</a>
		</div>

		<div class="navbar-buttons navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">
				<li>
					<div class="nav-search" id="nav-search pull-right"
						style="align: center; margin-top: 10px;">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="查找 ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
				</li>
				<li class="purple"><a data-toggle="dropdown"
					class="dropdown-toggle" href="javascript:" title="1个未处理的任务"> <i
						class="ace-icon fa fa-tasks"></i> <span
						class="badge badge-important">1</span>
				</a></li>
				<li class="green"><a data-toggle="dropdown"
					class="dropdown-toggle" href="javascript:" title="2条未读的消息"> <i
						class="ace-icon fa fa-bell icon-animated-bell"></i> <span
						class="badge badge-success">2</span>
				</a></li>
				<!-- #section:basics/navbar.user_menu -->
				<li class="light-blue"><a data-toggle="dropdown"
					href="javascript:" class="dropdown-toggle"> <img
						class="nav-user-photo"
						src="${ctx }assets/images/avatars/shanghai.jpg"
						alt="我的头像" /> <span class="user-info"> <small>欢迎,</small>测试
					</span> <i class="ace-icon fa fa-caret-down"></i>
				</a>
					<ul
						class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li><a href="javascript:"> <i class="ace-icon fa fa-user"></i>我的信息
						</a></li>
						<li><a href="javascript:"> <i
								class="ace-icon fa fa-unlock-alt"></i>修改密码
						</a></li>
						<li class="divider"></li>
						<li><a id="btnlogout" href="javascript:"> <i
								class="ace-icon fa fa-power-off"></i>退出
						</a></li>
					</ul></li>
		</div>
	</div>
	<!-- /.navbar-container -->
</div>