<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表14-ME-移动地球站技术资料申报表</title>
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
<!-- 下国无管表14的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formME.css" />
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
							id="formTableME">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="6"><span id="spanTitle">移动地球站技术资料申报表</span></td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="3">
									&nbsp;&nbsp;国无管表14</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="3">ME<input id="txtSTAT_TDI" type="text"
									name="stat_tdi_s" class="txtLine stat_tdi" maxlength="4" />&nbsp;&nbsp;
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdTitleTopLeft Title2" colspan="5">① 台（站）数据</td>
								<td class="tdTitleTopRight Title2" style="text-align: right">
									<input id="txtSTAT_Stauts" type="text" style="width: 50px"
									class="txtStatStauts" />
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">申请表编号<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdContent"><input id="txtAPP_Code"
									name="station.appCode" maxlength="14" type="text"
									class="txtDefault app_code" /></td>
								<td colspan="2" class="tdContent Title3">频率使用证号或批准文号<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3"><input
									id="txtST_ME_FILE_NO" name="st_me_file_no_s" type="text"
									maxlength="20" class="txtDefault st_me_file_no required" /></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">卫星移动通信系统名称</td>
								<td colspan="2" class="tdContent"><input
									id="txtST_ME_SAT_Name" type="text" name="stationT.stMeSatName"
									class="txtDefault stat_name_v" /></td>
								<td class="tdContent Title3">多址方式<span
									style="color: #FF0000;">*</span>
								</td>
								<!-- selMulti_Addr1故意放在这里，不然列表框数据显示不出来，暂时还没有找到解决方法-->
								<td colspan="2" class="tdBorderRight Title3"
									style="text-align: left;"><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="stationT.stEMultiAddr">
										<option value="">--请选择--</option>
										<c:forEach items="${stEMultiAddrDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">工作方式<span
									style="color: #FF0000;">*</span>
								</td>
								<!-- RSBT_ANTFEED 无线电台（站）天馈线表 ANT_Work_Type 字段 -->
								<td class="tdContent Title3" colspan="2"><input
									id="rdSTAT_WorkR" type="radio" name="ant.antWorkType" value="R"
									class="required" /> <label for="rdSTAT_WorkR"> 单收</label>&nbsp;
									<input id="rdSTAT_WorkE" type="radio" name="ant.antWorkType"
									value="E" class="required" /> <label for="rdSTAT_WorkE">
										单发</label>&nbsp; <input id="rdSTAT_WorkER" type="radio"
									name="ant.antWorkType" value="ER" class="required" /> <label
									for="rdSTAT_WorkER"> 收发</label></td>
								<td class="tdContent Title3">使用方式<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight" colspan="2"><input
									id="selSt_Pos_Type" name="equT.etEquUse"
									class="txtDefault checkRequired" style="width: 270px" /></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">关口站名称<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3" colspan="5"
									style="text-align: left"><input id="txtST_ME_STA1"
									style="width: 250px" type="text" name="stationT.stMeSta1"
									class="txtDefault stat_addr" />/ <input id="txtST_ME_STA2"
									style="width: 250px" type="text" name="stationT.stMeSta2"
									class="txtDefault stat_name" />/ <input id="txtST_ME_STA3"
									style="width: 250px" type="text" name="stationT.stMeSta3"
									class="txtDefault stat_name" /></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3" rowspan="2">
									<p style="line-height: 2px">
										空间电台(星座)名称<span style="color: #FF0000;">*</span>
									</p> <input id="rdsStMestype1" type="radio"
									name="stationT.stMeStype" value="0" class="required" /> <label
									for="rdsStMestype1"> 星座</label>&nbsp; <input id="rdsStMestype2"
									type="radio" name="stationT.stMeStype" value="1"
									class="required" /> <label for="rdsStMestype2"> 卫星</label>
								</td>
								<td class="tdContent" colspan="3"><input
									id="txtST_ME_NAME1" type="text" name="stationT.stMeName1"
									class="txtDefault stat_addr" /></td>
								<td class="tdContent Title3" rowspan="2">标称轨道经度</td>
								<td class="tdBorderRight Title3">
									<table style="margin: 0px; padding: 0px;" id="tabLg1">
										<tr style="height: 18.45pt;">
											<td class="tdBorderRight1 tdContent"><input
												id="selSt_Me_LG1" type="text" style="width: 40px"
												class="txtDefault" /></td>
											<td><input id="txtSt_Me_LG1" type="text"
												name="stationT.stMeLg1"
												class="txtNumber easyui-numberbox st_me_lg0"
												style="width: 50px" precision="1" />°</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="tdContent" colspan="3"><input
									id="txtST_ME_NAME2" type="text" name="stationT.stMeName2"
									class="txtDefault stataddr" /></td>
								<td class="tdBorderRight Title3">
									<table style="margin: 0px; padding: 0px;">
										<tr style="height: 18.45pt;">
											<td class="tdBorderRight1"><input id="selSt_Me_LG2"
												style="width: 40px" class="txtDefault" /></td>
											<td><input id="txtSt_Me_LG2" type="text"
												name="stationT.stMeLg2" style="width: 50px" precision="1"
												class="txtNumber easyui-numberbox st_me_lg0" />°</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeftCorner Title3">启用日期<span
									style="color: red;">*</span>
								</td>
								<td colspan="5" class="tdBorderRightCorner Title3" align="left"
									style="text-align: left"><input id="txtSTAT_Date_Start"
									type="text" name="station.statDateStart"
									class="txtDefault  combobox-text STAT_Date_Start"
									maxlength="10" style="width: 120px"
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
						<tr style="height: 18.45pt;">
							<td colspan="6" class="fullLine Title3"><input id="radio221"
								type="radio" name="freq.freqType" value="0" /> <label
								for="radio221"> 中心频率</label> <input id="radio22" type="radio"
								name="freq.freqType" value="1" /> <label for="radio22">
									频率范围</label></td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td class="tdBorderLeft ">发射中心频率或范围<br> <input
								id="radio_freq_band_unit_type0" type="radio"
								name="radio_freq_band_unit_type" class="required" value="0" />
								<label>MHz</label> <input id="radio_freq_band_unit_type1"
								type="radio" name="radio_freq_band_unit_type" class="required"
								value="1" /> <label>GHz</label>
							</td>
							<td class="tdContent ">发射必要带宽<br>(kHz)
							</td>
							<td class="tdContent ">EIRP<br>(dBW)
							</td>
							<td class="tdContent ">调制特性</td>
							<td class="tdContent ">接收中心频率或范围<br> <input
								id="radio_freq_band_unit_type0" type="radio"
								name="radio_freq_band_unit_type" class="required" value="0" />
								<label>MHz</label> <input id="radio_freq_band_unit_type1"
								type="radio" name="radio_freq_band_unit_type" class="required"
								value="1" /> <label>GHz</label>
							</td>
							<td class="tdBorderRight ">接收必要带宽<br>(kHz)
							</td>
						</tr>

						<c:forEach varStatus="s" begin="0" end="5" step="1">
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft "><input id="" type="hidden"
									class="txtDefault" name="freqList[${s.index }].freqMb"
									value="0" style="width: 98%" /> <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfb"
									value="" style="width: 98%" /></td>
								<td class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEBand"
									value="" style="width: 98%" /></td>
								<td class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqEirp"
									value="" style="width: 98%" /></td>
								<td class="tdContent "><select id=""
									class="txtDefault combobox-text" style="width: 22%"
									name="freqTList[${s.index }].ftFreqMcDic">
										<option value="">请选择</option>
										<c:forEach items="${ftFreqMcDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select> <input id="" type="text" class="txtDefault"
									name="freqTList[${s.index }].ftFreqMc1" value=""
									style="width: 22%" />* <input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqMc2"
									value="" style="width: 22%" />* <input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqMc3"
									value="" style="width: 22%" /></td>
								<td class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRfb"
									value="" style="width: 98%" /></td>
								<td class="tdBorderRight "><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRBand"
									value="" style="width: 98%" /></td>
							</tr>
						</c:forEach>

						<c:forEach varStatus="s" begin="0" end="2" step="1">
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft">起： <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfb"
									value="" style="width: 70%" />
								</td>
								<td rowspan="2" class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEBand"
									value="" style="width: 98%" /></td>
								<td rowspan="2" class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqEirp"
									value="" style="width: 98%" /></td>
								<td rowspan="2" class="tdContent "><select id=""
									class="txtDefault combobox-text" style="width: 22%"
									name="freqTList[${s.index }].ftFreqMcDic">
										<option value="">请选择</option>
										<c:forEach items="${ftFreqMcDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select> <input id="" type="text" class="txtDefault"
									name="freqTList[${s.index }].ftFreqMc1" value=""
									style="width: 22%" />* <input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqMc2"
									value="" style="width: 22%" />* <input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqMc3"
									value="" style="width: 22%" /></td>
								<td class="tdContent ">起： <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRfb"
									value="" style="width: 70%" />
								</td>
								<td rowspan="2" class="tdBorderRight "><input id=""
									type="text" class="txtDefault"
									name="freqList[${s.index }].freqRBand" value=""
									style="width: 98%" /></td>
							</tr>
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft ">止： <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfe"
									value="" style="width: 70%" />
								</td>
								<td class="tdContent ">止： <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRfe"
									value="" style="width: 70%" />
								</td>
							</tr>
						</c:forEach>


						<tr style="height: 18.45pt;">
							<td class="tdBorderLeftCorner Title3">使用总带宽<span
								style="color: red;">*</span>
							</td>
							<td class="tdBorderRightCorner Title3" style="text-align: left"
								colspan="5"><input id="stST_ME_FBand" type="text"
								name="stationT.stMeFband" style="width: 120px"
								class="txtNumber easyui-numberbox st_me_fband" precision="4" />
								<input id="radio_freqUnit1" type="radio" name="radio_freqUnit"
								value="0" class="required" /> <label for="radio_freqUnit1">
									kHz</label> <input id="radio_freqUnit2" type="radio"
								name="radio_freqUnit" value="1" class="required" /> <label
								for="radio_freqUnit2"> MHz</label> <input id="radio_freqUnit3"
								type="radio" name="radio_freqUnit" value="2" class="required" />
								<label for="radio_freqUnit3"> GHz</label></td>
						</tr>
					</table>



					<table border="0" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;"
						id="Table2">

						<tr style="height: 18.45pt;">
							<td colspan="6" class=" tdTitleLeft Title2">③ 设备和天线数据</td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeft Title3">设备类别</td>
							<td class="tdContent" colspan="2" style="width: 260px"><input
								id="txtET_EQU_Type" type="text" name="equT.etEquType"
								class="txtDefault equType" /></td>
							<td class="tdContent Title3">
								<div id="divEquModel1">
									设备型号<span style="color: red;">*</span>
								</div>
								<div id="divEquModel2" style="display: none">
									<a href="javascript:void(0)" class="easyui-linkbutton"
										onclick="javascript:ShowModalByAntEqu(2,2,'#tableAntEqu')">
										设备型号</a><span style="color: #FF0000;">*</span>
								</div>
							</td>
							<td class="tdBorderRight" colspan="2"><input
								id="txtEQU_Model" type="text" name="equ.equModel"
								class="txtDefault EQU_Model" /></td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeft Title3"><label id="lblEQU_AUTH">型号核准代码<span
									style="color: #FF0000;">*</span></label></td>
							<td class="tdContent" colspan="2"><input id="txtEQU_AUTH"
								type="text" name="equ.equAuth" class="txtDefault EQU_AUTH" /></td>
							<td class="tdContent Title3">设备生产厂家<span
								style='color: #FF0000;'>*</span>
							</td>
							<td class="tdBorderRight" colspan="2"><input
								id="txtEQU_MENU" type="text" name="equ.equMenu"
								class="txtDefault EQU_MENU" /></td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeft Title3">天线类型<span
								style='color: #FF0000;'>*</span>
							</td>
							<td class="tdContent" colspan="2"><select id=""
								class="txtDefault combobox-text" style="width: 98%"
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
										onclick="javascript:ShowModalByAntEqu(1,2,'#tableAntEqu')">
										天线型号</a><span style="color: #FF0000;">*</span>
								</div>
							</td>
							<td class="tdBorderRight" colspan="2"><input
								id="txtANT_Model" type="text" name="ant.antModel"
								class="txtDefault EQU_Model" /></td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeft Title3">天线生产厂家<span
								style='color: #FF0000;'>*</span>
							</td>
							<td class="tdContent" colspan="2"><input id="txtANT_MENU"
								type="text" name="ant.antMenu"
								class="txtDefault ant_menu_required" /></td>
							<td class="tdContent Title3">天线增益</td>
							<td class="tdContent Title3"
								style="border-right: 0px; text-align: left;">收：<input
								id="txtANT_RGai" type="text" name="ant.antRgain"
								class="txtNumber easyui-numberbox  ant_gain" precision="1" />
							</td>
							<td class="tdBorderRight Title3" style="text-align: left;">
								发：<input id="txtANT_EGai" type="text" name="ant.antEgain"
								style="width: 120px"
								class="txtNumber easyui-numberbox  ant_gain" precision="1" />dBi
							</td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeftCorner Title3">接收系统品质因数G/T</td>
							<td class="tdBorderBottom tdContent Title3" colspan="2"
								style="text-align: left"><input id="txtAt_Qua" type="text"
								name="antT.atQua" class="txtNumber easyui-numberbox at_qua"
								precision="1" style="width: 150px" />dB/K</td>
							<td class="tdBorderBottom tdContent  Title3">极化方式<span
								style='color: #FF0000;'>*</span>
							</td>
							<td class="tdBorderBottom tdContent  Title3"
								style="border-right: 0px; text-align: left">收： <select
								id="" class="txtDefault combobox-text" style="width: 70%"
								name="ant.antRpole">
									<option value="">请选择</option>
									<c:forEach var="f" items="${antTypeDic }">
										<option value="${f.cn }">${f.codeChiName }</option>
									</c:forEach>
							</select>
							</td>
							<td class="tdBorderRightCorner Title3"
								style="text-align: left; overflow: hidden">发： <select id=""
								class="txtDefault combobox-text" style="width: 70%"
								name="ant.antEpole">
									<option value="">请选择</option>
									<c:forEach var="f" items="${antTypeDic }">
										<option value="${f.cn }">${f.codeChiName }</option>
									</c:forEach>
							</select>
							</td>
						</tr>
						<tr>
							<td colspan="6" style="border: none">&nbsp;</td>
						</tr>
					</table>
					<form></form>
					<form id="formMemo">
						<table border="0" id="TablelMemo" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #632c03">
									&nbsp;</td>
							</tr>
							<tr style="height: 22.7pt">
								<td class="bottomTableLeft Title3" style="width: 150px">
									备&nbsp;注</td>
								<td colspan="7" class="bottomTableCenter bottomTableRight"
									style="text-align: left"><input id="txtMEMO"
									name="station.memo" style="width: 750px" type="text"
									class="txtDefault meno" /></td>
							</tr>
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #632c03">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #632c03">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #632c03; text-align: right;">
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