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
<title>频率划分图</title>
<link rel="stylesheet" href="<%=basePath%>assets/css/jquery_ui/jquery-ui.css" />
<!--[if !IE]> -->
<script src="<%=basePath%>assets/js/jquery-2.1.4.min.js"></script>
<!-- <![endif]-->

<!--[if IE]>
<script src="<%=basePath%>assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript" src="<%=basePath%>assets/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/jquery.layout-latest.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/freq/layer/layer.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/freq/alloc/alloc.js"></script>
<script type="text/javascript">	 
	$(function() {
		var myLayout = $('body').layout({
			applyDefaultStyles : true,
			initClosed : true
		});

		myLayout.sizePane("east", 350);

		$(".freqs").bind("click", function() {
			myLayout.open("east");
			var abbr = $(this).attr("abbr");
			var attrs = abbr.split("_");

			var freqStart = attrs[0];
			var freqEnd = attrs[1];

			freqStart = parseFloat((freqStart * 1000).toFixed(2));
			freqEnd = parseFloat((freqEnd * 1000).toFixed(2));

			$("#allocRange").html(getUnit(freqStart) + "-" + getUnit(freqEnd));
			$("#serviceName").html(attrs[2]);
			$("#serviceType").html(getServiceType(attrs[3]));
			$("#generalFootnote").html(bulidFootnoteHTML(attrs[4]));
			$("#specialFootnote").html(bulidFootnoteHTML(attrs[5]));
			$("#allocColorBox").attr("bgColor", $(this).attr("bgColor"));
			$("#allocColorBox_start").html(getUnit(freqStart));
			$("#allocColorBox_end").html(getUnit(freqEnd));
		});

		$("#tabs").tabs();

		// 设置范围显示
		var rangeTDs = $("td[id^='RANGE']");
		rangeTDs.each(function() {
			var id = $(this).attr("id");
			var ids = id.split("_");
			var start = ids[1].replace("Hz", "");
			var end = ids[2];

			$("#" + id + "_start").html(start + "Hz");
			$("#" + id + "_end").html(end + "Hz");
		});

		// 设置频率坐标显示
		var allocs = $("td[id^='ALLOC_']");
		var i = 1;
		allocs.each(function() {
			var id = $(this).attr("id");
			var ids = id.split("_");
			var freqStart = ids[1];
			var freqEnd = ids[2];

			var dataCount = $(this).attr("abbr");

			freqStart = parseFloat((freqStart * 1000).toFixed(2));
			freqEnd = parseFloat((freqEnd * 1000).toFixed(2));

			$(this).children("span").each(
					function() {
						var className = $(this).attr("class");

						// 绘制该频率段起始值
						if ("alloc_start" == className) {
							$(this).html(
									getUnit(freqStart).replace("Hz", "")
											.replace("K", "").replace("M", "")
											.replace("G", ""));
						}

						// 只绘制最后一个频率段的结束值并且最后面的1000G不画。
						if ("alloc_end" == className && i == dataCount && freqEnd != "1000000000") {
							$(this).html(
									getUnit(freqEnd).replace("Hz", "").replace(
											"K", "").replace("M", "").replace(
											"G", ""));
							i = 0;
						}
					});

			i++;
		});

		$(".zoomBtn").click(function() {
			var width = $(this).attr("name") * 10;
			$(".zoomDIV").css("width", width + "px");
		});
	});
</script>
<style type="text/css">
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

