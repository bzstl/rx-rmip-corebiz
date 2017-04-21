<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../common/base.jsp" %>
<!-- 引入 ECharts 文件 -->
<script src="${ctx }assets/js/echarts/echarts.js"></script>
	<div id="main" style="width: 400px;height:300px;margin:0 auto ;"></div>
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
					roseType: 'angle',
					data:[
						{value:400, name:'航空移动'},
						{value:335, name:'水上移动'},
						{value:310, name:'广播'},
						{value:274, name:'陆地移动'},
						{value:235, name:'30MHz以下'}
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