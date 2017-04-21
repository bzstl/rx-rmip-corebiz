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
		        text: '信用统计'
		    },
		    legend: {
		    	bottom: '100px',
		        data: ['其它','违法销售设备','违法使用无线电台执照','不遵守频率管理','随意变更信号','干扰无线电','违反研制、生产、进口无线电发射设备','擅设电台']
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
		            name: '其它',
		            type: 'bar',
		            data: [1820],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '违法销售设备',
		            type: 'bar',
		            data: [14323],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '违法使用无线电台执照',
		            type: 'bar',
		            data: [18423],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '不遵守频率管理',
		            type: 'bar',
		            data: [14403],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '随意变更信号',
		            type: 'bar',
		            data: [18223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '干扰无线电',
		            type: 'bar',
		            data: [8223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '违反研制、生产、进口无线电发射设备',
		            type: 'bar',
		            data: [18503],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        },
		        {
		            name: '擅设电台',
		            type: 'bar',
		            data: [11223],
		            label: {
                        normal: {
                            show: true
                        }
                    }
		        }
		    ]
		};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>