<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
<!-- 引入 ECharts 文件 -->
<script src="${ctx }assets/js/echarts/echarts.js"></script>
<div id="chart" style="width: 1200px; height: 600px; margin: 0 auto;"></div>
<script type="text/javascript">
	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById('chart'));

	// 指定图表的配置项和数据

	var option = {
		title : {
			text : '违法统计',
			subtext : ''
		},
		tooltip : {
			trigger : 'axis',
			axisPointer : {
				type : 'shadow'
			}
		},

		grid : {
			left : '3%',
			right : '4%',
			bottom : '3%',
			containLabel : true
		},
		xAxis : {
			type : 'value',
			boundaryGap : [ 0, 0.01 ]
		},
		yAxis : {
			type : 'category',
			data : [ '考试保障', '商业保障', '政务保障' ]
		},
		series : [ {
			name : '数量',
			type : 'bar',
			data : [ 18203, 23489, 29034 ],
			label : {
				normal : {
					show : true,
					formatter : function(params) {
						return params.value;
					}
				}
			}
		} ]
	};

	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
</script>