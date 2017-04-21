<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../common/base.jsp" %>
<!-- 引入 ECharts 文件 -->
<script src="${ctx }assets/js/echarts/echarts.js"></script>
				<div class="input-group" style="width: 300px">
					<input type="text" class="form-control" name="keywords" value="时间段" placeholder="Look within results" />
					<div class="input-group-btn">
						<button type="button" class="btn btn-default no-border btn-sm">
							<i class="ace-icon fa fa-search icon-on-right bigger-110"></i>
						</button>
					</div>
				</div>
				
				<div class="btn-group" >
					<button data-toggle="dropdown" class="btn btn-info btn-lg dropdown-toggle" style="min-width: 160px;">
						<span class="type1">统计类型</span><input type="hidden" class="type1" name="type1" value="0">
						<i class="ace-icon fa fa-angle-down icon-on-right" style="float: right; margin-top:4px ;"></i>
					</button>

					<ul class="dropdown-menu dropdown-success dropdown-menu-right">
						<li>
							<a onclick="textChange('span.type1','分类统计');$('input.type1').val('axischart15');">分类统计</a>
						</li>

						<li>
							<a onclick="textChange('span.type1','违法统计');$('input.type1').val('axischart16');">违法统计</a>
						</li>
						<li>
							<a onclick="textChange('span.type1','保障车辆统计');$('input.type1').val('3');">保障车辆统计</a>
						</li>
						<li>
							<a onclick="textChange('span.type1','人员分配统计');$('input.type1').val('4');">人员分配统计</a>
						</li>
					</ul>
				</div><!-- /.btn-group -->
				
				
				
				
				<button class="btn btn-lg btn-success" onclick="var url=$('input.type1').val();submitBt(url);">
					<i class="ace-icon fa fa-check"></i>
					提 交
				</button>
				
				
				
				
				<div class="chart-content"></div>
				
				
				<script type="text/javascript">
					function submitBt(url){
						var url="charts/"+url;
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