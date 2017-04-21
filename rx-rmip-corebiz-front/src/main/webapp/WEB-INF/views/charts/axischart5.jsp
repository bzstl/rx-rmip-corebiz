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
<div id="chart" style="width: 1200px;height:600px;margin:0 auto ;"></div>
<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('chart'));

        // 指定图表的配置项和数据
 var option = {
		 tooltip : {
		        trigger: 'axis',
		        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
		            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
		        }
		    },
		    legend: {
		        data: ['实费金额', '滞纳金','应缴金额']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    yAxis:  {
		        type: 'value'
		    },
		    xAxis: {
		        type: 'category',
		        data: ['一月','二月','三月','四月','五月','六月','七月']
		    },
		    series: [
		        {
		            name: '实费金额',
		            type: 'bar',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'insideRight'
		                }
		            },
		            data: [320, 302, 301, 334, 390, 330, 320]
		        },
		        {
		            name: '滞纳金',
		            type: 'bar',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'insideRight'
		                }
		            },
		            data: [120, 132, 101, 134, 90, 230, 210]
		        },
		        {
		            name: '应缴金额',
		            type: 'bar',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'insideRight'
		                }
		            },
		            data: [220, 182, 191, 234, 290, 330, 310]
		        }
		    ]
		};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>