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
						<span class="type1">运 营 商</span><input type="hidden" class="type1" name="type1" value="0">
						<i class="ace-icon fa fa-angle-down icon-on-right" style="float: right; margin-top:4px ;"></i>
					</button>

					<ul class="dropdown-menu dropdown-success dropdown-menu-right">
						<li>
							<a onclick="textChange('span.type1','移 动');$('input.type1').val('1');">移动</a>
						</li>

						<li>
							<a onclick="textChange('span.type1','联 通');$('input.type1').val('2');">联通</a>
						</li>
						<li>
							<a onclick="textChange('span.type1','电 信');$('input.type1').val('3');">电信</a>
						</li>
					</ul>
				</div><!-- /.btn-group -->
				
				<div class="btn-group" >
					<button data-toggle="dropdown" class="btn btn-info btn-lg dropdown-toggle" style="min-width: 160px;">
						<span class="type2">区 县</span><input type="hidden" class="type2" name="type2" value="0"/>
						<i class="ace-icon fa fa-angle-down icon-on-right" style="float: right; margin-top:4px ;"></i>
					</button>

					<ul class="dropdown-menu dropdown-success dropdown-menu-right">
						<li>
							<a onclick="textChange('span.type2','徐 汇');$('input.type2').val('1');">徐汇</a>
						</li>

						<li>
							<a onclick="textChange('span.type2','黄 浦');$('input.type2').val('2');">黄浦</a>
						</li>
						
						<li>
							<a onclick="textChange('span.type2','长 宁');$('input.type2').val('3');">长宁</a>
						</li>
						
						<li>
							<a onclick="textChange('span.type2','静 安');$('input.type2').val('4');">静安</a>
						</li>
						<li>
							<a onclick="textChange('span.type2','普 陀');$('input.type2').val('5');">普陀</a>
						</li>
						<li>
							<a onclick="textChange('span.type2','虹 口');$('input.type2').val('6');">虹口</a>
						</li>
						<li>
							<a onclick="textChange('span.type2','杨 浦');$('input.type2').val('7');">杨浦</a>
						</li>
						<li>
							<a onclick="textChange('span.type2','闵 行');$('input.type2').val('8');">闵行</a>
						</li>
						<li>
							<a onclick="textChange('span.type2','宝 山');$('input.type2').val('9');">宝山</a>
						</li>
					</ul>
				</div><!-- /.btn-group -->
				
				<div class="btn-group">
					<button data-toggle="dropdown" class="btn btn-info btn-lg dropdown-toggle" style="min-width: 160px;">
						<span class="type3">来 源</span><input type="hidden" name="type3" value="0" class="type3"/>
						<i class="ace-icon fa fa-angle-down icon-on-right" style="float: right; margin-top:4px ;"></i>
					</button>

					<ul class="dropdown-menu dropdown-success dropdown-menu-right">
						<li onclick="textChange('span.type3','市民热线');$('input.type3').val('1');">
							<a >市民热线</a>
						</li>

						<li onclick="textChange('span.type3','来电来访');$('input.type3').val('2');">
							<a >来电来访</a>
						</li>
						
						<li onclick="textChange('span.type3','市经委');$('input.type3').val('3');">
							<a >市经委</a>
						</li>

						<li onclick="textChange('span.type3','局长信箱');$('input.type3').val('4');">
							<a >局长信箱</a>
						</li>

						<li onclick="textChange('span.type3','信访办');$('input.type3').val('5');">
							<a >信访办</a>
						</li>
					</ul>
				</div><!-- /.btn-group -->
				
				
				<div class="btn-group">
					<button data-toggle="dropdown" class="btn btn-info btn-lg" style="min-width: 160px;">
						<span class="type4">类 型</span> <input type="hidden" name="type4" value="0" class="type4" />
						<i class="ace-icon fa fa-angle-down icon-on-right" style="float: right; margin-top:4px ;"></i>
					</button>

					<ul class="dropdown-menu dropdown-success dropdown-menu-right" >
						<li onclick="textChange('span.type4','基站投诉');$('input.type4').val('1');">
							<a >基站投诉</a>
						</li>

						<li onclick="textChange('span.type4','业余无线电投诉');$('input.type4').val('2');">
							<a >业余无线电投诉</a>
						</li>

						<li onclick="textChange('span.type4','干扰/广播投诉');$('input.type4').val('3');">
							<a >干扰/广播投诉</a>
						</li>
						<li onclick="textChange('span.type4','其他投诉');$('input.type4').val('4');">
							<a >其他投诉</a>
						</li>
					</ul>
				</div><!-- /.btn-group -->
				
				
				<button class="btn btn-lg btn-success" onclick="submitBt();">
					<i class="ace-icon fa fa-check"></i>
					提 交
				</button>
				
				
				
				
				<div class="chart-content"></div>
				
				
				<script type="text/javascript">
					function submitBt(){
						var type1=$('input.type1').val();
						var type2=$('input.type2').val();
						var type3=$('input.type3').val();
						var type4=$('input.type4').val();
						var url="charts/table_"+type1+"_"+type2+"_"+type3+"_"+type4;
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