td {
	margin: 0;
	padding: 0;
	border-spacing: 0px;
}
</style>
</head>
<body>
	<div
		style="height: 795px; overflow: scroll; margin: 5px; margin-right: 0px;"
		class="ui-layout-center">
		<div id="zoomDiv">
			<input id="zoom2" value="X2" type="button" class="zoomBtn" name="3" />
			<input id="zoom3" value="X3" type="button" class="zoomBtn" name="4" />
			<input id="zoom1" value="还原" type="button" class="zoomBtn" name="1" />
		</div>
		<c:forEach var="allocData" items="${allocDatas}">
			<c:set var="count" value="0" />
			<table
				style="width: 1380px; border-collapse: collapse; margin: 0; padding: 0; border-bottom: 0px;"
				cellpadding="0" cellspacing="0">
				<tr>
					<c:forEach var="allocGroup" items="${allocData.value}">
						<c:set var="allocGroupKey" value="${allocGroup.key}" />
						<c:set var="allocs" value="${allocGroup.value}" />
						<c:set var="count" value="${count+1}" />
						<td id="ALLOCTD_${allocGroupKey}_${allocData.key}">
							<div class="zoomDIV" style="height: 1px; width: 10px;"></div>
							<table
								style="width: 100%; height: 40px; margin: 0; padding: 0; border-right-width: 0px; table-layout: fixed; overflow: hidden; text-overflow: ellipsis; word-break: keep-all; white-space: nowrap;"
								cellpadding="0" cellspacing="0">
								<tr>
									<td id="ALLOC_${allocGroupKey}"
										abbr="${fn:length(allocData.value)}"
										style="font-size: 10px; vertical-align: bottom;"><span
										class="alloc_start"
										style="float: left; writing-mode: tb-rl; text-align: right; left: -5px;"></span>
										<span class="alloc_end"
										style="float: right; writing-mode: tb-rl; text-align: right;"></span></td>
								</tr>
							</table>
							<table
								style="margin: 0px; padding: 0px; width: 100%; height: 150px; border-collapse: collapse; border-right-width: 0px; white-space: nowrap;"
								border="1" cellpadding="0" cellspacing="0">
								<c:forEach var="alloc" items="${allocs}">
									<fmt:formatNumber var="percent" type="number"
										value="${(alloc.freqEnd - alloc.freqStart)*100}"
										pattern="0.0000" maxFractionDigits="4" />
									<c:set var="freqStart" value="${alloc.freqStart}" />
									<c:set var="freqEnd" value="${alloc.freqEnd}" />
									<c:set var="serviceName" value="${alloc.serviceName}" />
									<c:set var="serviceType" value="${alloc.serviceType}" />
									<tr>
										<td
											id="FREQ_${alloc.id}_${freqStart}_${freqEnd}_${serviceName}_${serviceType}"
											style="white-space: nowrap;cursor:pointer;" bgcolor="${alloc.serviceColor}"
											colspan="2" class="freqs"
											abbr="${alloc.freqStart}_${alloc.freqEnd}_${alloc.serviceName}_${alloc.serviceType}_${alloc.generalFootnote}_${alloc.specialFootnote}"></td>
									</tr>
								</c:forEach>
							</table>
						</td>
					</c:forEach>
				</tr>
				<tr style="height: 20px;">
					<td id="RANGE_${allocData.key}" colspan="${count}"><span
						id="RANGE_${allocData.key}_start"
						style="float: left; font-weight: bold;"></span> <span
						id="RANGE_${allocData.key}_end"
						style="float: right; font-weight: bold;"></span></td>
				</tr>
			</table>
			<br />
		</c:forEach>
	</div>
	<div id="tabs" class="ui-layout-east" style="overflow: auto;">
		<ul>
			<li><a href="#tabs-1" style="font-size:12px;">频率划分结果图</a></li>
			<li><a href="#tabs-2" style="font-size:12px;">划分图例</a></li>
		</ul>
		<div id="tabs-1">
			<table
				style="width: 100%; border-collapse: collapse; font-size: 15px;"
				border="1">
				<tr>
					<td width="30%"><b>频率范围：</b></td>
					<td><span id="allocRange"></span></td>
				</tr>
				<tr>
					<td><b>业务名称：</b></td>
					<td><span id="serviceName"></span></td>
				</tr>
				<tr>
					<td><b>业务性质：</b></td>
					<td><span id="serviceType"></span></td>
				</tr>
				<tr>
					<td><b>通用脚注：</b></td>
					<td id="generalFootnote"
						style="word-warp: brak-word; word-break: break-all;"></td>
				</tr>
				<tr>
					<td><b>专用脚注：</b></td>
					<td><span id="specialFootnote"
						style="word-warp: brak-word; word-break: break-all;"></span></td>
				</tr>
			</table>

			<table
				style="width: 100%; height: 150px; margin-top: 20px; vertical-align: top; border-collapse: collapse; text-align: left;">
				<tr>
					<td id="allocColorBox" colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td valign="top"><span id="allocColorBox_start"></span></td>
					<td valign="top"><span id="allocColorBox_end"
						style="float: right;"></span></td>
				</tr>
			</table>
		</div>
		<div id="tabs-2">
			<b>中华人民共和国</b><br /> 无线电频率划分图<br />
			<hr />
			<table style="width: 100%">
				<c:forEach var="services" items="${frmServices}">
					<c:set var="service" value="${services.value}" />
					<tr>
						<td bgcolor="${service.serviceColorHex}" width="20px;"></td>
						<td style="font-size: 12px;">${service.serviceName}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>