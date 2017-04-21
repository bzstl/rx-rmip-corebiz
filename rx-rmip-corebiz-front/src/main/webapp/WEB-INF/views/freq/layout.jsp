<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>频率规划图</title>
<link rel="stylesheet" href="<%=basePath%>assets/css/jquery_ui/jquery-ui.css" />
<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/jquery.layout-latest.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/freq/layer/layer.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/freq/alloc/system.js"></script>
<script type="text/javascript">
	//构建一个endWith函数
	function startWidth(sourceStr,s){
		var reg = new RegExp("^"+s);
		
		return reg.test(sourceStr);
	};

	// 构建一个endWith函数
	function endWidth(sourceStr,s){
		var reg = new RegExp(s+"$");
		
		return reg.test(sourceStr);
	};


	//频率单位转换
	function getUnit(number) {
		if (number >= 1000 && number < 3000000) {
			return (number * 10000 / (10000 * 1000)) + "MHz";
		}

		if (number >= 3000000) {
			return (number * 10000 / (10000 * 1000000)) + "GHz";
		}

		return number + "KHz";
	}
	$(function() {
		
		var myLayout = $('body').layout({
			applyDefaultStyles : true,
			initClosed : true
		});
		
		myLayout.sizePane("east", 670);
		$("#tabs").tabs();
		
		// 为数据添加备注
		var layoutTDs = $("td[id^='LAYOUTTD']");
		
		layoutTDs.bind("click",function(){
			myLayout.open("east");
			$("#groupConfig").html("");
			var layoutCode = $(this).find("input[name='layoutCode']").val();
			var layoutName = $(this).find("input[name='layoutName']").val();
			var systemName = $(this).find("input[name='systemName']").val();
			var freqStart = $(this).find("input[name='freqStart']").val();
			var freqEnd = $(this).find("input[name='freqEnd']").val();
			var documentCode = $(this).find("input[name='documentCode']").val();
			
			// 批文详情链接
			var docUrl = "";
			
			// 单个批文无';'
			if (documentCode.indexOf(";") == -1 && documentCode.indexOf(";") != ""){
				docUrl = "<a href='javascript:void(0)' onclick='viewDocdetail("+documentCode+")' title='单击查看详情'>"+documentCode+"</a>";
			}else{
				// 分解批文号，并附上链接
				var docCodes = documentCode.split(";");
				for(var i=0;i<docCodes.length;i++){
					var docode = docCodes[i];
					docUrl += "<a href='javascript:void(0)' onclick='viewDocdetail("+docode+")' title='单击查看详情'>"+docode+"</a><br/>";
				}
			}
			
			// 转换频率的单位
			freqStart = parseFloat((freqStart * 1000).toFixed(2));
			freqEnd = parseFloat((freqEnd * 1000).toFixed(2));
			
			$("#layoutName").html(layoutName);
			$("#layoutRange").html(getUnit(freqStart) + "~" + getUnit(freqEnd));
			$("#documentCode").html(docUrl);
			
			// 获取分组信息
			$.ajax({
				url : 'getLayoutGroup',
				type : 'get',
				data : {
					layoutCode : layoutCode
				},
				timeout : 20000,
				success : function(result) {
					var groupJSON = result.groups;
					var groupJSONObjs = $.parseJSON(groupJSON);
					// 清除掉之前的选项
					$("#layoutGroup option[value!='empty']").remove();
					// 如果没有分组信息，则禁用select
					if (groupJSONObjs.length == 0){
						$("#layoutGroup").attr("disabled","disabled");
						$("#layoutGroup option[value='empty']").text("--无频率间隔数据--");
					}else{
						$("#layoutGroup").removeAttr("disabled");
						$("#layoutGroup option[value='empty']").text("--请选择频率间隔--");
					}
					
					// 解析分组数据
					$.each(groupJSONObjs,function(n,groupObj){
						var groupName = groupObj.groupName;
						var groupCode = groupObj.groupCode;
						var freqEmitwidth = groupObj.freqEmitwidth;
						
						$("#layoutGroup").append("<option value='"+groupCode+"' id='"+freqEmitwidth+"'>"+groupName+"</option>");
					});
				},
				error : function(result) {
					layer.msg('网络连接超时,请您稍后重试.', 1, 5);
				}
			});
		});
		
		$("#layoutGroup").change(function(){
			var selectedVal = $(this).children("option:selected").val();
			var selectedText = $(this).children("option:selected").text();
			var freqEmitWidth = $(this).children("option:selected").attr("id"); // 最大发射带宽
			freqEmitWidth = parseFloat((freqEmitWidth * 1000).toFixed(2));
			$("#groupConfig").html("");
			// 获取分组详细信息
			$.ajax({
				url : 'getLayoutConfig',
				type : 'get',
				data : {
					groupCode : selectedVal
				},
				timeout : 20000,
				success : function(result) {
					var configJSON = result.configs;
					var configJSONObjs = $.parseJSON(configJSON);
					
					// 分组配置详细信息的HTML
					var groupConfigHTML = "<table border='1' class='dataTable' width='100%'><tr>";
					
					var i = 1;
					// 遍历详细信息
					var freqworks = new Array();
					$.each(configJSONObjs,function(n,configObj){
						var groupName = selectedText; // 分组名称
						var channelCode = configObj.channelCode; //波段号
						var freqWorking = configObj.freqWorking; //工作频率
						freqWorking = parseFloat((freqWorking * 1000).toFixed(2));
						var configNote = configObj.configNote === undefined ? "无" : configObj.configNote; // 备注
						
						// 根据规则设定背景色
						var bgcolor = "green";
						bgcolor = "#FF9600";
		                if (endWidth(channelCode,"'"))
		                {
		                	bgcolor = "#AA00C3";
		                }
		                
						var title = "规划分组名称(频率间隔):"+groupName+"\n";
						title += "波道(段)号:"+channelCode+"\n";
						title += "工作频率:"+getUnit(freqWorking)+"\n";
						title += "发射最大带宽:"+getUnit(freqEmitWidth)+"\n";
						title += "备注 :"+configNote+"\n";
						
						groupConfigHTML += "<td height='83px' bgcolor='"+bgcolor+"' style='font-size:12px;text-align: center;vertical-align:top;width:85px;' title='"+title+"'>"+channelCode+"</td>";
						freqworks.push(freqWorking);
						if (i % 7 == 0){ // 7个为一行
							groupConfigHTML += "</tr><tr>";
							
							groupConfigHTML += "<tr>";
							for(var j=0; j<freqworks.length; j++){
								groupConfigHTML += "<td style='font-size:12px;text-align: center;'>"+getUnit(freqworks[j])+"</td>";
							}
							groupConfigHTML += "</tr>";
							
							// 清空数组
							freqworks.length = 0;
						}
						
						i++;
					});
					
					// 将剩余的不足7个的数据补充显示
					groupConfigHTML += "<tr>";
					for(var j=0; j<freqworks.length; j++){
						groupConfigHTML += "<td style='font-size:12px;text-align: center;'>"+getUnit(freqworks[j])+"</td>";
					}
					groupConfigHTML += "</tr>";
					
					groupConfigHTML += "</table>";
					$("#groupConfig").html(groupConfigHTML);
				},
				error : function(result) {
					layer.msg('网络连接超时,请您稍后重试.', 1, 5);
				}
			});
		});

		layoutTDs.each(function() {
			var layoutName = $(this).find("input[name='layoutName']").val();
			var systemName = $(this).find("input[name='systemName']").val();
			var freqStart = $(this).find("input[name='freqStart']").val();
			var freqEnd = $(this).find("input[name='freqEnd']").val();

			// 转换频率的单位
			freqStart = parseFloat((freqStart * 1000).toFixed(2));
			freqEnd = parseFloat((freqEnd * 1000).toFixed(2));

			var layoutNote = $(this).find("input[name='layoutNote']").val();
			var title = "规划名称：" + layoutName + "\n";
			title += "业务\通信系统：" + systemName + "\n";
			title += "频率范围：" + getUnit(freqStart) + "~" + getUnit(freqEnd)
					+ "\n";
			title += "备注：" + layoutNote + "\n";

			$(this).attr("title", title);
		});
		
		// 显示锚点
		$(".anchor_end").each(function(){
			var anchorVal = $(this).attr("id");
			anchorVal = parseFloat((anchorVal * 1000).toFixed(2));
			$(this).html(getUnit(anchorVal));
		});
	});
