<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表4-LM-陆地移动电台技术资料申报表</title>
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
<!-- 下国无管表4的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formLM.css" />
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
	<table cellspacing="0" cellpadding="0"
		style="height: 100%; width: 100%;">
		<tr>
			<td align="center">
				<div id="formcontent" style="width: 1000px;" >

					<table id="formTableC" cellpadding="0" cellspacing="0"
						style="border: none; width: 100%">
						<tr>
							<td style="border: none" align="center" class="Title1"
								colspan="8"><span id="spanTitle">陆地移动电台技术资料申报表</span></td>
						</tr>
						<tr style="height: 18.45pt;" class="Title2"></tr>
						<tr style="height: 18.45pt;" class="Title2">
							<td style="border: none; text-align: left;" colspan="4">
								&nbsp;&nbsp;国无管表4</td>
							<td style="border: none; text-align: right;" class="Title3"
								colspan="3"><span id="tdSVN"> 通信业务/系统类型<span
									style="color: #FF0000;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									id="selNET_SVN" class="txtDefault checkNET_SVN"
									style="width: 180px" /></span></td>
							<td style="border: none; text-align: right;" class="Title3"
								colspan="1">LM<input id="txtSTAT_TDI"
								name="station.statTdi" type="text" class="txtLine stat_tdi"
								value="1234" maxlength="4" />&nbsp;&nbsp;
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
							<td colspan="3" class="tdContent"><input id="txtAPP_Code"
								name="station.appCode" type="text" class="txtDefault app_code"
								maxlength="14" value="T321321" /></td>
							<td class="tdContent Title3">台站类别<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdBorderRight" colspan="3"><select
								id="selSys_Code" class="txtDefault combobox-text"
								style="width: 98%" name="station.statType">
									<option value="">--请选择--</option>
									<c:forEach items="${stationTypeDic}" var="f">
										<option value="${f.cn}">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
							<!-- <td class="tdBorderRight Title3" colspan="2" style="text-align: left">
                                <input id="rdNew" type="radio" name="radio_optype" value="0" />
                                <label for="rdNew">
                                    新设</label>&nbsp;
                                <input id="rdChange" type="radio" name="radio_optype" value="1" />
                                <label for="rdChange">
                                    变更</label>
                            </td> -->
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeft Title3">是否机车制式电台<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdContent Title3" colspan="3" style="text-align: left"><input
								id="Radio1" type="radio" name="stationT.stLmmtr" value="1"
								class="required" /> <label for="Radio1"> 是</label> <input
								id="Radio2" type="radio" name="stationT.stLmmtr" value="0"
								class="required" /> <label for="Radio2"> 否</label></td>
							<td class="tdContent Title3">设备数量<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdContent"><input id="txt_Equ_sum"
								name="station.statEquSum" type="text" style="width: 120px"
								class="txtNumber easyui-numberbox stat_equ_sum_lm" precision="0" /></td>
							<td class="tdContent Title3">工作方式<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdBorderRight Content3"><select id="selSys_Code"
								class="txtDefault combobox-text" style="width: 98%"
								name="station.statWork">
									<option value="">--请选择--</option>
									<c:forEach items="${statWorkDic}" var="f">
										<option value="${f.cn}">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
						</tr>
						<tr style="height: 18.45pt;">
							<td class="tdBorderLeft Title3">使用区域<span
								style="color: #FF0000;">*</span>
							</td>
							<td colspan="5" class="tdContent Content3"><input
								id="txtST_User_Area" name="stationT.stUserArea" type="text"
								class="txtDefault st_user_area" maxlength="80" /></td>
							<td class="tdContent Title3">启用日期<span
								style="color: #FF0000;">*</span>
							</td>
							<td class="tdBorderRight Title3" style="text-align: left"><input
								id="txtSTAT_Date_Start" type="text" name="station.statDateStart"
								class="txtDefault easyui-datebox combobox-text STAT_Date_Start"
								maxlength="10" style="width: 140px"
								onClick="WdatePicker({dateFmt:'yyyy/M/d'})" /></td>
						</tr>
					</table>


					<table cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px;">
						<tr style="height: 18.45pt;">
							<td colspan="4" class="tdTitleLeft Title2">② 频率数据</td>
						</tr>
						 <tr style="height: 18.45pt;">
							<td colspan="5" class="fullLine Title3"><input id="radio221"
								type="radio" name="freq.freqType" value="0" /> <label
								for="radio221"> 中心频率</label> <input id="radio22" type="radio"
								name="freq.freqType" value="1" /> <label for="radio22">
									频率范围</label></td>
						</tr>
					</table>

					<table cellpadding="0" cellspacing="0"
						style="margin: 0px; border: none; width: 1000px;">
						<tr class="Title3">
							<td class="tdBorderLeft">序号</td>
							<td class="tdContent">发射频率范围</td>
							<td class="tdContent">接收频率范围</td>
							<td rowspan="7" class="tdContent"><input
								id="radio_freq_band_unit_type0" type="radio"
								name="radio_freq_band_unit_type" class="required" value="0" /><label
								for="radio_freq_band_unit_type0">kHz</label><br> <input
								id="radio_freq_band_unit_type1" type="radio"
								name="radio_freq_band_unit_type" class="required" value="1" /><label
								for="radio_freq_band_unit_type1">MHz</label></td>
							<td colspan="2" class="tdContent">必要带宽</td>
							<td class="tdBorderRight">调制方式</td>
						</tr>

						<tr class="Title3">
							<td class="tdBorderLeft"><input id="" type="text"
								class="txtDefault" name="freqTList[0].ftFreqNo" value=""
								style="width: 20px" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="freqList[0].freqEfb" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="freqList[0].freqRfb" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="freqList[0].freqEBand" value=""
								style="width: 98%" /></td>
							<td rowspan="6" class="tdContent"><input
								id="radio_freq_band_unit_type0" type="radio"
								name="radio_freq_band_unit_type" class="required" value="0" /><label
								for="radio_freq_band_unit_type0">kHz</label><br> <input
								id="radio_freq_band_unit_type1" type="radio"
								name="radio_freq_band_unit_type" class="required" value="1" /><label
								for="radio_freq_band_unit_type1">MHz</label></td>
							<td class="tdBorderRight"><select id=""
								class="txtDefault combobox-text" style="width: 98%"
								name="freqList[0].freqMod">
									<option value="">请选择</option>
									<c:forEach var="f" items="${freqModDic }">
										<option value="${f.cn }">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
						</tr>


						<c:forEach varStatus="s" begin="1" end="5" step="1">
							<tr class="Title3">
								<td class="tdBorderLeft"><input id="" type="text"
									class="txtDefault" name="freqTList[${s.index }].ftFreqNo"
									value="" style="width: 20px" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfb"
									value="" style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRfb"
									value="" style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEBand"
									value="" style="width: 98%" /></td>
								<td class="tdBorderRight"><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="freqList[${s.index }].freqMod">
										<option value="">请选择</option>
										<c:forEach var="f" items="${freqModDic }">
											<option value="${f.cn }">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
							</tr>
						</c:forEach>

						<c:forEach varStatus="s" begin="0" end="1" step="1">
							<tr class="Title3">
								<td class="tdBorderLeft">起</td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfb"
									value="" style="width: 60%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRfb"
									value="" style="width: 60%" /></td>
								<td rowspan="2" class="tdContent"><input
									id="radio_freq_band_unit_type0" type="radio"
									name="radio_freq_band_unit_type" class="required" value="0" />
									<label for="radio_freq_band_unit_type0">kHz</label><br> <input
									id="radio_freq_band_unit_type1" type="radio"
									name="radio_freq_band_unit_type" class="required" value="1" />
									<label for="radio_freq_band_unit_type1">MHz</label></td>
								<td rowspan="2" class="tdContent"><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEBand"
									value="" style="width: 98%" /></td>
								<td rowspan="2" class="tdContent"><input
									id="radio_freq_band_unit_type0" type="radio"
									name="radio_freq_band_unit_type" class="required" value="0" />
									<label for="radio_freq_band_unit_type0">kHz</label><br> <input
									id="radio_freq_band_unit_type1" type="radio"
									name="radio_freq_band_unit_type" class="required" value="1" />
									<label for="radio_freq_band_unit_type1">MHz</label><br></td>
								<td rowspan="2" class="tdBorderRight"><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="freqList[${s.index }].freqMod">
										<option value="">请选择</option>
										<c:forEach var="f" items="${freqModDic }">
											<option value="${f.cn }">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
							</tr>

							<tr class="Title3">
								<td class="tdBorderLeft">止</td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqEfe"
									value="" style="width: 60%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="freqList[${s.index }].freqRfe"
									value="" style="width: 60%" /></td>
							</tr>
						</c:forEach>
					</table>


					<table cellpadding="0" cellspacing="0"
						style="margin: 0px; width: 1000px; border: none;">
						<tr style="height: 18.45pt;">
							<td class="tdTitleLeft Title2" colspan="8">③ 设备数据</td>
						</tr>
						<tr class="Title3">
							<td class="tdBorderLeft">序号</td>
							<td class="tdContent">设备型号</td>
							<td class="tdContent">型号核准代码</td>
							<td class="tdContent">天线增益<br> <input
								id="radio_atUnitType0" type="radio" name="antT.atUnitType"
								class="required" value="0" /> <label for="radio_atUnitType0">dBd</label>
								<input id="radio_atUnitType1" type="radio"
								name="antT.atUnitType" class="required" value="1" /> <label
								for="radio_atUnitType1">dBi</label>
							</td>
							<td class="tdContent">发射功率<br>(W)
							</td>
							<td class="tdContent">设备生产厂家</td>
							<td class="tdContent">设备出厂号</td>
							<td class="tdBorderRight">呼号</td>
						</tr>

						<c:forEach varStatus="s" begin="0" end="9" step="1">
							<tr class="Title3">
								<td class="tdBorderLeft"><input id="" type="text"
									class="txtDefault" name="equTList[${s.index }].etEquNo"
									value="" style="width: 20px" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[${s.index }].equModel"
									value="" style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[${s.index }].equAuth" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="antList[${s.index }].antGain" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[${s.index }].equPow" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[${s.index }].equMenu" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[${s.index }].equCode" value=""
									style="width: 98%" /></td>
								<td class="tdBorderRight"><input id="" type="text"
									class="txtDefault" name="equTList[${s.index }].etEquCl"
									value="" style="width: 98%" /></td>
							</tr>
						</c:forEach>

					</table>


					
						<table border="0" id="TablelMemo" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px;">
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
								<td colspan="8" style="font-size: 7.5pt; color: #23752B">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #23752B">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #23752B; text-align: right;">
									中华人民共和国信息产业部制&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						</table>
					
				</div>
			</td>
		</tr>
	</table>
</body>
</html>