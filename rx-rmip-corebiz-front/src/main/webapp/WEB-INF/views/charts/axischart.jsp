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
				data:['30MH以下','陆地移动','水上移动','航空','公用移动','水上导航','无线电定位','广播','业余','其他']
			},
			grid: {
				left: '3%',
				right: '4%',
				bottom: '3%',
				containLabel: true
			},
			xAxis : [
				{
					type : 'category',
					data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
				}
			],
			yAxis : [
				{
					type : 'value'
				}
			],
			series : [
				{
					name:'30MH以下',
					type:'bar',
					data:[320, 332, 301, 334, 390, 330, 320, 332, 301, 334, 390, 330]
				},
				{
					name:'陆地移动',
					type:'bar',
					data:[120, 132, 101, 134, 90, 230, 210, 132, 101, 134, 90, 230]
				},
				{
					name:'水上移动',
					type:'bar',
					data:[220, 182, 191, 234, 290, 330, 310, 182, 191, 234, 290, 330]
				},
				{
					name:'航空',
					type:'bar',
					data:[150, 232, 201, 154, 190, 330, 410, 232, 201, 154, 190, 330]
				},
				{
					name:'公用移动',
					type:'bar',
					data:[862, 1018, 964, 1026, 1690, 1600, 1570, 1018, 964, 1026, 1679, 1600],
					markLine : {
						lineStyle: {
							normal: {
								type: 'dashed'
							}
						},
						data : [
							[{type : 'min'}, {type : 'max'}]
						]
					}
				},
				{
					name:'水上导航',
					type:'bar',
					barWidth : 5,
					data:[620, 732, 701, 734, 1090, 1130, 1120, 732, 701, 734, 1090, 1130]
				},
				{
					name:'无线电定位',
					type:'bar',
					data:[120, 132, 101, 134, 290, 230, 220, 132, 101, 134, 290, 230]
				},
				{
					name:'广播',
					type:'bar',
					data:[60, 72, 71, 74, 190, 130, 110, 72, 71, 74, 190, 130]
				},
				{
					name:'业余',
					type:'bar',
					data:[70, 82, 61, 94, 180, 150, 130, 82, 61, 94, 180, 150]
				},
				{
					name:'其他',
					type:'bar',
					data:[62, 82, 91, 84, 109, 110, 120, 82, 91, 84, 109, 110]
				},
			]
		};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>