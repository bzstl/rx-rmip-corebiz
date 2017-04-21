<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../common/base.jsp" %>
<!-- 引入 ECharts 文件 -->
<script src="${ctx }assets/js/echarts/echarts.js"></script>
				<div class="input-group" style="width: 300px">
					<input type="text" value="起始年度" class="form-control" name="keywords" placeholder="Look within results" />
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
		        data:['频率','台站','呼号','进关核准','卫星地球站','型号核准']
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
		            name:'频率',
		            type:'line',
		            data:[120, 132, 101, 134, 90, 230, 210]
		        },
		        {
		            name:'台站',
		            type:'line',
		            data:[220, 182, 191, 234, 290, 330, 310]
		        },
		        {
		            name:'呼号',
		            type:'line',
		            data:[150, 232, 201, 154, 190, 330, 410]
		        },
		        {
		            name:'进关核准',
		            type:'line',
		            data:[320, 332, 301, 334, 390, 330, 320]
		        },
		        {
		            name:'卫星地球站',
		            type:'line',
		            data:[820, 932, 901, 934, 1290, 1330, 1320]
		        },
		        {
		            name:'型号核准',
		            type:'line',
		            data:[810, 942, 901, 734, 1200, 1230, 1340]
		        }
		    ]
		};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>