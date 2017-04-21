<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表7-B-广播电台技术资料申报表</title>
<!-- -------------------------------- jquery的 浏览器适配      ----------------------------------   -->
<!--[if !IE]> -->
<script
	src="${pageContext.request.contextPath }/assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="${pageContext.request.contextPath }/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->

<!-- 添加页面提示信息     
FormTipBasic.js和FormTipT.js是data文件
qtipHelper.js是service文件
FormTipController是controller文件
  -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/tip/FormTipBasic.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/tip/FormTipH.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/tip/qtipHelper.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/tip/FormTipController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/tip/bindTip.js"></script>
<!-- 页面校验 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/validate/FormValidate.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/validate/validateHelper.js"></script>
<!-- 日期控件 -->
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/My97DatePicker/WdatePicker.js"></script>
<!-- 禁止退格键 -->

<!-- 动态添加行 -->
<script
	src="${pageContext.request.contextPath }/assets/js/station/dynamicTable/dynamicItemsHelp.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/station/dynamicTable/dynamicItemsBasic.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/station/dynamicTable/dynamicItemsBind.js"></script>
<!--对radio和checkbox添加点击事件 ,实现点击后background的改变-->
<script
	src="${pageContext.request.contextPath }/assets/js/station/radioCheckboxHelp.js"></script>

<!-- --------------------------------  样式      ------------------------------------>
<!-- 下国无管表7的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formB.css" />
<!-- 下拉框的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/combobox.css" />
<!-- 页面校验的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/Validate.css" />

