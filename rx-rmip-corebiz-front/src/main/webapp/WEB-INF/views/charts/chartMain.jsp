<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
<!-- 引入 ECharts 文件 -->
<script src="${ctx }assets/js/echarts/echarts.js"></script>
<div class="row">
	<div class="col-xs-12">
		<div class="alert alert-info"
			style="position: relative; min-width: 1500px; height: 40px; overflow: hidden;">
			<div id="d1" style="position: absolute; left: 1450px;">
				<div style="display: inline-block; margin: 0px 25px;">会议通知：4月15日下午3点
					23楼会议室开会</div>
				<div style="display: inline-block; margin: 0px 25px;">公务通知：*******</div>
			</div>
		</div>

	</div>
</div>


<script type="text/javascript">
		var d1 = document.getElementById("d1");
		var speed = 400;
		
		function moveLeft() {
			var leftLegth = d1.style.left; /*  **px  */
			leftLegth.replace("px","");
			leftLegth = parseInt(leftLegth);
			
			if(-leftLegth < d1.offsetWidth){
				
				leftLegth = leftLegth - 10;
				leftLegth = leftLegth+"px";
				d1.style.left = leftLegth;
			}else{
				leftLegth = "1450px";
				d1.style.left = leftLegth;
			}
			
		}
		
		var myFunction = setInterval("moveLeft()", speed);
		
	</script>

<div class="row" style="text-align: left;">
	<div class="col-sm-6">
		<h3 class="header blue lighter smaller">
			<i class="ace-icon fa fa-list-alt smaller-90"></i> 干扰投诉信息
		</h3>

				<div id="chart" style="width: 400px; height: 300px; margin:  auto;"></div>
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
			grid: {
				left: '3%',
				right: '4%',
				bottom: '3%',
				containLabel: true
			},
			xAxis : [
				{
					type : 'category',
					data : ['干扰','处罚','投诉','其它']
				}
			],
			yAxis : [
				{
					type : 'value'
				}
			],
			series : [
				{
					name:'考试保障',
					type:'bar',
					data:[20, 132, 301, 234]
				}
				
			]
		};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
	</div>
	<!-- ./span -->

	<div class="col-sm-6">
		<h3 class="header blue lighter smaller">
			<i class="ace-icon fa fa-list-alt smaller-90"></i> 台站信息
		</h3>
		<%@ include file="../../views/charts/piechart.jsp"%>
	</div>
	<!-- ./span -->
</div>
<div class="row" style="text-align: left;">
	<div class="col-sm-6">
		<h3 class="header blue lighter smaller">
			<i class="ace-icon fa fa-list-alt smaller-90"></i> 审批信息
		</h3>

		<%@ include file="../../views/charts/table6.jsp"%>
	</div>
	<!-- ./span -->

	<div class="col-sm-6">
		<h3 class="header blue lighter smaller">
			<i class="ace-icon fa fa-list-alt smaller-90"></i> 综合信息
		</h3>
		<div class="row"><div class="col-sm-6"><i class="ace-icon fa fa-hand-o-right"></i>月度行政审批不予受理数</div><div class="col-sm-6">5</div></div>
		<div class="row"><div class="col-sm-6"><i class="ace-icon fa fa-hand-o-right"></i>月度不予受理数</div><div class="col-sm-6">20</div></div>
		<div class="row"><div class="col-sm-6"><i class="ace-icon fa fa-hand-o-right"></i>月度保障车辆使用数</div><div class="col-sm-6">4</div></div>
	</div>
	<!-- ./span -->
</div>

