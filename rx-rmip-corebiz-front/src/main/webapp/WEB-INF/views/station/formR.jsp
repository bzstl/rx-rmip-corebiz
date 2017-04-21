<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表10-R-雷达站技术资料申报表</title>
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

<!-- 下国无管表10的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formR.css" />
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
	<table style="height: 100%; width: 100%;">
		<tr>
			<td align="center">
				<div id="formcontent"
					style="width: 1000px; background-color: White;">
					<form id="form1" runat="server">
						<table border="0" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;"
							id="formTableR">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="7"><span id="spanTitle">雷达站技术资料申报表</span></td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="3">
									&nbsp;&nbsp;国无管表10</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="4">R<input id="txtSTAT_TDI" type="text"
									name="stat_tdi_s" class="txtLine stat_tdi" maxlength="4" />&nbsp;&nbsp;
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
								<td class="tdContent Title3Left" colspan="2"><input
									id="txtAPP_Code" name="station.appCode" type="text"
									class="txtDefault app_code" maxlength="14" /></td>
								<td class="tdContent Title3">台（站）类别<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3Left" colspan="3"><select
									id="selSys_Code" class="txtDefault combobox-text"
									style="width: 98%" name="station.statType">
										<option value="">--请选择--</option>
										<c:forEach items="${stationTypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<%--<td colspan="2" class="tdBorderRight Title3">
                                <input id="rdNew" type="radio" name="radio_optype" value="0" />
                                <label for="rdNew">
                                    新设</label>&nbsp;
                                <input id="rdChange" type="radio" name="radio_optype" value="1" />
                                <label for="rdChange">
                                    变更</label>
                            </td>--%>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">台（站）名称</td>
								<td colspan="4" class="tdContent Title3Left"><input
									id="txtSTAT_Name" type="text" name="station.statName"
									class="txtDefault stat_name_noRequired" /></td>
								<td class="tdContent Title3">设备数量</td>
								<td class="tdBorderRight Title3Left"><input
									id="txt_Equ_sum" type="text" name="station.statEquSum"
									class="txtDefault easyui-numberbox equ_sum_d" /></td>
							</tr>
							<tr style="height: 18.45pt;" datagrid-row-index="id1">
								<td class="tdBorderLeft Title3">台（站）地址<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent Title3Left" colspan="4"><input
									id="txtSTAT_ADDR" type="text" name="station.statAddr"
									class="txtDefault app_pa_stat_addr" /></td>
								<td class="tdContent Title3">工作时间<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight tdLabelAndCheckbox"><input
									id="txt_St_TimeB" name="stationT.stTimeB" style="width: 40px"
									class="txtDefault startTime" starttimecontrol="startTime" /> —
									<input id="txt_St_TimeE" name="stationT.stTimeE"
									style="width: 40px" class="txtDefault endTime"
									endtimecontrol="endTime" /> <input id="rdStTime"
									type="checkbox" name="radio_sttime" value="1" /> <label
									for="rdStTime" style="width: 50px"> 全天</label>&nbsp;</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">地理坐标<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent Title3" style="width: 40px">东经</td>
								<td class="tdContent Title3Left"><input id="txtSTAT_LG1"
									type="text" name="stat_lg_s" style="width: 30px"
									class="txtDefault easyui-numberbox stat_lg1" />° <input
									id="txtSTAT_LG2" type="text" name="stat_lg1_s"
									style="width: 30px"
									class="txtDefault easyui-numberbox stat_lg2" />′ <input
									id="txtSTAT_LG3" precision="2" type="text" name="stat_lg2_s"
									style="width: 40px"
									class="txtDefault easyui-numberbox stat_lg3" />″ <!-- 页面上没有但是又非空的字段 ， station.statLg = stat_lg_s+stat_lg1_s+stat_lg2_s -->
									<input name="station.statLg" value="" type="hidden"></td>
								<td class="tdContent Title3">北纬</td>
								<td class="tdContent Title3Left"><input id="txtSTAT_LA1"
									type="text" name="stat_la_s" style="width: 30px"
									class="txtDefault easyui-numberbox stat_la1" />° <input
									id="txtSTAT_LA2" type="text" name="stat_la1_s"
									style="width: 30px"
									class="txtDefault easyui-numberbox stat_la2" />′ <input
									id="txtSTAT_LA3" precision="2" type="text" name="stat_la2_s"
									style="width: 40px"
									class="txtDefault easyui-numberbox stat_la3" />″ <!-- 页面上没有但是又非空的字段 ， station.statLa = stat_la_s+stat_la1_s+stat_la2_s -->
									<input name="station.statLa" value="" type="hidden"></td>
								<td class="tdContent Title3">海拔高度<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3Left"><input id="txtSTAT_AT"
									type="text" name="station.statAt"
									style="width: 120px; text-align: left"
									class="txtDefault easyui-numberbox stat_at" precision="1" />m
								</td>
							</tr>
							<tr style="height: 18.45pt;" equrequired="true">
								<td class="tdBorderLeftCorner Title3">工作方位角<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderBottom Title3Left" colspan="2"
									style="width: 150px"><input id="txtST_R_WAMIN" type="text"
									name="stationT.stRWamin" precision="1" style="width: 60px;"
									startrequired="true"
									class="txtNumber easyui-numberbox at_ant_upangMax" /> — <input
									id="txtST_R_WAMAX" type="text" endrequired="true"
									name="stationT.stRWamax" precision="1"
									style="width: 60px; padding-left: 35px"
									class="txtNumber easyui-numberbox at_ant_upangMax" /> °</td>
								<td class="tdBorderBottom Title3">俯仰角<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderBottom Title3Left"><input
									id="txtST_R_EMIN" type="text" name="stationT.stREmin"
									precision="1" style="width: 60px;" antsrequired="true"
									class="txtNumber easyui-numberbox st_r_eax1" /> — <input
									id="txtST_R_EMAX" type="text" anterequired="true"
									name="stationT.stREmax" precision="1"
									style="width: 60px; padding-left: 35px"
									class="txtNumber easyui-numberbox st_r_eax" /> °</td>
								<td class="tdBorderBottom Title3">启用日期<span
									style="color: red;">*</span>
								</td>
								<td class="tdBorderRightCorner Title3Left"><input
									id="txtSTAT_Date_Start" type="text"
									name="station.statDateStart"
									class="txtDefault easyui-datebox combobox-text STAT_Date_Start"
									maxlength="10" style="width: 140px"
									onClick="WdatePicker({dateFmt:'yyyy/M/d'})" /></td>
							</tr>
						</table>
					</form>
					<table border="0" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;"
						id="Table1">
						<tr style="height: 18.45pt;">
							<td colspan="6" class=" tdTitleLeft Title2">② 频率数据</td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td class="tdBorderLeft ">发射中心频率<br> <input
								id="radio_freq_band_unit_type0" type="radio"
								name="radio_freq_band_unit_type" class="required" value="0" />
								<label>MHz</label> <input id="radio_freq_band_unit_type1"
								type="radio" name="radio_freq_band_unit_type" class="required"
								value="1" /> <label>GHz</label>
							</td>
							<td class="tdContent ">发射必要带宽<br> <input
								id="radio_freq_band_unit_type0" type="radio"
								name="radio_freq_band_unit_type" class="required" value="0" />
								<label>kHz</label> <input id="radio_freq_band_unit_type1"
								type="radio" name="radio_freq_band_unit_type" class="required"
								value="1" /> <label>MHz</label>
							</td>
							<td class="tdContent ">调制特性</td>
							<td class="tdContent ">峰值功率<br>(kW)
							</td>
							<td class="tdContent ">平均功率<br>(W)
							</td>
							<td class="tdBorderRight ">接收中心频率<br> <input
								id="radio_freq_band_unit_type0" type="radio"
								name="radio_freq_band_unit_type" class="required" value="0" />
								<label>kHz</label> <input id="radio_freq_band_unit_type1"
								type="radio" name="radio_freq_band_unit_type" class="required"
								value="1" /> <label>MHz</label>
							</td>
						</tr>

						<c:forEach varStatus="s" begin="0" end="5" step="1">
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft "><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfb"
									value="" style="width: 98%" /></td>
								<td class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEBand"
									value="" style="width: 98%" /></td>
								<td class="tdContent "><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="freqList[${s.index }].freqMod">
										<option value="">--请选择--</option>
										<c:forEach items="${freqModDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqPowMax"
									value="" style="width: 98%" /></td>
								<td class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqPowAvg"
									value="" style="width: 98%" /></td>
								<td class="tdBorderRight "><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRfb"
									value="" style="width: 98%" /></td>
							</tr>
						</c:forEach>

						<c:forEach varStatus="s" begin="0" end="1" step="1">
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft">起： <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfb"
									value="" style="width: 80%" />
								</td>
								<td rowspan="2" class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEBand"
									value="" style="width: 98%" /></td>
								<td rowspan="2" class="tdContent "><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="freqList[${s.index }].freqMod">
										<option value="">--请选择--</option>
										<c:forEach items="${freqModDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td rowspan="2" class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqPowMax"
									value="" style="width: 98%" /></td>
								<td rowspan="2" class=" tdContent"><input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqPowAvg"
									value="" style="width: 98%" /></td>
								<td class="tdBorderRight ">起： <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRfb"
									value="" style="width: 80%" />
								</td>
							</tr>
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft ">止： <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfe"
									value="" style="width: 80%" />
								</td>
								<td class="tdBorderRight ">止： <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRfe"
									value="" style="width: 80%" />
								</td>
							</tr>
						</c:forEach>
					</table>

					<table border="0" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;"
						id="Table2">

						<tr>
							<td colspan="8">
								<form id="form2">
									<table border="0" cellpadding="0" cellspacing="0"
										style="border: none; width: 100%; background-color: White;"
										pwidrequired="true" id="tableEqu">
										<tr style="height: 18.45pt;">
											<td colspan="8" class=" tdTitleLeft Title2">③ 设备数据</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3">设备生产厂家<span
												style='color: #FF0000;'>*</span>
											</td>
											<td class="tdContent Title3Left" colspan="4"><input
												id="txtEQU_MENU" type="text" name="equ.equMenu"
												class="txtDefault EQU_MENU" /></td>
											<td class="tdContent Title3">
												<div id="divEquModel1">
													设备型号<span style="color: red;">*</span>
												</div>
												<div id="divEquModel2" style="display: none">
													<a href="javascript:void(0)" class="easyui-linkbutton"
														onclick="javascript:ShowModalByAntEqu(2,2,'#tableEqu')">
														设备型号</a><span style="color: #FF0000;">*</span>
												</div>
											</td>
											<td class="tdBorderRight Title3Left" colspan="2"><input
												id="txtEQU_Model" type="text" name="equ.equModel"
												class="txtDefault EQU_Model" /></td>
										</tr>
										<tr style="height: 18.45pt;" equrequired="true">
											<td class="tdBorderLeft Title3"><label id="lblEQU_AUTH">
													型号核准代码<span style="color: #FF0000;">*</span>
											</label></td>
											<td class="tdContent Title3Left"><input id="txtEQU_AUTH"
												type="text" name="equ.equAuth"
												class="txtDefault EQU_AUTH required" /></td>
											<td class="tdContent Title3" colspan="2"><label
												id="lblET_EQU_PUP"> 脉冲上升/下降时间</label></td>
											<td class="tdContent Title3Left"><input
												id="txtET_EQU_PUP" type="text" name="equT.etEquPup"
												class="txtDefault easyui-numberbox et_equ_ns_r"
												startrequired="true" style="width: 80px" precision="1" /> /
												<input id="txtET_EQU_PDN" type="text" name="equT.etEquPdn"
												class="txtDefault easyui-numberbox et_equ_ns_r"
												style="width: 80px" precision="1" endrequired="true" />ns</td>
											<td class="tdContent Title3">Chirp宽度</td>
											<td class="tdBorderRight Title3Left" colspan="2"><input
												id="txtET_EQU_CHRIP" precision="3" type="text"
												name="equT.etEquChrip"
												class="txtDefault easyui-numberbox et_equ_pwid" />MHz</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeftCorner Title3" rowspan="2"><label
												id="lblET_EQU_PWID"> 脉冲宽度</label></td>
											<td class="tdContent Title3Left"><input
												id="txtET_EQU_PWID1" precision="1" type="text"
												name="equT.etEquPwid1"
												class="txtDefault easyui-numberbox et_equ_pwid" /></td>
											<td class="tdBorderBottom Title3" rowspan="2">μs</td>
											<td class="tdContent Title3">
												<!-- 
                                            <p style="line-height: 10px">
                                                脉冲重复</p>
                                            <p style="line-height: 10px">
                                              <label id="lblET_EQU_SEN">周期或频率</label>  </p> -->
												<input id="radioEquSen1" type="checkbox"
												name="radio_et_equ_sen1" value="1" /> <label
												for="radioEquSen1"> 脉冲重复周期</label>
											</td>
											<td class="tdContent Title3Left"><input
												id="txtET_EQU_PR" type="text" name="equT.etEquPr"
												class="txtDefault easyui-numberbox et_equ_pr" precision="1" />μs
											</td>
											<td class="tdContent Title3"><label id="lblT_EQU_SEN">
													接收机灵敏度</label></td>
											<td class="tdBorderRight tdLabelAndCheckbox" colspan="2">
												<input id="txtET_EQU_SEN" type="text" name="equT.etEquSen"
												precision="1" class="txtDefault easyui-numberbox et_equ_sen"
												style="width: 60px" /> <input id="radioET_EQU_SENU0"
												type="radio" name="equT.etEquSenu" value="0" /> <label>μv</label>
												<input id="radioET_EQU_SENU1" type="radio"
												name="equT.etEquSenu" value="1" /> <label>dBm</label>
											</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderBottom Title3Left"><input
												id="txtET_EQU_PWID2" precision="1" type="text"
												name="equT.etEquPwid2"
												class="txtDefault easyui-numberbox et_equ_pwidEnd" /></td>
											<td class="tdBorderBottom Title3"><input
												id="radioEquSen2" type="checkbox" name="radio_et_equ_sen2"
												value="1" /> <label for="radioEquSen2"> 脉冲重复频率</label></td>
											<td class="tdBorderBottom Title3Left"><input
												id="txtET_EQU_PF" type="text" name="equT.etEquPf"
												class="txtDefault easyui-numberbox et_equ_pf" precision="3" />Hz
											</td>
											<td class="tdBorderBottom Title3">接收机中频带宽</td>
											<td class="tdBorderRightCorner Title3Left" colspan="2">
												<input id="txtET_EQU_RWID" precision="4" type="text"
												name="equT.etEquRwid"
												class="txtDefault easyui-numberbox et_equ_rwid" />MHz
											</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td colspan="8" class=" tdTitleLeft Title2">④ 天线数据</td>
										</tr>

										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3">天线类型<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdContent Title3Left" colspan="2"><select
												id="" class="txtDefault combobox-text" style="width: 98%"
												name="ant.antType">
													<option value="">请选择</option>
													<c:forEach var="f" items="${antTypeDic }">
														<option value="${f.cn }">${f.codeChiName }</option>
													</c:forEach>
											</select></td>
											<td class="tdContent Title3">
												<div id="divAntModel1">
													天线型号<span style="color: red;">*</span>
												</div>
												<div id="divAntModel2" style="display: none">
													<a href="javascript:void(0)" class="easyui-linkbutton"
														onclick="javascript:ShowModalByAntEqu(1,2,'#tableEqu')">
														天线型号</a><span style="color: #FF0000;">*</span>
												</div>
											</td>
											<td class="tdContent Title3Left"><input
												id="txtANT_Model" type="text" name="ant.antModel"
												class="txtDefault EQU_Model" /></td>
											<td class="tdContent Title3">天线尺寸</td>
											<td class="tdBorderRight Title3Left" colspan="2"><input
												id="txtANT_Size" type="text" name="ant.antSize"
												class="txtDefault  at_size_r" precision="1"
												style="width: 150px; text-align: left" /> m</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3">天线生产厂家</td>
											<td class="tdBorderRight Title3Left" colspan="7"><input
												id="txtANT_MENU" type="text" name="ant.antMenu"
												class="txtDefault ant_menu" /></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3">天线增益<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdContent Title3Left" colspan="2"><input
												id="txtANT_Gain" type="text" name="ant.antGain"
												class="txtNumber easyui-numberbox ant_gain_required"
												precision="1" style="width: 140px" />dBi</td>
											<td class="tdContent Title3"><label id="lblAT_BWID">
													波束宽度</label></td>
											<td class="tdContent Title3Left"><input id="txtAT_BWID"
												type="text" precision="1" name="antT.atBwid"
												class="txtDefault easyui-numberbox at_bwid" />°</td>
											<td class="tdContent Title3">第一旁瓣电平</td>
											<td class="tdBorderRight Title3Left" colspan="2"><input
												id="txtAT_LEL" precision="1" type="text" name="antT.atLel"
												class="txtDefault easyui-numberbox at_lel" />dB</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeftCorner Title3">极化方式<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdBorderBottom tdContent Title3Left" colspan="2">
												<select id="" class="txtDefault combobox-text"
												style="width: 98%" name="ant.antPole">
													<option value="">请选择</option>
													<c:forEach var="f" items="${antPoleDic }">
														<option value="${f.cn }">${f.codeChiName }</option>
													</c:forEach>
											</select>
											</td>
											<td class="tdBorderBottom tdContent  Title3"><label
												id="lblAT_SSPeed"> 扫描速度</label></td>
											<td class="tdBorderBottom tdContent  Title3Left"><input
												id="txtAT_SSPeed" type="text" name="antT.atSspeed"
												precision="1" class="txtDefault easyui-numberbox at_sspeed" />º/s
											</td>
											<td class="tdBorderBottom Title3"><label
												id="lblANT_Hight"> 天线距地面高度</label></td>
											<td class="tdBorderRightCorner Title3Left" colspan="2">
												<input id="txtANT_Hight" type="text" name="ant.antHight"
												precision="1" style="width: 150px;"
												class="txtNumber easyui-numberbox ant_hight" /> m
											</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td colspan="8" class=" tdTitleLeft Title2">⑤ 应答器（探空仪）数据
											</td>
										</tr>
										<tr style="height: 18.45pt;" id="trEqu1">
											<td class="tdBorderLeft Title3"><label id="lblModel">
													设备型号</label></td>
											<td class="tdContent Title3Left" colspan="2"><input
												id="txtEqu_MOdel_C" type="text" name="equ.equModel"
												class="txtDefault EQU_Model_tf" /></td>
											<td class="tdContent Title3"><label id="lblMenu">
													应答器生产厂家</label></td>
											<td class="tdBorderRight Title3Left" colspan="4"><input
												id="txtEqu_Model_C" type="text" name="equ.equMenu"
												class="txtDefault EQU_MENU_by_dlm" /></td>
										</tr>
										<tr style="height: 18.45pt;" id="trEqu2">
											<td class="tdBorderLeft Title3"><label id="lblAuth">
													型号核准代码</label></td>
											<td class="tdContent" colspan="2"><input
												id="txtEqu_Auth_C" type="text" name="equ.equAuth"
												class="txtDefault EQU_AUTH" /></td>
											<td class="tdContent Title3"><label id="lblRF">
													发射频率</label></td>
											<td class="tdContent Title3Left"><input
												id="txtET_EQU_RF" precision="3" type="text"
												name="equT.etEquRf"
												class="txtDefault easyui-numberbox  ft_freq_epow" />MHz</td>
											<td class="tdContent Title3"><label id="lblBand">
													发射带宽</label></td>
											<td class="tdBorderRight Title3Left" colspan="2"><input
												id="txtET_EQU_RF_BAND" precision="3" type="text"
												name="equT.etEquRfBand"
												class="txtDefault easyui-numberbox  ft_freq_epow" />MHz</td>
										</tr>
										<tr style="height: 18.45pt;" id="trEqu3">
											<td class="tdBorderLeftCorner Title3"><label id="lblMod">
													调制方式</label></td>
											<td class="tdBorderBottom Title3Left" colspan="2"><select
												id="" class="txtDefault combobox-text" style="width: 98%"
												name="freqList[${s.index }].freqMod">
													<option value="">请选择</option>
													<c:forEach var="f" items="${freqModDic }">
														<option value="${f.cn }">${f.codeChiName }</option>
													</c:forEach>
											</select></td>
											<td class="tdBorderBottom Title3"><label id="lblPow">
													发射功率</label></td>
											<td class="tdBorderRightCorner Content3" colspan="4"><input
												id="txtEQU_POW" type="text" name="equ.equPow" precision="3"
												class="txtDefault  easyui-numberbox equ_pow"
												style="width: 100px" />mW</td>
										</tr>
										<tr>
											<td colspan="8" style="border: none">&nbsp;</td>
										</tr>
									</table>
								</form>
							</td>
						</tr>
					</table>
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
								<td colspan="7" class="bottomTableCenter Title3Left"><input
									id="txtMEMO" name="station.memo" style="width: 850px"
									type="text" class="txtDefault meno" /></td>
							</tr>
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #9933FF">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #9933FF">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #9933FF; text-align: right;">
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