<!-- 临时添加的样式 -->
<style type="text/css">
</style>
</head>
<body style="width: 100%; background-color: White; overflow-x: hidden">
	<table cellpadding="0" cellspacing="0"
		style="height: 100%; width: 100%;">
		<tr>
			<td align="center">
				<div id="formcontent"
					style="width: 1000px; background-color: White;">
					<form></form>
					<form id="form1" runat="server">
						<table border="0" id="formTableC" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="8"><span id="spanTitle">广播电台技术资料申报表</span></td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="4">
									&nbsp;&nbsp;国无管表7</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="4">B<input id="txtSTAT_TDI" name="stat_tdi"
									type="text" class="txtLine stat_tdi" maxlength="4" />&nbsp;&nbsp;
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdTitleTopLeft Title2" colspan="6">① 台（站）数据</td>
								<td class="tdTitleTopRight Title2" style="text-align: right">
									<input id="txtSTAT_Stauts" type="text" style="width: 50px"
									class="txtStatStauts" />
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">申请表编号<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent" colspan="2"><input id="txtAPP_Code"
									name="station.appCode" type="text" class="txtDefault app_code"
									maxlength="14" /></td>
								<td class="tdContent Title3">台标<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3" colspan="3"
									style="text-align: left"><input id="txtST_B_SGN"
									name="stationT.stBSgn" type="text" class="txtDefault st_b_sgn" />
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">台（站）名称<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="4" class="tdContent"><input id="txtSTAT_Name"
									name="station.statName" type="text"
									class="txtDefault stat_name" /></td>
								<td class="tdContent Title3" rowspan="2">台站类别<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3" style="text-align: left">
									<input id="Radio5" type="radio" name="station.statType"
									value="0" class="required" /> <label for="Radio5"> 声音</label>
									<input id="Radio6" type="radio" name="station.statType"
									value="1" class="required" /> <label for="Radio6"> 电视</label>
									<input id="Radio7" type="radio" name="station.statType"
									value="2" class="required" /> <label for="Radio7"> 多媒体</label>
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">台（站）地址<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent" colspan="4"><input id="txtSTAT_ADDR"
									name="station.statAddr" type="text"
									class="txtDefault stat_addr" /></td>
								<td class="tdBorderRight Title3" style="text-align: left">
									<input id="Radio8" type="radio" name="station.statType"
									value="0" class="required" /> <label for="Radio8"> 对外</label>
									<input id="Radio9" type="radio" name="station.statType"
									value="1" class="required" /> <label for="Radio9"> 实验</label>
									<input id="Radio10" type="radio" name="station.statType"
									value="2" class="required" /> <label for="Radio10"> 其他</label>
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">台站级别<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent Title3" colspan="4"
									style="text-align: left"><input id="Radio11" type="radio"
									name="stationT.stBLevel" value="1" class="required" /> <label
									for="Radio11"> 中央</label> <input id="Radio12" type="radio"
									name="stationT.stBLevel" value="2" class="required" /> <label
									for="Radio12"> 省级</label> <input id="Radio13" type="radio"
									name="stationT.stBLevel" value="3" class="required" /> <label
									for="Radio13"> 地市级</label> <input id="Radio14" type="radio"
									name="stationT.stBLevel" value="4" class="required" /> <label
									for="Radio14"> 县级以下</label></td>
								<td class="tdContent Title3">广播制式<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3" style="text-align: left">
									<select id="selSys_Code" class="txtDefault combobox-text"
									style="width: 98%" name="stationT.stBBm">
										<option value="">--请选择--</option>
										<c:forEach items="${stBBmDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select>
								</td>
							</tr>
							<tr style="height: 18.45pt;" datagrid-row-index='id1'>
								<td class="tdBorderLeft Title3"><label id="lblEdu">是否教育台</label>
								</td>
								<td class="tdContent Title3" colspan="2"
									style="text-align: left"><input id="Radio1" type="radio"
									name="stationT.stBEdu" value="1" /> <label for="Radio1">
										是</label> <input id="Radio2" type="radio" name="stationT.stBEdu"
									value="0" /> <label for="Radio2"> 否</label></td>
								<td class="tdContent Title3"><label id="lblIC">是否差转台</label>
								</td>
								<td class="tdContent Title3" style="text-align: left"><input
									id="Radio3" type="radio" name="stationT.stBIc" value="1" /> <label
									for="Radio3"> 是</label> <input id="Radio4" type="radio"
									name="stationT.stBIc" value="0" /> <label for="Radio4">
										否</label></td>
								<td class="tdContent Title3">工作时间<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight   tdLabelAndCheckbox"><input
									id="txtST_Time_B" name="stationT.stTimeB" value="00:00"
									type="text" style="width: 50px" class="txtDefault startTime"
									starttimecontrol="startTime"
									onclick="WdatePicker({dateFmt:'H/m'})" />至 <input
									id="txtST_Time_E" name="stationT.stTimeE" value="23:59"
									type="text" style="width: 50px" class="txtDefault endTime"
									endtimecontrol="endTime" onclick="WdatePicker({dateFmt:'H/m'})" />
									<input id="Radio15" type="checkbox" name="check_st_time"
									value="1" /> <label for="Radio15"> 全天</label></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">地理坐标<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent Title3">东经</td>
								<td class="tdContent Title3"><input id="txtSTAT_LG1"
									name="stat_lg" type="text"
									class="txtNumber easyui-numberbox stat_lg1" />° <input
									id="txtSTAT_LG2" name="stat_lg1" type="text"
									class="txtNumber easyui-numberbox stat_lg2" />′ <input
									id="txtSTAT_LG3" name="stat_lg2" type="text"
									class="txtNumber easyui-numberbox stat_lg3" precision="2" />″
									<!-- 页面上没有但是又非空的字段 ， station.statLg = stat_lg_s+stat_lg1_s+stat_lg2_s -->
									<input name="station.statLg" value="" type="hidden"></td>
								<td class="tdContent Title3">北纬</td>
								<td class="tdContent Title3"><input id="txtSTAT_LA1"
									name="stat_la" type="text"
									class="txtNumber easyui-numberbox stat_la1" />° <input
									id="txtSTAT_LA2" name="stat_la1" type="text"
									class="txtNumber easyui-numberbox stat_la2" />′ <input
									id="txtSTAT_LA3" name="stat_la2" type="text"
									class="txtNumber easyui-numberbox stat_la3" precision="2" />″
									<!-- 页面上没有但是又非空的字段 ， station.statLa = stat_la_s+stat_la1_s+stat_la2_s -->
									<input name="station.statLa" value="" type="hidden"></td>
								<td class="tdContent Title3">海拔高度<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3"><input id="txtSTAT_AT"
									name="station.statAt" type="text" style="width: 180px"
									class="txtNumber easyui-numberbox stat_at" precision="1" />m</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3"><label
									id="lblST_B_Cover_Area">覆盖区域</label></td>
								<td class="tdContent Content3" colspan="2"><input
									id="txtST_B_Cover_Area" name="stationT.stBCoverArea"
									type="text" class="txtDefault st_b_cover_area" maxlength="80" />
								</td>
								<td class="tdContent Title3">设备数量<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent"><input id="txtSTAT_EQU_SUM"
									name="station.statEquSum" type="text" style="width: 120px"
									class="txtNumber easyui-numberbox stat_equ_sum_lm"
									precision="0" /></td>
								<td class="tdContent Title3">启用日期<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3" style="text-align: left">
									<input id="txtSTAT_Date_Start" name="station.statDateStart"
									type="text"
									class="txtDefault easyui-datebox combobox-text STAT_Date_Start"
									maxlength="10" style="width: 140px"
									onclick="WdatePicker({dateFmt:'yyyy/M/d'})" />
								</td>
							</tr>
						</table>
					</form>
					<table id="TablelGrid" border="0" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;">
						<tr>
							<td colspan="8">
								<div id="divGrid">
									<table border="0" cellpadding="0" cellspacing="0"
										style="margin: 0px 0px 0px 0px; width: 1000px;">
										<tr style="height: 18.45pt;">
											<td colspan="4" class="tdTitleLeft Title2">② 频率数据</td>
										</tr>
										<tr>
											<td colspan="4" style="padding: 0px 0px 0px 0px;">
												<table border="0" cellpadding="0" cellspacing="0"
													style="margin: 0px 0px 0px 0px; width: 1000px;">
													<tr class="Title3">
														<td class="tdBorderLeft">序号</td>
														<td colspan="2" class="tdContent">发射中心频率</td>
														<td class="tdContent">发射时间</td>
														<td colspan="2" class="tdContent">必要带宽</td>
														<td class="tdContent">调制方式</td>
														<td colspan="2" class="tdContent">发射功率</td>
														<td colspan="2" class="tdBorderRight">EIRP</td>
													</tr>

													<c:forEach varStatus="k" begin="0" end="1" step="1">
														<tr class="Title3">
															<td class="tdBorderLeft"><input id="" type="text"
																class="txtDefault"
																name="freqTList[${k.index*4 }].ftFreqNo"
																value="${k.index*4 }" style="width: 30px" /> <input
																id="" type="hidden" class="txtDefault"
																name="freqList[${k.index*4 }].freqMb" value="0"
																style="width: 98%" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault"
																name="freqList[${k.index*4 }].freqEfb" value=""
																style="width: 98%" /></td>
															<td rowspan="4" class="tdContent"><input
																id="radio_freq_band_unit_type0" type="radio"
																name="radio_freq_band_unit_type" class="required"
																value="0" /><label>kHz</label><br> <input
																id="radio_freq_band_unit_type1" type="radio"
																name="radio_freq_band_unit_type" class="required"
																value="1" /><label>MHz</label></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault"
																name="freqTList[${k.index*4 }].ftFreqTimeb" value=""
																style="width: 30%"
																onclick="WdatePicker({dateFmt:'H/m'})" /> 至<input id=""
																type="text" class="txtDefault"
																name="freqTList[${k.index*4 }].ftFreqTimee" value=""
																style="width: 30%"
																onclick="WdatePicker({dateFmt:'H/m'})" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault"
																name="freqList[${k.index*4 }].freqEBand" value=""
																style="width: 98%" /></td>
															<td rowspan="4" class="tdContent"><input
																id="radio_freq_band_unit_type0" type="radio"
																name="radio_freq_band_unit_type" class="required"
																value="0" /><label>kHz</label><br> <input
																id="radio_freq_band_unit_type1" type="radio"
																name="radio_freq_band_unit_type" class="required"
																value="1" /><label>MHz</label></td>
															<td class="tdContent"><select id=""
																class="txtDefault combobox-text" style="width: 98%"
																name="freqList[${k.index*4 }].freqMod">
																	<option value="">请选择</option>
																	<c:forEach items="${freqModDic}" var="f">
																		<option value="${f.cn}">${f.codeChiName }</option>
																	</c:forEach>
															</select></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault"
																name="freqTList[${k.index*4 }].ftFreqEpow" value=""
																style="width: 98%" /></td>
															<td rowspan="4" class="tdContent" align="left"><input
																id="radio_freq_band_unit_type0" type="radio"
																name="radio_freq_band_unit_type" class="required"
																value="0" /><label>W</label><br> <input
																id="radio_freq_band_unit_type1" type="radio"
																name="radio_freq_band_unit_type" class="required"
																value="1" /><label>kW</label></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault"
																name="freqTList[${k.index*4 }].ftFreqEirp" value=""
																style="width: 98%" /></td>
															<td rowspan="4" class="tdBorderRight">dBW</td>
														</tr>
														<c:forEach varStatus="s" begin="1" end="3" step="1">
															<tr class="Title3">
																<td class="tdBorderLeft"><input id="" type="text"
																	class="txtDefault"
																	name="freqTList[${k.index*4+s.index }].ftFreqNo"
																	value="${k.index*4+s.index }" style="width: 30px" /> <input
																	id="" type="hidden" class="txtDefault"
																	name="freqList[${k.index*4+s.index }].freqMb" value="0"
																	style="width: 98%" /></td>
																<td class="tdContent"><input id="" type="text"
																	class="txtDefault"
																	name="freqList[${k.index*4+s.index }].freqEfb" value=""
																	style="width: 98%" /></td>
																<td class="tdContent"><input id="" type="text"
																	class="txtDefault"
																	name="freqTList[${k.index*4+s.index }].ftFreqTimeb"
																	value="" style="width: 30%"
																	onclick="WdatePicker({dateFmt:'H/m'})" /> 至<input id=""
																	type="text" class="txtDefault"
																	name="freqTList[${k.index*4+s.index }].ftFreqTimee"
																	value="" style="width: 30%"
																	onclick="WdatePicker({dateFmt:'H/m'})" /></td>
																<td class="tdContent"><input id="" type="text"
																	class="txtDefault"
																	name="freqList[${k.index*4+s.index }].freqEBand"
																	value="" style="width: 98%" /></td>
																<td class="tdContent"><select id=""
																	class="txtDefault combobox-text" style="width: 98%"
																	name="freqList[${k.index*4+s.index }].freqMod">
																		<option value="">请选择</option>
																		<c:forEach items="${freqModDic}" var="f">
																			<option value="${f.cn}">${f.codeChiName }</option>
																		</c:forEach>
																</select></td>
																<td class="tdContent"><input id="" type="text"
																	class="txtDefault"
																	name="freqTList[${k.index*4+s.index }].ftFreqEpow"
																	value="" style="width: 98%" /></td>
																<td class="tdContent"><input id="" type="text"
																	class="txtDefault"
																	name="freqTList[${k.index*4+s.index }].ftFreqEirp"
																	value="" style="width: 98%" /></td>
															</tr>
														</c:forEach>
													</c:forEach>
												</table>
											</td>
										</tr>

										<tr>
											<td colspan="4" style="padding: 0px 0px 0px 0px;">
												<table border="0" cellpadding="0" cellspacing="0"
													style="margin: 0px 0px 0px 0px; width: 1000px;">
													<tr style="height: 18.45pt;">
														<td class="tdTitleTop Title2" colspan="8">③ 设备数据</td>
													</tr>
													<tr class="Title3">
														<td colspan="2" class="tdBorderLeft">设备型号</td>
														<td class="tdContent">型号核准代码</td>
														<td class="tdContent">设备出厂号</td>
														<td class="tdBorderRight">设备生产厂家</td>
													</tr>
													<tr class="Title3">
														<td class="tdBorderLeft"><input id="" type="hidden"
															class="txtDefault" name="equList[0].equMb" value="0"
															style="width: 98%" />主</td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equList[0].equModel" value=""
															style="width: 98%" /></td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equList[0].equAuth" value=""
															style="width: 98%" /></td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equList[0].equCode" value=""
															style="width: 98%" /></td>
														<td class="tdBorderRight"><input id="" type="text"
															class="txtDefault" name="equList[0].equMenu" value=""
															style="width: 98%" /></td>
													</tr>
													<tr class="Title3">
														<td class="tdBorderLeft"><input id="" type="hidden"
															class="txtDefault" name="equList[1].equMb" value="1"
															style="width: 98%" />备</td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equList[1].equModel" value=""
															style="width: 98%" /></td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equList[1].equAuth" value=""
															style="width: 98%" /></td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equList[1].equCode" value=""
															style="width: 98%" /></td>
														<td class="tdBorderRight"><input id="" type="text"
															class="txtDefault" name="equList[1].equMenu" value=""
															style="width: 98%" /></td>
													</tr>
												</table>
											</td>
										</tr>

										<tr>
											<td colspan="4" style="padding: 0px 0px 0px 0px;">
												<table border="0" cellpadding="0" cellspacing="0"
													style="margin: 0px 0px 0px 0px; width: 1000px;">
													<tr style="height: 18.45pt;">
														<td class="tdTitleTop Title2" colspan="7">④ 天线数据</td>
													</tr>
													<tr class="Title3">
														<td class="tdBorderLeft">序号</td>
														<td class="tdContent">天线生产厂家</td>
														<td class="tdContent">天线型号</td>
														<td class="tdContent">极化方式</td>
														<td class="tdContent">天线距地面<br>高度
														</td>
														<td class="tdContent">天线最大<br>辐射方位角
														</td>
														<td class="tdBorderRight">天线射线<br>仰角
														</td>
													</tr>
													<c:forEach varStatus="s" begin="0" end="1" step="1">
														<tr class="Title3">
															<td class="tdBorderLeft"><input id="" type="text"
																class="txtDefault" name="antT.atAntNo"
																value="${s.index+1 }" style="width: 20px" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="ant.antMenu" value=""
																style="width: 98%" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="ant.antModel" value=""
																style="width: 98%" /></td>
															<td class="tdContent"><select id=""
																class="txtDefault combobox-text" style="width: 98%"
																name="ant.antPole">
																	<option value="">请选择</option>
																	<c:forEach var="f" items="${antPoleDic }">
																		<option value="${f.cn }">${f.codeChiName }</option>
																	</c:forEach>
															</select></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="ant.antHight" value=""
																style="width: 70%" />m</td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="ant.antAngle" value=""
																style="width: 70%" />°</td>
															<td class="tdBorderRight"><input id="" type="text"
																class="txtDefault" name="antT.atSeB" value=""
																style="width: 45%" />/ <input id="" type="text"
																class="txtDefault" name="antT.atSeE" value=""
																style="width: 45%" />°</td>
														</tr>
													</c:forEach>
												</table>
											</td>
										</tr>

										<tr>
											<td colspan="4" style="padding: 0px 0px 0px 0px;">
												<table border="0" cellpadding="0" cellspacing="0"
													style="margin: 0px 0px 0px 0px; width: 1000px;">
													<tr style="height: 18.45pt;">
														<td class="tdTitleTop Title2" colspan="6">⑤ 馈线数据</td>
													</tr>
													<tr class="Title3">
														<td colspan="2" class="tdBorderLeft">馈线生产厂家</td>
														<td colspan="4" class="tdBorderRight"><input id=""
															type="text" class="txtDefault" name="feed.feedMenu"
															value="" style="width: 98%" /></td>
													</tr>
													<tr class="Title3">
														<td class="tdBorderLeftCorner">馈线型号</td>
														<td class="tdBorderBottom"><input id="" type="text"
															class="txtDefault" name="feed.feedModel" value=""
															style="width: 98%" /></td>
														<td class="tdBorderBottom">馈线长度</td>
														<td class="tdBorderBottom"><input id="" type="text"
															class="txtDefault" name="feed.feedLength" value=""
															style="width: 95%" />m</td>
														<td class="tdBorderBottom">馈线系统总损耗</td>
														<td class="tdBorderRightCorner"><input id=""
															type="text" class="txtDefault" name="feed.feedLose"
															value="" style="width: 95%" />dB</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
					<form></form>
					<form id="formMemo">
						<table border="0" id="TablelMemo" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #B46F3C">
									&nbsp;</td>
							</tr>
							<tr style="height: 22.7pt">
								<td class="bottomTableLeft Title3" style="width: 150px">
									备&nbsp;注</td>
								<td colspan="7" class="bottomTableRight"><input
									id="txtMEMO" name="station.memo" style="width: 750px"
									type="text" class="txtDefault meno" /></td>
							</tr>
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #005F96">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #005F96">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #005F96; text-align: right;">
									中华人民共和国信息产业部制&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						</table>
					</form>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>