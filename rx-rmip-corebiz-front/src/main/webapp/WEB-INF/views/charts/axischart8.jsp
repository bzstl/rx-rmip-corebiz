<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
<!-- 引入 ECharts 文件 -->
<script src="${ctx }assets/js/echarts/echarts.js"></script>
<div class="input-group" style="width: 300px">
	<input type="text" class="form-control" name="keywords"
		placeholder="Look within results" />
	<div class="input-group-btn">
		<button type="button" class="btn btn-default no-border btn-sm">
			<i class="ace-icon fa fa-search icon-on-right bigger-110"></i>
		</button>
	</div>
</div>
<div id="chart" style="width: 1200px; height: 600px; margin: 0 auto;"></div>
<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('chart'));

        // 指定图表的配置项和数据
 		var option = {
		    title: {
		        text: '频率日常统计',
		        subtext: ''
		    },
		    tooltip: {
		        trigger: 'axis',
		        axisPointer: {
		            type: 'shadow'
		        }
		    },
		    
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis: {
		        type: 'value',
		        boundaryGap: [0, 0.01]
		    },
		    yAxis: {
		        type: 'category',
		        data: ['频率过期未续办','频率即将过期','不定期监测任务','不定期检测任务','过期收回频段数']
		    },
		    series: [
		        {
		            name: '数量',
		            type: 'bar',
		            data: [18203, 23489, 29034, 104970, 131744],
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
		};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>