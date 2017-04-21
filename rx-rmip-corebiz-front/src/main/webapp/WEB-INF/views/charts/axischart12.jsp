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
		 title: {
		        text: '折线图堆叠'
		    },
		    tooltip: {
		        trigger: 'axis'
		    },
		    legend: {
		        data:['应该收金额','实收金额']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    },
		    xAxis: {
		        type: 'category',
		        boundaryGap: false,
		        data: ['2010','2011','2012','2013','2014','2015','2016']
		    },
		    yAxis: {
		        type: 'value'
		    },
		    series: [
		        {
		            name:'实收金额',
		            type:'line',
		            data:[120, 132, 101, 134, 90, 230, 210]
		        },
		        {
		            name:'应该收金额',
		            type:'line',
		            data:[220, 182, 191, 234, 290, 330, 310]
		        }
		    ]
		};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>