<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../common/base.jsp" %>
<!-- 引入 ECharts 文件 -->
									<script src="${ctx }assets/js/echarts/echarts.js"></script>
										<div class="input-group" style="width: 300px">
											<input type="text" value="单位名称" class="form-control" name="keywords" placeholder="Look within results" />
											<div class="input-group-btn">
												<button type="button" class="btn btn-default no-border btn-sm">
													<i class="ace-icon fa fa-search icon-on-right bigger-110"></i>
												</button>
											</div>
										</div>
									
    								
										<div id="main" style="width: 800px;height:600px;margin:0 auto;"></div>
											
									    	<script type="text/javascript">
										        // 基于准备好的dom，初始化echarts实例
										        var myChart = echarts.init(document.getElementById('main'));
										
										        // 指定图表的配置项和数据
										        var option = {
										        		    tooltip: {},
										        		   
										        		    radar: {
										        		        // shape: 'circle',
										        		        indicator: [
										        		           { name: '频率', max: 100},
										        		           { name: '台站', max: 100},
										        		           { name: '呼号', max: 100},
										        		           { name: '进关核准', max: 100},
										        		           { name: '卫星地球站', max: 100},
										        		           { name: '型号核准', max: 100}
										        		        ]
										        		    },
										        		    series: [{
										        		        name: '预算 vs 开销（Budget vs spending）',
										        		        type: 'radar',
										        		        // areaStyle: {normal: {}},
										        		        data : [
										        		            {
										        		                value : [23, 29, 87, 50, 9, 40],
										        		                label: {
										        	                        normal: {
										        	                            show: true,
										        	                            formatter:function(params) {
										        	                                return params.value;
										        	                            }
										        	                        }
										        	                    }
										        		            }
										        		        ]
										        		    }]
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
														<th>行政许可号</th>
														<th class="hidden-480">具体信息</th>
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