</script>
<style type="text/css">
.dataTable {
	cell-spacing: 0;
	border-collapse: collapse;
	border-spacing: 0;
}

td {
	cursor: pointer;
}
</style>
</head>
<body>
	<div 
		style="height: 795px; overflow: scroll; margin: 5px; margin-right: 0px;"
		class="ui-layout-center">
	<table>
		<tr>
			<td>频率范围：</td>
			<td><input id="freqStart" type="text" style="width: 100px;" /><span
				style="color: red;">*</span> <select id="freqStartUnit">
					<option value="KHz">KHz</option>
					<option selected="selected" value="MHz">MHz</option>
					<option value="GHz">GHz</option>
			</select> <input id="freqEnd" type="text" style="width: 100px;" /><span
				style="color: red;">*</span> <select id="freqEndUnit">
					<option value="KHz">KHz</option>
					<option selected="selected" value="MHz">MHz</option>
					<option value="GHz">GHz</option>
			</select></td>
		</tr>
		<tr>
			<td>业务/通信系统：</td>
			<td><input id="systemName" type="text" style="width: 235px;"
				readonly="readonly" /> <input id="selectSystemBtn" type="button"
				value="..." onclick="viewSystemlistLayer()" /> <input id="searchBtn"
				type="button" onclick="searchLayout()" value="搜索" />
				<input type="hidden" id="systemCode"/></td>
		</tr>
	</table>

	<div>
		<table border="1" class="dataTable" style="width: 1380px;">
			<c:forEach var="datamap" items="${datamap}">
				<tr>
					<td><c:set var="group" value="${datamap.value}" />
						<table border="1" class="dataTable"
							style="height: 100px; width: 100%;">
							<tr>
								<c:forEach var="anchor" items="${group}">
									<td>
										<table class="dataTable"
											style="height: 100%; width: 100%; table-layout: fixed;">
											<c:forEach var="layout" items="${anchor.value}"
												varStatus="status">
												<tr>
													<td id="LAYOUTTD_${anchor.key}_${status.index}"
														bgcolor="${layout.systemColor}" style="font-size: 12px;">${layout.systemName}_${layout.layoutName}
														<input type="hidden" name="layoutCode"
														value="${layout.layoutCode}" />
														<input type="hidden" name="layoutName"
														value="${layout.layoutName}" /> <input type="hidden"
														name="systemName" value="${layout.systemName}" /> <input
														type="hidden" name="freqStart" value="${layout.freqStart}" />
														<input type="hidden" name="freqEnd"
														value="${layout.freqEnd}" /> <input type="hidden"
														name="layoutNote" value="${layout.layoutNote}" />
														<input type="hidden"
														name="documentCode" value="${layout.documentCode}" />
													</td>
												</tr>
											</c:forEach>
											<tr>
												<td style="height:10px;">
													<span class="anchor_start" style="float: left;text-align: right;font-size:9px;" id="${anchor.key}"></span>
													<span class="anchor_end" style="float: right;text-align: right;font-size:9px;" id="${anchor.key}"></span>
												</td>
											</tr>
										</table>
									</td>
								</c:forEach>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
	<div id="tabs" class="ui-layout-east" style="overflow: auto;">
		<ul>
			<li><a href="#tabs-1" style="font-size:12px;">频率规划详细配置图</a></li>
			<li><a href="#tabs-2" style="font-size:12px;">搜索</a></li>
		</ul>
		<div id="tabs-1">
			<table
				style="width: 100%; border-collapse: collapse; font-size: 12px;"
				border="1">
				<tr>
					<td width="30%"><b>规划名称：</b></td>
					<td><span id="layoutName"></span></td>
				</tr>
				<tr>
					<td><b>频率范围：</b></td>
					<td><span id="layoutRange"></span></td>
				</tr>
				<tr>
					<td><b>规划批文号：</b></td>
					<td><span id="documentCode"></span></td>
				</tr>
				<tr>
					<td><b>分组名称(频率间隔)：</b></td>
					<td>
						<select id="layoutGroup">
							<option value="empty" >--请选择频率间隔--</option>
						</select>
					</td>
				</tr>
			</table>
			<div id="groupConfig" style="overflow: scroll;width:600px;height:100%"></div>
		</div>
		<div id="tabs-2">
			搜索条件
		</div>
	</div>
</body>
</html>