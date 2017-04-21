<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../common/base.jsp" %>
<!-- 引入 ECharts 文件 -->
<script src="${ctx }assets/js/echarts/echarts.js"></script>
					<div id="main" style="width: 1000px;height:500px;margin:0 auto ;"></div>
	 <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            series : [
				{
					name: '访问来源',
					type: 'pie',
					radius: '90%',
					data:[
						{value:400, name:'准予许可'},
						{value:335, name:'不准予许可'}
					],
					label: {
						normal: {
						}
					},
					itemStyle: {
						normal: {
							shadowBlur: 200,
							shadowColor: 'rgba(0, 0, 0, 0.5)'
						}
					}
				}
			]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>		
    
    
    	<!-- div.dataTables_borderWrap -->
										<div>
											<table id="dynamic-table" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>审批类型</th>
														<th>单位名称</th>
														<th>业务类型</th>
														<th class="hidden-480">频率数量</th>
													</tr>
												</thead>

												<tbody>
													<tr>

														<td>
															频率新申
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">****</td>
														
													</tr>
													<tr>

														<td>
															频率新申
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">******</td>
													</tr>
													
													<tr>

														<td>
															频率新申
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">******</td>
													</tr>
													<tr>

														<td>
															频率新申
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">******</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>