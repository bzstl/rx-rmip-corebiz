<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表6-E-地球站技术资料申报表</title>
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
<!-- 下国无管表6的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formE.css" />
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
							id="formTableE">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="8"><span id="spanTitle">地球站技术资料申报表</span></td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="4">
									&nbsp;&nbsp;国无管表6</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="4">E<input id="txtSTAT_TDI" type="text"
									name="stat_tdi_s" class="txtLine stat_tdi" maxlength="4" />&nbsp;&nbsp;
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdTitleTopLeft Title2" colspan="7">① 台（站）数据</td>
								<td class="tdTitleTopRight Title2" style="text-align: right">
									<input id="txtSTAT_Stauts" type="text" style="width: 50px"
									class="txtStatStauts" />
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">申请表编号<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdContent Title3"><input
									id="txtAPP_Code" name="station.appCode" type="text"
									class="txtDefault app_code" maxlength="14" /></td>
								<td colspan="2" class="tdContent Title3">网络编号<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="3" class="tdBorderRight Title3Left"
									style="text-align: left"><input id="txtST_E_NET_Code"
									name="stationT.stENetCode" type="text" maxlength="20"
									class="txtDefault st_e_net_code" /></td>
								<!-- <td colspan="2" class="tdBorderRight Title3">
                                <input id="rdNew" type="radio" name="radio_optype" value="0" />
                                <label for="rdNew">
                                    新设</label>&nbsp;
                                <input id="rdChange" type="radio" name="radio_optype" value="1" />
                                <label for="rdChange">
                                    变更</label>
                            </td> -->
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">台（站）名称<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="4" class="tdContent Title3Left"><input
									id="txtSTAT_Name" type="text" name="station.statName"
									class="txtDefault stat_name" /></td>
								<td class="tdContent Title3">台（站）类别<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdBorderRight Title3"><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="station.statType">
										<option value="">--请选择--</option>
										<c:forEach items="${stationTypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3"><label id="lblStat_Addr">台（站）地址</label>
									<label style="color: #FF0000; display: none; width: 10px;"
									id="spanStatAddr">*</label></td>
								<td class="tdContent Title3Left" colspan="4"><input
									id="txtSTAT_ADDR" type="text" name="station.statAddr"
									class="txtDefault stat_addr" /></td>
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
								<td class="tdContent Title3" colspan="3"><input
									id="rdSTAT_WorkER" type="radio" name="station.statWork"
									value="R" class="required" /> <label for="rdSTAT_WorkER">
										单收</label>&nbsp; <input id="rdSTAT_WorkE" type="radio"
									name="station.statWork" value="E" class="required" /> <label
									for="rdSTAT_WorkE"> 单发</label>&nbsp; <input id="rdSTAT_WorkR"
									type="radio" name="station.statWork" value="ER"
									class="required" /> <label for="rdSTAT_WorkR"> 收发</label></td>
								<td class="tdContent Title3">使用范围<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3" colspan="3"><input
									id="RadioNET_Area1" type="radio" name="stationT.stEComArea"
									value="0" class="required" /> <label for="RadioNET_Area1">
										国际/跨边境（界）</label> <input id="RadioNET_Area3" type="radio"
									name="stationT.stEComArea" value="1" class="required" /> <label
									for="RadioNET_Area3"> 跨省</label> <input id="RadioNET_Area4"
									type="radio" name="stationT.stEComArea" value="2"
									class="required" /> <label for="RadioNET_Area4"> 省内</label></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft tdLabelAndCheckbox" colspan="4"
									style="border-bottom: none; border-right: none; text-align: left; padding-left: 120px">
									<input id="Radio_ST_POS_Type0" type="radio"
									name="stationT.stPosType" value="0" /> <label
									for="Radio_ST_POS_Type0"> 车载（车牌号： </label> <input
									id="txtStoptype0" type="text" class="txtDefault stpostype"
									name="stationT.stEPos" style="text-align: left; width: 131px" />
									） &nbsp;&nbsp;
								</td>
								<td class="tdBorderRight tdLabelAndCheckbox" colspan="4"
									style="border-bottom: none; text-align: left; padding-left: 120px">
									<input id="ST_POS_Type1" type="radio" name="stationT.stPosType"
									value="1" /> <label for="ST_POS_Type1"> 船载（船舶登记号： </label> <input
									id="txtStoptype1" type="text" name="stationT.stEPos"
									class="txtDefault stpostype"
									style="text-align: left; width: 100px" />） &nbsp;
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft  tdLabelAndCheckbox" colspan="4"
									style="border-right: none; text-align: left; padding-left: 120px">
									<input id="ST_POS_Type2" type="radio" name="stationT.stPosType"
									value="2" /> <label for="ST_POS_Type2"> 机载（国籍和注册号： </label> <input
									id="txtStoptype2" type="text" name="stationT.stEPos"
									class="txtDefault stpostype"
									style="text-align: left; width: 100px" />） &nbsp; &nbsp;
								</td>
								<td class="tdBorderRight tdLabelAndCheckbox" colspan="4"
									style="border-top: none; text-align: left; padding-left: 120px">
									<input id="ST_POS_Type3" type="radio" name="stationT.stPosType"
									value="3" /> <label for="ST_POS_Type3"> 固定 </label> &nbsp; <input
									id="ST_POS_Type4" type="radio" name="stationT.stPosType"
									value="4" /> <label for="ST_POS_Type4"> 可搬移 </label> &nbsp; <input
									id="ST_POS_Type5" type="radio" name="stationT.stPosType"
									value="5" /> <label for="ST_POS_Type5"> 其他 </label> &nbsp;
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">地理坐标<label
									style="color: #FF0000; display: none; width: 10px;"
									id="spanStatLA">*</label>
								</td>
								<td class="tdContent Title3">东经(未)</td>
								<td class="tdContent Title3Left"><input id="txtSTAT_LG1"
									type="text" name="stat_lg_s" style="width: 30px"
									class="txtDefault easyui-numberbox stat_lg1" />° <input
									id="txtSTAT_LG2" type="text" name="stat_lg1_s"
									style="width: 30px"
									class="txtDefault easyui-numberbox stat_lg2" />′ <input
									id="txtSTAT_LG3" precision="2" type="text" name="stat_lg2_s"
									style="width: 35px"
									class="txtDefault easyui-numberbox stat_lg3" />″ <!-- 页面上没有但是又非空的字段 ， station.statLg = stat_lg_s+stat_lg1_s+stat_lg2_s -->
									<input name="station.statLg" value="" type="hidden"></td>
								<td class="tdContent Title3">北纬(未)</td>
								<td class="tdContent Title3Left"><input id="txtSTAT_LA1"
									type="text" name="stat_la_s" style="width: 30px"
									class="txtDefault easyui-numberbox stat_la1" />° <input
									id="txtSTAT_LA2" type="text" name="stat_la1_s"
									style="width: 30px"
									class="txtDefault easyui-numberbox stat_la2" />′ <input
									id="txtSTAT_LA3" precision="2" type="text" name="stat_la2_s"
									style="width: 35px"
									class="txtDefault easyui-numberbox stat_la3" />″ <!-- 页面上没有但是又非空的字段 ， station.statLa = stat_la_s+stat_la1_s+stat_la2_s -->
									<input name="station.statLa" value="" type="hidden"></td>
								<td class="tdContent Title3">海拔高度<label
									style="color: #FF0000; display: none; width: 10px;"
									id="spanStatAt">*</label>
								</td>
								<td colspan="2" class="tdBorderRight Title3Left"
									style="text-align: left"><input id="txtSTAT_AT"
									type="text" name="station.statAt"
									style="width: 150px; text-align: left"
									class="txtDefault easyui-numberbox stat_at" precision="1" />m
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeftCorner Title3">空间电台(星座)名称<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderBottom tdContent Title3Left" colspan="3">
									<input id="txtST_E_SAT" type="text" name="stationT.stESat"
									class="txtDefault st_e_sat required" />
								</td>
								<td class="tdBorderBottom tdContent Title3">标称轨道经度<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderBottom Title3">
									<!-- <table style="margin: 0px; padding: 0px;" id="tabLg1">
                                    <tr style="height: 18.45pt;">
                                        <td class="tdBorderRight1 tdContent Title3Left">
                                            <input id="selSt_E_LG" type="text" style="width: 35px" class="txtDefault" />
                                        </td>
                                        <td> --> <input id="txtST_E_LG"
									type="text" name="stationT.stELg"
									class="txtNumber easyui-numberbox st_me_lg0_required"
									style="width: 40px" precision="1" />° <!--     </td>
                                    </tr>
                                </table> -->
								</td>
								<td class="tdBorderBottom Title3">启用日期<span
									style="color: red;">*</span>
								</td>
								<td class="tdBorderRightCorner Title3Left" align="left"><input
									id="txtSTAT_Date_Start" type="text"
									name="station.statDateStart"
									class="txtDefault  combobox-text STAT_Date_Start"
									maxlength="10" style="width: 120px"
									onClick="WdatePicker({dateFmt:'yyyy/M/d'})" /></td>
							</tr>
						</table>
					</form>
					<table id="tableFreq" border="0" cellpadding="0" cellspacing="0"
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
							<td class="tdContent ">发射功率<br>(dBm)
							</td>
							<td class="tdContent ">调制特性</td>
							<td class="tdContent ">接收中心频率<br> <input
								id="radio_freq_band_unit_type0" type="radio"
								name="radio_freq_band_unit_type" class="required" value="0" />
								<label>MHz</label> <input id="radio_freq_band_unit_type1"
								type="radio" name="radio_freq_band_unit_type" class="required"
								value="1" /> <label>GHz</label>
							</td>
							<td class="tdBorderRight ">接收必要带宽<br> <input
								id="radio_freq_band_unit_type0" type="radio"
								name="radio_freq_band_unit_type" class="required" value="0" />
								<label>kHz</label> <input id="radio_freq_band_unit_type1"
								type="radio" name="radio_freq_band_unit_type" class="required"
								value="1" /> <label>MHz</label>
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
									class="txtDefault" name="freqTList[${s.index }].ftFreqEpow"
									value="" style="width: 48%" /> <select id=""
									class="txtDefault combobox-text" style="width: 48%"
									name="freqTList[${s.index }].ftFreqPowflag">
										<option value="">选择</option>
										<c:forEach items="${ftFreqPowflagDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent"><select id=""
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

						<c:forEach varStatus="s" begin="0" end="1" step="1">
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft">起： <input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfb"
									value="" style="width: 70%" />
								</td>
								<td rowspan="2" class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEBand"
									value="" style="width: 98%" /></td>
								<td rowspan="2" class="tdContent "><input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqEpow"
									value="" style="width: 48%" /> <select id=""
									class="txtDefault combobox-text" style="width: 48%"
									name="freqTList[${s.index }].ftFreqPowflag">
										<option value="">选择</option>
										<c:forEach items="${ftFreqPowflagDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
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
							<td class="tdBorderRightCorner Title3Left"
								style="text-align: left" colspan="5"><input
								id="stST_ME_FBand" type="text" name="stationT.stMeFband"
								style="" class="txtNumber easyui-numberbox " precision="4" />MHz
							</td>
						</tr>
					</table>

					<table id="tableEqu" border="0" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;"
						id="Table1">
						<tr style="height: 18.45pt;">
							<td colspan="8" class=" tdTitleLeft Title2">③ 设备数据</td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeftCorner  Title3">
								<div id="divEquModel1">
									设备型号<span style="color: red;">*</span>
								</div>
								<div id="divEquModel2" style="display: none">
									<a href="javascript:void(0)" class="easyui-linkbutton"
										onclick="javascript:ShowModalByAntEqu(2,2,'#tableEqu')">
										设备型号</a><span style="color: #FF0000;">*</span>
								</div>
							</td>
							<td class="tdBorderBottom Title3Left"><input
								id="txtEQU_Model" type="text" name="equ.equModel"
								class="txtDefault EQU_Model" /></td>
							<td class="tdBorderBottom Title3"><label id="lblEQU_AUTH">型号核准代码</label>
							</td>
							<td class="tdBorderBottom Title3Left"><input
								id="txtEQU_AUTH" type="text" name="equ.equAuth"
								class="txtDefault EQU_AUTH" /></td>
							<td class="tdBorderBottom Title3">设备生产厂家<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdBorderRightCorner Title3Left" colspan="3"><input
								id="txtEQU_MENU" type="text" name="equ.equMenu"
								class="txtDefault EQU_MENU" /></td>
						</tr>
					</table>


					<table id="tableAnt" border="0" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;"
						id="Table1">
						<tr style="height: 18.45pt;">
							<td colspan="8" class="tdTitleLeft Title2">④ 天线数据</td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeft Title3">
								<div id="divAntModel1">
									天线型号<span style="color: red;">*</span>
								</div>
								<div id="divAntModel2" style="display: none">
									<a href="javascript:void(0)" class="easyui-linkbutton"
										onclick="javascript:ShowModalByAntEqu(1,2,'#tableEqu')">
										天线型号</a><span style="color: #FF0000;">*</span>
								</div>
							</td>
							<td class="tdContent Title3Left"><input id="txtANT_Model"
								type="text" name="ant.antModel" class="txtDefault EQU_Model" />
							</td>
							<td class="tdContent Title3">天线类型<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdContent Title3" colspan="2"><select id=""
								class="txtDefault combobox-text" style="width: 98%"
								name="ant.antType">
									<option value="">请选择</option>
									<c:forEach var="f" items="${antTypeDic }">
										<option value="${f.cn }">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
							<td class="tdContent Title3">天线尺寸<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdBorderRight Content3 Title3Left" colspan="2"><input
								id="txtANT_Size" type="text" name="ant.antSize"
								class="txtDefault  at_size_required" precision="1"
								style="width: 150px;" /> m</td>
						</tr>
						<tr style="height: 18.45pt;" equrequired="true">
							<td class="tdBorderLeft Title3">天线距地面高度<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdContent Content3 Title3Left"><input
								id="txtANT_Hight" type="text" name="ant.antHight" precision="1"
								style="width: 150px;"
								class="txtNumber easyui-numberbox ant_hight_required" /> m</td>
							<td class="tdContent Title3">天线仰角<label
								style="color: #FF0000; display: none; width: 10px;"
								id="spanAT_SE_B">*</label>
							</td>
							<td class="tdContent Title3Left" colspan="2"><input
								id="txtAT_SE_B" type="text" name="antT.atSeB" precision="1"
								style="width: 50px;"
								class="txtNumber easyui-numberbox at_ant_upang_required"
								antsrequired="true" />-<input id="txtAT_SE_E" type="text"
								anterequired="true" name="antT.atSeE" precision="1"
								style="width: 50px;"
								class="txtNumber easyui-numberbox at_ant_upangMax_e" /> °</td>
							<td class="tdContent Title3">天线方位角<label
								style="color: #FF0000; display: none; width: 10px;"
								id="spanAT_ANG_B">*</label>
							</td>
							<td class="tdBorderRight Title3Left" colspan="2"><input
								id="txtAT_ANG_B" type="text" name="antT.atAngB" precision="1"
								style="width: 50px;" startrequired="true"
								class="txtNumber easyui-numberbox ant_angle_required" />-<input
								id="txtAT_ANG_E" type="text" endrequired="true"
								name="antT.atAngE" precision="1" style="width: 50px;"
								class="txtNumber easyui-numberbox at_ant_gMax_e" /> °</td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeft Title3">天线生产厂家<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdContent Title3Left" colspan="4"><input
								id="txtANT_MENU" type="text" name="ant.antMenu"
								class="txtDefault ant_menu_required" /></td>
							<td class="tdContent Title3"><label id="lblAt_Rnt">接收系统噪声温度</label>
							</td>
							<td class="tdBorderRight Title3Left" style="text-align: left"
								colspan="2"><input id="txtAt_Rnt" type="text"
								name="antT.atRnt" class="txtNumber easyui-numberbox at_rnt"
								precision="1" style="text-align: left; width: 100px" />K</td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeftCorner tdContent  Title3">极化方式<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdBorderBottom  Title3"
								style="border-right: 0px; text-align: left">收： <select
								id="" class="txtDefault combobox-text" style="width: 70%"
								name="ant.antRpole">
									<option value="">请选择</option>
									<c:forEach var="f" items="${antTypeDic }">
										<option value="${f.cn }">${f.codeChiName }</option>
									</c:forEach>
							</select>
							</td>
							<td class="tdBorderBottom Title3"
								style="text-align: left; overflow: hidden">发： <select id=""
								class="txtDefault combobox-text" style="width: 70%"
								name="ant.antEpole">
									<option value="">请选择</option>
									<c:forEach var="f" items="${antTypeDic }">
										<option value="${f.cn }">${f.codeChiName }</option>
									</c:forEach>
							</select>
							</td>
							<td class="tdBorderBottom Title3">天线增益<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdBorderBottom Title3Left"
								style="border-right: 0px; text-align: left;">收：<input
								id="txtANT_RGai" type="text" name="ant.antRgain"
								style="width: 50px"
								class="txtNumber easyui-numberbox  ant_gain_required"
								precision="1" />
							</td>
							<td class="tdBorderBottom Title3Left" style="text-align: left;">
								发：<input id="txtANT_EGai" type="text" name="ant.antEgain"
								style="width: 50px"
								class="txtNumber easyui-numberbox  ant_gain_required"
								precision="1" />dBi
							</td>
							<td class="tdBorderBottom  Title3"><label id="lblFEED_Lose">馈线系统总损耗</label>
							</td>
							<td class="tdBorderRightCorner Title3Left"
								style="text-align: left"><input id="txtFEED_Lose"
								type="text" name="feed.feedLose"
								style="width: 50px; text-align: left"
								class="txtDefault easyui-numberbox feed_lose" precision="1" />
								dB</td>
						</tr>
					</table>




					<table id="tableAntEl" border="0" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;"
						id="Table1">
						<tr style="height: 18.45pt;">
							<td colspan="13" class="tdTitleLeft Title2" id="td_tip5">⑤
								天际线仰角数据表格</td>
						</tr>
						<c:forEach varStatus="k" begin="0" end="1" step="1">
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft ">方位角(°)</td>
								<c:forEach varStatus="s" begin="0" end="10" step="1">
									<td class="tdContent "><input id="" type="text"
										class="txtDefault"
										name="eSeList[${k.index*12+s.index }].seComm" value=""
										style="width: 98%" /></td>
								</c:forEach>
								<td class="tdBorderRight "><input id="" type="text"
									class="txtDefault" name="eSeList[${k.index*12+11 }].seComm"
									value="" style="width: 98%" /></td>
							</tr>
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft ">天际线仰角(°)</td>
								<c:forEach varStatus="s" begin="0" end="10" step="1">
									<td class="tdContent "><input id="" type="text"
										class="txtDefault"
										name="eSeList[${k.index*12+s.index }].seAngle" value=""
										style="width: 98%" /></td>
								</c:forEach>
								<td class="tdBorderRight "><input id="" type="text"
									class="txtDefault" name="eSeList[${k.index*12+11 }].seAngle"
									value="" style="width: 98%" /></td>
							</tr>
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeftCorner ">障碍物距离(km)</td>
								<c:forEach varStatus="s" begin="0" end="10" step="1">
									<td class="tdBorderBottom "><input id="" type="text"
										class="txtDefault"
										name="eSeList[${k.index*12+s.index }].seDis" value=""
										style="width: 98%" /></td>
								</c:forEach>
								<td class="tdBorderRightCorner "><input id="" type="text"
									class="txtDefault" name="eSeList[${k.index*12+11 }].seDis"
									value="" style="width: 98%" /></td>
							</tr>
						</c:forEach>


					</table>

					<form id="formMemo">
						<table border="0" id="TablelMemo" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #786478">
									&nbsp;</td>
							</tr>
							<tr style="height: 22.7pt">
								<td class="bottomTableLeft Title3" style="width: 150px">
									备&nbsp;注</td>
								<td colspan="7" class="bottomTableCenter bottomTableRight">
									<input id="txtMEMO" name="station.memo" style="width: 750px"
									type="text" class="txtDefault meno" />
								</td>
							</tr>
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #786478">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #786478">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #786478; text-align: right;">
									中华人民共和国信息产业部制&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						</table>
					</form>
					<!--用于显示填表说明与索引关系-->
					<iframe id="showother" name="showother" frameborder="0"
						style="border: 0px; height: 0; width: 100%; padding: 0px; margin: 0px;"></iframe>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>