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
<div id="chart" style="width: 1200px;height:800px;margin:0 auto ;"></div>
<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('chart'));

        // 指定图表的配置项和数据
 var option = {
		    title: {
		        text: '业务统计'
		    },
		    legend: {
		    	bottom: '100px',
		        data: ['其它','业余电台','微波接力站','移动站','地球站(天线>4.5m)','地球站(天线<4.5m)','无线数据台','无线市话移动台','无线市话基站',
		        	'固定无线接入终端站','固定无线接入中心站','移动TD_SCDMA移动台','移动TD_SCDMA基站','联通WCDMA移动台','联通WCDMA基站','电信CDMA移动台'
		        	,'电信CDMA基站','GSM移动台','GSM基站','集群移动通信系统移动台','集群移动通信系统移基站']
		    },
		    grid: {
/* 		        left: '3%',
		        right: '4%',
		        bottom: '3%', */
		        containLabel: true, 
		        height:'50%'
		        
		    },
		    xAxis: {
		        type: 'value',
		        boundaryGap: [0, 0.01]
		    },
		    yAxis: {
		        type: 'category',
		        data: ['']
		    },
		    series: [
		        {
		            name: '业余电台',
		            type: 'bar',
		            data: [1820],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '其它',
		            type: 'bar',
		            data: [14323],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '微波接力站',
		            type: 'bar',
		            data: [18423],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '移动站',
		            type: 'bar',
		            data: [14403],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '地球站(天线>4.5m)',
		            type: 'bar',
		            data: [18223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '地球站(天线<4.5m)',
		            type: 'bar',
		            data: [8223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '无线数据台',
		            type: 'bar',
		            data: [18503],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '无线市话移动台',
		            type: 'bar',
		            data: [11223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '无线市话基站',
		            type: 'bar',
		            data: [14223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '固定无线接入终端站',
		            type: 'bar',
		            data: [7203],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '固定无线接入中心站',
		            type: 'bar',
		            data: [223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '移动TD_SCDMA移动台',
		            type: 'bar',
		            data: [183],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '移动TD_SCDMA基站',
		            type: 'bar',
		            data: [1303],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '联通WCDMA移动台',
		            type: 'bar',
		            data: [2223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '联通WCDMA基站',
		            type: 'bar',
		            data: [1523],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '电信CDMA移动台',
		            type: 'bar',
		            data: [9223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '电信CDMA基站',
		            type: 'bar',
		            data: [12203],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: 'GSM移动台',
		            type: 'bar',
		            data: [1433],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: 'GSM基站',
		            type: 'bar',
		            data: [22323],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '集群移动通信系统移动台',
		            type: 'bar',
		            data: [23523],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '集群移动通信系统移基站',
		            type: 'bar',
		            data: [12223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		    ]
		};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>