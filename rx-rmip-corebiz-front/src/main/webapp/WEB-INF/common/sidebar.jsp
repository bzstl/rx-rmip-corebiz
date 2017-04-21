<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>

<script src="${ctx }assets/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('.nav-list').children('li').bind('click',function(e){
			// $(this).addClass('active');
		});
	});
</script>
<div id="sidebar" class="sidebar responsive ace-save-state">
	<script type="text/javascript">
		try{ace.settings.loadState('sidebar')}catch(e){}
	</script>

	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <h4>
                <i id="menuicon" class="ace-icon fa fa-rocket orange"></i>
                <strong id="menutitle">标题</strong>
            </h4>
            <!-- /section:basics/sidebar.layout.shortcuts -->
        </div>
        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <h5>
                <i id="menuicon-mini" class="ace-icon fa orange"></i>
            </h5>
        </div>
    </div><!-- /.sidebar-shortcuts -->

	<ul class="nav nav-list">
	<!-- 展示的代码，以后删掉  -->
				<%-- <li class="">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						频率划分
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>
					<ul class="submenu">
						<li class="">
							<a href="${ctx }alloc/allocComparePicture"> 
							<a href="${ctx }alloc/getAllocations" target="_blank">
								<i class="menu-icon fa fa-caret-right"></i>
								频率划分图
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="${ctx }alloc/allocCompareAll">
								<i class="menu-icon fa fa-caret-right"></i>
								频率划分对比
							</a>

							<b class="arrow"></b>
						</li>
					</ul>
				</li> --%>
				
				
				<li class="">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						图表
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>
					<ul class="submenu">
						<li class="" onclick="ok('charts/piechart');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								饼图
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								柱图
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart2');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								柱图2
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/table');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								表格
							</a>
							<b class="arrow"></b>
						</li>
					</ul>
				</li>
				
				<li class="" onclick="ok('charts/chartMain');">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						综合信息
						
					</a>

					<b class="arrow"></b>
				</li>
				<li class="">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						频率信息
						<b class="arrow fa fa-angle-down"></b>
					</a>
					<ul class="submenu">
						<li class="" onclick="ok('charts/axischart8');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								频率日常统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/table2');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								分行业统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/table7');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								分业务系统统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/table');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								频率信息统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/table8');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								频率指配统计
							</a>
							<b class="arrow"></b>
						</li>
					</ul>

					<b class="arrow"></b>
				</li>
				<li class="">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						台站信息
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>
					<ul class="submenu">
						<li class="" onclick="ok('charts/axischart');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								行业统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart9');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								业务统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart2');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								体制统计
							</a>
							<b class="arrow"></b>
						</li>
					</ul>
				</li>
				<li class="">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						审批信息
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>
					<ul class="submenu">
						<li class="" onclick="ok('charts/axischart3');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								行政审批统计
							</a>
							<b class="arrow"></b>
						</li>
						
						<li class="" onclick="ok('charts/axischart4');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								行政审批年度趋势
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/radar');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								单位审批统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart11');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								公用移动审批统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart10');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								自定义统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart10');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								征询统计（待开发）
							</a>
							<b class="arrow"></b>
						</li>
					</ul>
				</li>
				<li class="">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						频占费收缴信息
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>
					<ul class="submenu">
						<li class="" onclick="ok('charts/axischart5');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								年度缴费统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart12');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								历年缴费统计
							</a>
							<b class="arrow"></b>
						</li>
					</ul>
				</li>
				<li class="">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						投诉执法信息
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>
					<ul class="submenu">
						<li class="" onclick="ok('charts/axischart7');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								信访信息统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart14');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								信用统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/table3');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								月报
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/table4');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								季报
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/table5');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								年报
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart13');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								自定义信访报表
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart13');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								诚信信息（待开发）
							</a>
							<b class="arrow"></b>
						</li>
					</ul>
				</li>
				<li class="">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						活动保障信息
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>
					<ul class="submenu">
						<li class="" onclick="ok('charts/axischart6');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								年度保障统计
							</a>
							<b class="arrow"></b>
						</li>
						<li class="" onclick="ok('charts/axischart17');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								保障信息分类统计
							</a>
							<b class="arrow"></b>
						</li>
					</ul>
				</li>
				<li class="" onclick="ok('charts/table10');">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						日常事务
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>
				</li>
				<li class="" onclick="ok('charts/table6');">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						办公事务
						<b class="arrow fa fa-angle-down"></b>
					</a>
					<b class="arrow"></b>
					<ul class="submenu">
						<li class="" onclick="ok('charts/table9');">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								应急指挥方案
							</a>
							<b class="arrow"></b>
						</li>
					</ul>
				</li>
				
				
				<%-- <li class="">
					<a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						无线电台(站)新办
						<b class="arrow fa fa-angle-down"></b>
					</a>
					<b class="arrow"></b>
					<ul class="submenu">
						<li  class="">
							<a href="${ctx }setApp">
								<i  class="menu-icon fa fa-caret-right"></i>
								台（站）申请表
							</a>
		
							<b class="arrow"></b>
						</li>
						<li id="H" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表3
							</a>
							<b class="arrow"></b>
						</li>
						<li id="LM" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表4
							</a>
							<b class="arrow"></b>
						</li>
						<li id="TF" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表5
							</a>
							<b class="arrow"></b>
						</li>
						<li id="E" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表6
							</a>
							<b class="arrow"></b>
						</li>
						<li id="B" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表7
							</a>
							<b class="arrow"></b>
						</li>
						<li id="S" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表8
							</a>
							<b class="arrow"></b>
						</li>
						<li id="A" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表9
							</a>
							<b class="arrow"></b>
						</li>
						<li id="R" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表10
							</a>
							<b class="arrow"></b>
						</li>
						<li id="C" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表11
							</a>
							<b class="arrow"></b>
						</li>
						<li id="D" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表12
							</a>
							<b class="arrow"></b>
						</li>
						<li id="V" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表13
							</a>
							<b class="arrow"></b>
						</li>
						<li id="ME" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表14
							</a>
							<b class="arrow"></b>
						</li>
					</ul>
				</li> --%>
		
		<%-- <li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 行政审批受理 </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						频率申请新办
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						频率申请延续
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-wizard.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						频率注销
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="wysiwyg.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						无线电呼号审批
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="dropzone.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						无线电台设置新办
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="dropzone.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						无线电台注销
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="dropzone.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						业务表单管理
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="dropzone.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						缴费受理
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="dropzone.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						信访受理
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="dropzone.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						咨询服务受理
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="dropzone.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						业务查询
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 频率规划管理</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>
						频率划分
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>
					<ul class="submenu">
						<li class="">
							<a href="${ctx }alloc/allocComparePicture">
								<i class="menu-icon fa fa-caret-right"></i>
								频率划分图
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="${ctx }alloc/allocCompareAll">
								<i class="menu-icon fa fa-caret-right"></i>
								频率划分对比
							</a>

							<b class="arrow"></b>
						</li>
					</ul>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						频率规划
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="widgets.jsp">
				<i class="menu-icon fa fa-list-alt"></i>
				<span class="menu-text"> 频率信息管理 </span>
			</a>

			<b class="arrow"></b>
		</li>
		
		<li class="">
			<a href="widgets.jsp">
				<i class="menu-icon fa fa-list-alt"></i>
				<span class="menu-text"> 频率储备和保护 </span>
			</a>

			<b class="arrow"></b>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 频率指配业务</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						新办
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						延续
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						注销
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 无线电台(站)呼号  </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						新办
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						注销
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 无线电台(站)设置 </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						新办
					</a>

					<b class="arrow"></b>
					<ul class="submenu">
						<li  class="">
							<a href="${ctx }setApp">
								<i  class="menu-icon fa fa-caret-right"></i>
								台（站）申请表
							</a>
		
							<b class="arrow"></b>
						</li>
						<li id="H" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表3
							</a>
							<b class="arrow"></b>
						</li>
						<li id="LM" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表4
							</a>
							<b class="arrow"></b>
						</li>
						<li id="TF" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表5
							</a>
							<b class="arrow"></b>
						</li>
						<li id="E" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表6
							</a>
							<b class="arrow"></b>
						</li>
						<li id="B" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表7
							</a>
							<b class="arrow"></b>
						</li>
						<li id="S" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表8
							</a>
							<b class="arrow"></b>
						</li>
						<li id="A" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表9
							</a>
							<b class="arrow"></b>
						</li>
						<li id="R" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表10
							</a>
							<b class="arrow"></b>
						</li>
						<li id="C" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表11
							</a>
							<b class="arrow"></b>
						</li>
						<li id="D" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表12
							</a>
							<b class="arrow"></b>
						</li>
						<li id="V" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表13
							</a>
							<b class="arrow"></b>
						</li>
						<li id="ME" class="">
							<a href="#">
								<i class="menu-icon fa fa-caret-right"></i>
								技术资料表14
							</a>
							<b class="arrow"></b>
						</li>
					</ul>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						延续
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						注销
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="widgets.jsp">
				<i class="menu-icon fa fa-list-alt"></i>
				<span class="menu-text"> 无线电设备进关核准 </span>
			</a>

			<b class="arrow"></b>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 申请用户管理 </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						新增用户
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						修改用户
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						查询用户
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="widgets.jsp">
				<i class="menu-icon fa fa-list-alt"></i>
				<span class="menu-text"> 频率批文管理 </span>
			</a>

			<b class="arrow"></b>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 频率占用费管理 </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						缴费参数设置
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						缴费数据审核
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 台站执照管理</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						台站过期提醒
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						执照维护
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 频率/台站不定期管理</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						监测任务管理
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						检测任务管理
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="widgets.jsp">
				<i class="menu-icon fa fa-list-alt"></i>
				<span class="menu-text"> 统计与查询 </span>
			</a>

			<b class="arrow"></b>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 信访投诉</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						信访台账
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						投诉受理
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						任务派发
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						结果维护
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						查询统计
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 查处执法</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						执法任务记录
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						任务接收
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						执法处理
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 无线电用户信用管理 </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						法人信息查询
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						信用查询
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						信用上报
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						信用记录
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 联合执法管理</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						方案管理
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						任务分配
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						结果维护
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 干扰管理</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						受访登记
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						任务派发
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						结果维护
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 监测业务管理 </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						任务下发
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						执法结果查询
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> 检测业务管理 </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="form-elements.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						任务下发
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						任务接收
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						任务查询
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						任务处理
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a href="form-elements-2.jsp">
						<i class="menu-icon fa fa-caret-right"></i>
						报告管理
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>--%>
		
		<li class="">
			<a href="${ctx }sidebaritems?itemsname=index">
				<i class="menu-icon fa fa-tachometer"></i>
				<span class="menu-text"> Dashboard </span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-desktop"></i>
				<span class="menu-text">
					UI &amp; Elements
				</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>

						Layouts
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>

					<ul class="submenu">
						<li class="">
							<a href="${ctx }top-menu">
								<i class="menu-icon fa fa-caret-right"></i>
								Top Menu
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="${ctx }sidebaritems?itemsname=two-menu-1">
								<i class="menu-icon fa fa-caret-right"></i>
								Two Menus 1
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="${ctx }sidebaritems?itemsname=two-menu-2">
								<i class="menu-icon fa fa-caret-right"></i>
								Two Menus 2
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="${ctx }sidebaritems?itemsname=mobile-menu-1">
								<i class="menu-icon fa fa-caret-right"></i>
								Default Mobile Menu
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="${ctx }sidebaritems?itemsname=mobile-menu-2">
								<i class="menu-icon fa fa-caret-right"></i>
								Mobile Menu 2
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="${ctx }sidebaritems?itemsname=mobile-menu-3">
								<i class="menu-icon fa fa-caret-right"></i>
								Mobile Menu 3
							</a>

							<b class="arrow"></b>
						</li>
					</ul>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=typography">
						<i class="menu-icon fa fa-caret-right"></i>
						Typography
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=elements">
						<i class="menu-icon fa fa-caret-right"></i>
						Elements
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=buttons">
						<i class="menu-icon fa fa-caret-right"></i>
						Buttons &amp; Icons
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=content-slider">
						<i class="menu-icon fa fa-caret-right"></i>
						Content Sliders
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=treeview">
						<i class="menu-icon fa fa-caret-right"></i>
						Treeview
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=jquery-ui">
						<i class="menu-icon fa fa-caret-right"></i>
						jQuery UI
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=nestable-list">
						<i class="menu-icon fa fa-caret-right"></i>
						Nestable Lists
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>

						Three Level Menu
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>

					<ul class="submenu">
						<li class="">
							<a href="#">
								<i class="menu-icon fa fa-leaf green"></i>
								Item #1
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="#" class="dropdown-toggle">
								<i class="menu-icon fa fa-pencil orange"></i>

								4th level
								<b class="arrow fa fa-angle-down"></b>
							</a>

							<b class="arrow"></b>

							<ul class="submenu">
								<li class="">
									<a href="#">
										<i class="menu-icon fa fa-plus purple"></i>
										Add Product
									</a>

									<b class="arrow"></b>
								</li>

								<li class="">
									<a href="#">
										<i class="menu-icon fa fa-eye pink"></i>
										View Products
									</a>

									<b class="arrow"></b>
								</li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-list"></i>
				<span class="menu-text"> Tables </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="${ctx }sidebaritems?itemsname=tables">
						<i class="menu-icon fa fa-caret-right"></i>
						Simple &amp; Dynamic
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=jqgrid">
						<i class="menu-icon fa fa-caret-right"></i>
						jqGrid plugin
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> Forms </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="${ctx }sidebaritems?itemsname=form-elements">
						<i class="menu-icon fa fa-caret-right"></i>
						Form Elements
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=form-elements-2">
						<i class="menu-icon fa fa-caret-right"></i>
						Form Elements 2
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=form-wizard">
						<i class="menu-icon fa fa-caret-right"></i>
						Wizard &amp; Validation
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=wysiwyg">
						<i class="menu-icon fa fa-caret-right"></i>
						Wysiwyg &amp; Markdown
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=dropzone">
						<i class="menu-icon fa fa-caret-right"></i>
						Dropzone File Upload
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="${ctx }sidebaritems?itemsname=widgets">
				<i class="menu-icon fa fa-list-alt"></i>
				<span class="menu-text"> Widgets </span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a href="${ctx }sidebaritems?itemsname=calendar">
				<i class="menu-icon fa fa-calendar"></i>

				<span class="menu-text">
					Calendar

					<span class="badge badge-transparent tooltip-error" title="2 Important Events">
						<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
					</span>
				</span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a href="${ctx }sidebaritems?itemsname=gallery">
				<i class="menu-icon fa fa-picture-o"></i>
				<span class="menu-text"> Gallery </span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-tag"></i>
				<span class="menu-text"> More Pages </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="${ctx }sidebaritems?itemsname=profile">
						<i class="menu-icon fa fa-caret-right"></i>
						User Profile
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=inbox">
						<i class="menu-icon fa fa-caret-right"></i>
						Inbox
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=pricing">
						<i class="menu-icon fa fa-caret-right"></i>
						Pricing Tables
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=invoice">
						<i class="menu-icon fa fa-caret-right"></i>
						Invoice
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=timeline">
						<i class="menu-icon fa fa-caret-right"></i>
						Timeline
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=search">
						<i class="menu-icon fa fa-caret-right"></i>
						Search Results
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=email">
						<i class="menu-icon fa fa-caret-right"></i>
						Email Templates
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=login">
						<i class="menu-icon fa fa-caret-right"></i>
						Login &amp; Register
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-file-o"></i>

				<span class="menu-text">
					Other Pages
					<span class="badge badge-primary">5</span>
				</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a href="${ctx }sidebaritems?itemsname=faq">
						<i class="menu-icon fa fa-caret-right"></i>
						FAQ
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=error-404">
						<i class="menu-icon fa fa-caret-right"></i>
						Error 404
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=error-500">
						<i class="menu-icon fa fa-caret-right"></i>
						Error 500
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=grid">
						<i class="menu-icon fa fa-caret-right"></i>
						Grid
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="${ctx }sidebaritems?itemsname=blank">
						<i class="menu-icon fa fa-caret-right"></i>
						Blank Page
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li> 
	</ul><!-- /.nav-list -->
	
	<script type="text/javascript">
	jQuery(function($) {
//对左边框的技术资料表选项绑定ajax请求
		
		formNameList = ['H','LM','TF','E','B','S','A','R','C','D','V','ME'];
		
		
		for(var i=0;i<formNameList.length;i++){
			$("#"+formNameList[i]).click(function(event){
				
				id = this.id;
				
				$.ajax({
					type : 'get',
					url : 'techData/setForm'+id,
					data :{},
					success : function(data){
						$(".page-content").html(data);
					}
				});
			});
		}
	});
		
	</script>
	<script type="text/javascript">
	function ok(url){
		$.ajax({
			type : 'get',
			url : url,
			data :{},
			success : function(data){
				$(".page-content").html(data);
			}
		});
	}
	</script>
	
	
	
	<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
		<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>
</div>







