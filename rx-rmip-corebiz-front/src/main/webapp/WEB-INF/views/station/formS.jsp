<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表8-S-船舶电台技术资料申报表</title>
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
<!-- 下国无管表8的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formS.css" />
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
					<form></form>
					<form id="form1" runat="server">
						<table border="0" id="formTableC" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="8"><span id="spanTitle">船舶电台技术资料申报表</span></td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2"></tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="2">
									&nbsp;&nbsp;国无管表8</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="3"><span id="tdSVN"> 通信业务/系统类型<span
										style="color: #FF0000;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										id="selNET_SVN" class="txtDefault" style="width: 100px" /></span></td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="1">S<input id="txtSTAT_TDI" name="stat_tdi"
									type="text" class="txtLine stat_tdi" maxlength="4" />&nbsp;&nbsp;
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdTitleTopLeft Title2" colspan="4">① 台（站）数据</td>
								<td class="tdTitleTopRight Title2" style="text-align: right"
									colspan="2"><input id="txtSTAT_Stauts" type="text"
									style="width: 50px" class="txtStatStauts" />
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">申请表编号<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent  Title3Left"><input id="txtAPP_Code"
									name="station.appCode" type="text" class="txtDefault app_code"
									maxlength="14" /></td>
								<td class="tdContent Title3">船舶种类<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3Left" style="text-align: left"
									colspan="3"><select id="selSys_Code"
									class="txtDefault combobox-text" style="width: 98%"
									name="stationT.stShipType">
										<option value="">--请选择--</option>
										<c:forEach items="${stShipTypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<%--<td class="tdBorderRight Title3" style="text-align: left" colspan="2">
                                <input id="rdNew" type="radio" name="radio_optype" value="0" />
                                <label for="rdNew">
                                    新设</label>&nbsp;
                                <input id="rdChange" type="radio" name="radio_optype" value="1" />
                                <label for="rdChange">
                                    变更</label>
                            </td>--%>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">呼号</td>
								<td class="tdContent Title3Left"><input
									id="txtST_Call_Sign" name="stationT.stCallSign" type="text"
									class="txtDefault st_code_s" /></td>
								<td class="tdContent Title3">MMSI号<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent Title3Left"><input id="txtST_S_MMSI"
									name="stationT.stSMmsi" type="text"
									class="txtDefault checkRequired st_code_s" /></td>
								<td class="tdContent Title3">船舶登记号</td>
								<td class="tdBorderRight Title3Left"><input id="txtST_S_CS"
									name="stationT.stSCs" type="text" class="txtDefault st_code_s" />
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3"><label id="lblST_S_PN">船籍港名</label>
								</td>
								<td class="tdContent Title3Left"><input id="txtST_S_PN"
									name="stationT.stSPn" type="text" class="txtDefault ship_name" />
								</td>
								<td class="tdContent Title3">帐务结算机构代码</td>
								<td class="tdContent Title3Left"><input id="txtST_S_AAIC"
									name="stationT.stSAaic" type="text"
									class="txtDefault st_code_s" /></td>
								<td class="tdContent Title3">总吨位/功率 <span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3Left"><input id="txtST_S_T"
									name="stationT.stST" type="text"
									class="txtDefault easyui-numberbox st_a_st_required"
									precision="1" style="width: 80px; text-align: left" />t/ <input
									id="txtST_S_P" name="stationT.stSP" type="text"
									class="txtDefault easyui-numberbox equ_pow_s" precision="1"
									style="width: 80px; text-align: left">马力</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeftCorner Title3">船舶名称<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderBottom Title3Left" colspan="3"><input
									id="txtST_Ship_Name" name="stationT.stShipName" type="text"
									class="txtDefault ship_name required" /></td>
								<td class="tdBorderBottom Title3">启用日期<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRightCorner Title3" colspan="1"
									style="text-align: left"><input id="txtSTAT_Date_Start"
									name="station.statDateStart" type="text"
									class="txtDefault easyui-datebox combobox-text STAT_Date_Start"
									maxlength="10" style="width: 140px"
									onClick="WdatePicker({dateFmt:'yyyy/M/d'})" /></td>
							</tr>
						</table>
					</form>
					<table id="TablelGrid" border="0" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;">
						<tr>
							<td colspan="6">
								<div id="divGrid">
									<table border="0" cellpadding="0" cellspacing="0"
										style="width: 1000px;">
										<tr style="height: 18.45pt;">
											<td colspan="7" class="tdTitleLeft Title2">② 收发信机数据</td>
										</tr>
										<tr class="Title3" style="height: 18.45pt;">
											<td class="tdBorderLeft">设备名称</td>
											<td class="tdContent">设备型号</td>
											<td class="tdContent">型号核准代码</td>
											<td class="tdContent">型式认可代码</td>
											<td class="tdContent">发射标识</td>
											<td class="tdContent">工作频率范围<br> <input
												id="radio_freq_band_unit_type0" type="radio"
												name="radio_freq_band_unit_type" class="required" value="0" />
												<label>kHz</label> <input id="radio_freq_band_unit_type1"
												type="radio" name="radio_freq_band_unit_type"
												class="required" value="1" /> <label>MHz</label>
											</td>
											<td class="tdBorderRight">发射功率<br> <input
												id="radio_freq_band_unit_type0" type="radio"
												name="radio_freq_band_unit_type" class="required" value="0" />
												<label>W</label> <input id="radio_freq_band_unit_type1"
												type="radio" name="radio_freq_band_unit_type"
												class="required" value="1" /> <label>kW</label>
											</td>
										</tr>
										<c:forEach varStatus="s" begin="0" end="9" step="1">
											<tr class="Title3" style="height: 18.45pt;">
												<td class="tdBorderLeft"><input id="" type="text"
													class="txtDefault" name="equTList[${s.index }].etEquName"
													value="" style="width: 98%" /></td>
												<td class="tdContent"><input id="" type="text"
													class="txtDefault" name="equList[${s.index }].equModel"
													value="" style="width: 98%" /></td>
												<td class="tdContent"><input id="" type="text"
													class="txtDefault" name="equList[${s.index }].equAuth"
													value="" style="width: 98%" /></td>
												<td class="tdContent"><input id="" type="text"
													class="txtDefault" name="equTList[${s.index }].etEquCode"
													value="" style="width: 98%" /></td>
												<td class="tdContent"><select id="selSys_Code"
													class="txtDefault combobox-text" style="width: 98%"
													name="equTList[${s.index }].etEquEsgn">
														<option value="">--请选择--</option>
														<c:forEach items="${etEquEsgnDic}" var="f">
															<option value="${f.cn}">${f.codeChiName }</option>
														</c:forEach>
												</select>
												<td class="tdContent"><input id="" type="text"
													class="txtDefault" name="" value="" style="width: 40%" />至
													<input id="" type="text" class="txtDefault" name=""
													value="" style="width: 40%" /></td>
												<td class="tdBorderRight"><input id="" type="text"
													class="txtDefault" name="equList[${s.index }].equPow"
													value="" style="width: 98%" /></td>
											</tr>
										</c:forEach>

									</table>
									<table border="0" cellpadding="0" cellspacing="0"
										style="margin: 0px 0px 0px 0px; width: 1000px;">
										<tr style="height: 18.45pt;">
											<td colspan="6" class="tdTitleLeft Title2">③ 其他设备数据</td>
										</tr>
										<tr class="Title3" style="height: 18.45pt;">
											<td class="tdBorderLeft">设备名称</td>
											<td class="tdContent">设备型号</td>
											<td class="tdContent">型号核准代码</td>
											<td class="tdContent">型式认可代码</td>
											<td class="tdContent">设备生产厂家</td>
											<td class="tdBorderRight">工作频率范围<br> <input
												id="radio_freq_band_unit_type0" type="radio"
												name="radio_freq_band_unit_type" class="required" value="0" />
												<label>kHz</label> <input id="radio_freq_band_unit_type1"
												type="radio" name="radio_freq_band_unit_type"
												class="required" value="1" /> <label>MHz</label>
											</td>
										</tr>
										<c:forEach varStatus="s" begin="9" end="18" step="1">
											<tr class="Title3" style="height: 18.45pt;">
												<td class="tdBorderLeft"><input id="" type="text"
													class="txtDefault" name="equTList[${s.index }].etEquName"
													value="" style="width: 98%" /></td>
												<td class="tdContent"><input id="" type="text"
													class="txtDefault" name="equList[${s.index }].equModel"
													value="" style="width: 98%" /></td>
												<td class="tdContent"><input id="" type="text"
													class="txtDefault" name="equList[${s.index }].equAuth"
													value="" style="width: 98%" /></td>
												<td class="tdContent"><input id="" type="text"
													class="txtDefault" name="equTList[${s.index }].etEquCode"
													value="" style="width: 98%" /></td>
												<td class="tdContent"><input id="" type="text"
													class="txtDefault" name="equList[${s.index }].equMenu"
													value="" style="width: 98%" /></td>
												<td class="tdBorderRight"><input id="" type="text"
													class="txtDefault" name="" value="" style="width: 40%" />至
													<input id="" type="text" class="txtDefault" name=""
													value="" style="width: 40%" /></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</td>
						</tr>
					</table>
					<form id="formMemo">
						<table border="0" id="TablelMemo" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td colspan="6" style="font-size: 7.5pt; color: #B46F3C">
									&nbsp;</td>
							</tr>
							<tr style="height: 22.7pt">
								<td class="bottomTableLeft Title3" style="width: 150px">
									备&nbsp;注</td>
								<td colspan="5" class="bottomTableRight"><input
									id="txtMEMO" name="station.memo" style="width: 750px"
									type="text" class="txtDefault meno" /></td>
							</tr>
							<tr>
								<td colspan="6" style="font-size: 7.5pt; color: #35969D">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="3" style="font-size: 7.5pt; color: #35969D">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="3"
									style="font-size: 7.5pt; color: #35969D; text-align: right;">
									中华人民共和国信息产业部制&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						</table>
					</form>
					<iframe id="showother" scrolling="no" name="showother"
						frameborder="0"
						style="border: 0px; height: 0; width: 100%; padding: 0px; margin: 0px;"></iframe>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>