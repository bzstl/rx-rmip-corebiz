<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
<!-- 引入 ECharts 文件 -->
<script src="${ctx }assets/js/echarts/echarts.js"></script>
<div class="input-group" style="width: 300px">
	<input type="text" class="form-control" name="keywords"
		placeholder="Look within results" />
	<div class="input-group-btn">
		<button type="button" class="btn btn-default no-border btn-sm">
			<i class="ace-icon fa fa-search icon-on-right bigger-110"></i>
		</button>
	</div>
</div>

<div class="btn-group">
	<button data-toggle="dropdown"
		class="btn btn-info btn-lg dropdown-toggle" style="min-width: 160px;">
		<span class="timeType">报 告 类 型</span><input type="hidden"
			class="timeType" name="timeType" value="0"> <i
			class="ace-icon fa fa-angle-down icon-on-right"
			style="float: right; margin-top: 4px;"></i>
	</button>

	<ul class="dropdown-menu dropdown-success dropdown-menu-right">
		<li><a
			onclick="textChange('span.timeType','月 度');$('input.timeType').val('1');">月度</a>
		</li>

		<li><a
			onclick="textChange('span.timeType','季 度');$('input.timeType').val('2');">季度</a>
		</li>
	</ul>
</div>
<!-- /.btn-group -->

<div class="btn-group">
	<button data-toggle="dropdown"
		class="btn btn-info btn-lg dropdown-toggle" style="min-width: 160px;">
		<span class="businessType">业 务 类 别</span><input type="hidden"
			name="businessType" value="0" class="businessType"> <i
			class="ace-icon fa fa-angle-down icon-on-right"
			style="float: right; margin-top: 4px;"></i>
	</button>

	<ul class="dropdown-menu dropdown-success dropdown-menu-right">
		<li
			onclick="textChange('span.businessType','频 率 指 配');$('input.businessType').val('1');">
			<a>频率指配</a>
		</li>

		<li
			onclick="textChange('span.businessType','台 站 设 置');$('input.businessType').val('2');">
			<a>台站设置</a>
		</li>

		<li
			onclick="textChange('span.businessType','呼 号');$('input.businessType').val('3');">
			<a>呼号</a>
		</li>

		<li
			onclick="textChange('span.businessType','进 关 核 准');$('input.businessType').val('4');">
			<a>进关核准</a>
		</li>

		<li
			onclick="textChange('span.businessType','设备型号核准');$('input.businessType').val('5');">
			<a>设备型号核准</a>
		</li>
	</ul>
</div>
<!-- /.btn-group -->

<div class="btn-group">
	<button data-toggle="dropdown" class="btn btn-info btn-lg"
		style="min-width: 160px;">
		<span class="detailType">办 理 类 别</span><input type="hidden"
			name="detailType" value="0" class="detailType"> <i
			class="ace-icon fa fa-angle-down icon-on-right"
			style="float: right; margin-top: 4px;"></i>
	</button>

	<ul class="dropdown-menu dropdown-success dropdown-menu-right">
		<li
			onclick="textChange('span.detailType','新 办');$('input.detailType').val('1');">
			<a>新办</a>
		</li>

		<li
			onclick="textChange('span.detailType','延 续');$('input.detailType').val('2');">
			<a>延续</a>
		</li>

		<li
			onclick="textChange('span.detailType','注 销');$('input.detailType').val('3');">
			<a>注销</a>
		</li>
	</ul>
</div>
<!-- /.btn-group -->

<button class="btn btn-lg btn-success" onclick="submitBt();">
	<i class="ace-icon fa fa-check"></i> 提 交
</button>




<div class="chart-content"></div>


<script type="text/javascript">
					function submitBt(){
						var timeType=$('input.timeType').val();
						var businessType=$('input.businessType').val();
						var detailType=$('input.detailType').val();
						var url="charts/chart_"+timeType+"_"+businessType+"_"+detailType;
						  $.ajax({
							type : 'get',
							url : url,
							data :{},
							success : function(data){
								$(".chart-content").html(data);
							}
						}); 
					};
					function textChange(selector,content){
						$(selector).html(content);
					}
					</script>
					
					
				