<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../common/base.jsp" %>
<!-- 引入 ECharts 文件 -->
									<script src="${ctx }assets/js/echarts/echarts.js"></script>
										<div class="input-group" style="width: 300px">
											<input type="text" class="form-control" name="keywords" placeholder="Look within results" />
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
										        		    legend: {
										        		        data: ['受理', '通过','注销']
										        		    },
										        		    radar: {
										        		        // shape: 'circle',
										        		        indicator: [
										        		           { name: '频率', max: 6500},
										        		           { name: '台站', max: 16000},
										        		           { name: '呼号', max: 30000},
										        		           { name: '进关核准', max: 38000},
										        		           { name: '卫星地球站', max: 52000},
										        		           { name: '型号核准', max: 35000}
										        		        ]
										        		    },
										        		    series: [{
										        		        name: '预算 vs 开销（Budget vs spending）',
										        		        type: 'radar',
										        		        // areaStyle: {normal: {}},
										        		        data : [
										        		            {
										        		                value : [4300, 10000, 28000, 35000, 50000, 19000],
										        		                name : '受理',
										        		                label: {
										        	                        normal: {
										        	                            show: true,
										        	                            formatter:function(params) {
										        	                                return params.value;
										        	                            }
										        	                        }
										        	                    }
										        		            },
										        		            {
										        		                value : [5000, 14000, 28000, 31000, 42000, 21000],
										        		                name : '通过',
										        		                label: {
										        	                        normal: {
										        	                            show: true,
										        	                            formatter:function(params) {
										        	                                return params.value;
										        	                            }
										        	                        }
										        	                    }
										        		            },
										        		            {
										        		                value : [4000, 1200, 27000, 32000, 30000, 29000],
										        		                name : '注销',
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