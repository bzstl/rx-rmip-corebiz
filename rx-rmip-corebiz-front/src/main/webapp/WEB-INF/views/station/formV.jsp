<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表13-V-无线电台(站)技术资料申报表</title>
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
<!-- 下国无管表13的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formV.css" />
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
									colspan="8"><span id="spanTitle">无线电台(站)技术资料申报表</span></td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2"></tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="3">
									&nbsp;&nbsp;国无管表13</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="3"><span id="tdSVN"> 通信业务/系统类型<span
										style="color: #FF0000;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										id="selNET_SVN" class="txtDefault checkNET_SVN"
										style="width: 220px" /></span></td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="1">V<input id="txtSTAT_TDI" name="stat_tdi"
									type="text" class="txtLine  stat_tdi" maxlength="4" />&nbsp;&nbsp;
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
								<td colspan="7" class="tdBorderRight"><input
									id="txtAPP_Code" name="station.appCode" type="text"
									class="txtDefault app_code" maxlength="14" /></td>
								<%--<td colspan="3" class="tdBorderRight Title3">
                                <input id="rdNew" type="radio" name="radio_optype" value="0" />
                                <label for="rdNew">
                                    新设</label>&nbsp;
                                <input id="rdChange" type="radio" name="radio_optype" value="1" />
                                <label for="rdChange">
                                    变更</label>
                            </td>--%>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">台(站)名称</td>
								<td colspan="4" class="tdContent"><input id="txtSTAT_Name"
									name="station.statName" type="text"
									class="txtDefault stat_name_v" /></td>
								<td class="tdContent Title3">台站类别<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdBorderRight"><select
									id="selSys_Code" class="txtDefault combobox-text"
									style="width: 98%" name="station.statType">
										<option value="">--请选择--</option>
										<c:forEach items="${stationTypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3"><label id="lblSTAT_ADDR">台(站)地址</label>
								</td>
								<td class="tdContent" colspan="4"><input id="txtSTAT_ADDR"
									name="station.statAddr" type="text" class="txtDefault stataddr" />
								</td>
								<td class="tdContent Title3">设备数量</td>
								<td colspan="2" class="tdBorderRight"><input
									id="txt_Equ_sum" name="station.statEquSum" type="text"
									style="width: 120px"
									class="txtNumber easyui-numberbox stat_equ_sum " /></td>
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
								<td class="tdContent Title3"><label id="lblSTAT_AT">海拔高度</label>
								</td>
								<td colspan="2" class="tdBorderRight Title3"
									style="text-align: left"><input id="txtSTAT_AT"
									name="stat_at" type="text" style="width: 180px"
									class="txtNumber easyui-numberbox stat_at_v" precision="1" />m
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">工作方式<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdContent Content3"><input
									id="txtSTAT_Work" name=station.statWork type="text"
									style="width: 170px" class="txtDefault checkRequired" /></td>
								<td class="tdContent Title3"><label id="lblST_SERV_R">服务半径</label>
								</td>
								<td class="tdContent Content3"><input id="txtST_SERV_R"
									name="stationT.stServR" type="text"
									class="txtDefault easyui-numberbox St_Serv_R" precision="3" />km
								</td>
								<td class="tdContent Title3">启用日期<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdBorderRight Title3"
									style="text-align: left"><input id="txtSTAT_Date_Start"
									type="text" name="station.statDateStart"
									class="txtDefault easyui-datebox combobox-text STAT_Date_Start"
									maxlength="10" style="width: 140px"
									onClick="WdatePicker({dateFmt:'yyyy/M/d'})" /></td>
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
										<tr>
											<td colspan="4" style="padding: 0px 0px 0px 0px;">
												<table border="0" cellpadding="0" cellspacing="0"
													style="margin: 0px 0px 0px 0px; width: 1000px;">
													<tr style="height: 18.45pt;">
														<td colspan="12" class="tdTitleLeft Title2">② 频率数据</td>
													</tr>
													<tr class="Title3">
														<td class="tdBorderLeft"></td>
														<td class="tdContent">发射频率</td>
														<td class="tdContent">接收频率</td>
														<td rowspan="6" class="tdContent"><input
															id="radio_freq_band_unit_type0" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="0" /><label>MHz</label><br> <input
															id="radio_freq_band_unit_type1" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="1" /><label>GHz</label></td>
														<td class="tdContent">必要带宽<br> <input
															id="radio_freq_band_unit_type0" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="0" /><label>KHz</label> <input
															id="radio_freq_band_unit_type1" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="1" /><label>MHz</label>
														</td>
														<td class="tdContent">调制<br>方式
														</td>
														<td class="tdContent"></td>
														<td class="tdContent">发射频率</td>
														<td class="tdContent">接收频率</td>
														<td rowspan="6" class="tdContent"><input
															id="radio_freq_band_unit_type0" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="0" /><label>MHz</label><br> <input
															id="radio_freq_band_unit_type1" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="1" /><label>GHz</label></td>
														<td class="tdContent">必要带宽<br> <input
															id="radio_freq_band_unit_type0" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="0" /><label>KHz</label> <input
															id="radio_freq_band_unit_type1" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="1" /><label>MHz</label>
														</td>
														<td class="tdBorderRight">调制<br>方式
														</td>
													</tr>
													<c:forEach varStatus="s" begin="0" end="4" step="1">
														<tr class="Title3">
															<td class="tdBorderLeft">${s.count }</td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="freqList[${s.index }].freqEfb"
																value="" style="width: 98%" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="freqList[${s.index }].freqRfb"
																value="" style="width: 98%" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault"
																name="freqList[${s.index }].freqEBand" value=""
																style="width: 98%" /></td>
															<td class="tdContent"><select id=""
																class="txtDefault combobox-text" style="width: 98%"
																name="freqList[${s.index }].freqMod">
																	<option value="">请选择</option>
																	<c:forEach var="f" items="${freqModDic }">
																		<option value="${f.cn }">${f.codeChiName }</option>
																	</c:forEach>
															</select></td>
															<td class="tdContent">${s.count+5 }</td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault"
																name="freqList[${s.index+5 }].freqEfb" value=""
																style="width: 98%" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault"
																name="freqList[${s.index+5 }].freqRfb" value=""
																style="width: 98%" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault"
																name="freqList[${s.index+5 }].freqEBand" value=""
																style="width: 98%" /></td>
															<td class="tdContent"><select id=""
																class="txtDefault combobox-text" style="width: 98%"
																name="freqList[${s.index+5 }].freqMod">
																	<option value="">请选择</option>
																	<c:forEach var="f" items="${freqModDic }">
																		<option value="${f.cn }">${f.codeChiName }</option>
																	</c:forEach>
															</select></td>
														</tr>
													</c:forEach>
												</table>
											</td>
										</tr>

										<tr>
											<td colspan="4" style="padding: 0px 0px 0px 0px;">
												<table border="0" cellpadding="0" cellspacing="0"
													style="margin: 0px 0px 0px 0px; width: 1000px;">
													<tr class="Title3">
														<td class="tdBorderLeft"></td>
														<td class="tdContent">发射频率范围</td>
														<td class="tdContent">接收频率范围</td>
														<td rowspan="3" class="tdContent"><input
															id="radio_freq_band_unit_type0" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="0" /><label>MHz</label><br> <input
															id="radio_freq_band_unit_type1" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="1" /><label>GHz</label></td>
														<td colspan="2" class="tdContent">必要带宽</td>
														<td class="tdBorderRight">调制方式</td>
													</tr>

													<tr class="Title3">
														<td rowspan="2" class="tdBorderLeft">A</td>
														<td class="tdContent">起：<input id="" type="text"
															class="txtDefault" name="freqList[0].freqEfb" value=""
															style="width: 60%" /></td>
														<td class="tdContent">起：<input id="" type="text"
															class="txtDefault" name="freqList[0].freqRfb" value=""
															style="width: 60%" /></td>
														<td rowspan="2" class="tdContent"><input id=""
															type="text" class="txtDefault"
															name="freqList[0].freqEBand" value="" style="width: 98%" /></td>
														<td rowspan="2" class="tdContent"><input
															id="radio_freq_band_unit_type0" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="0" /><label>kHz</label><br> <input
															id="radio_freq_band_unit_type1" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="1" /><label>MHz</label></td>
														<td rowspan="2" class="tdBorderRight"><select id=""
															class="txtDefault combobox-text" style="width: 98%"
															name="freqList[0].freqMod">
																<option value="">请选择</option>
																<c:forEach var="f" items="${freqModDic }">
																	<option value="${f.cn }">${f.codeChiName }</option>
																</c:forEach>
														</select></td>
													</tr>

													<tr class="Title3">
														<td class="tdContent">止：<input id="" type="text"
															class="txtDefault" name="freqList[0].freqEfe" value=""
															style="width: 60%" /></td>
														<td class="tdContent">止：<input id="" type="text"
															class="txtDefault" name="freqList[0].freqRfe" value=""
															style="width: 60%" /></td>
													</tr>

													<tr class="Title3">
														<td rowspan="2" class="tdBorderLeft">A</td>
														<td class="tdContent">起：<input id="" type="text"
															class="txtDefault" name="freqList[1].freqEfb" value=""
															style="width: 60%" /></td>
														<td class="tdContent">起：<input id="" type="text"
															class="txtDefault" name="freqList[1].freqRfb" value=""
															style="width: 60%" /></td>
														<td rowspan="2" class="tdContent"><input
															id="radio_freq_band_unit_type0" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="0" /><label>MHz</label><br> <input
															id="radio_freq_band_unit_type1" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="1" /><label>GHz</label></td>
														<td rowspan="2" class="tdContent"><input id=""
															type="text" class="txtDefault"
															name="freqList[1].freqEBand" value="" style="width: 98%" /></td>
														<td rowspan="2" class="tdContent"><input
															id="radio_freq_band_unit_type0" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="0" /><label>kHz</label><br> <input
															id="radio_freq_band_unit_type1" type="radio"
															name="radio_freq_band_unit_type" class="required"
															value="1" /><label>MHz</label></td>
														<td rowspan="2" class="tdBorderRight"><select id=""
															class="txtDefault combobox-text" style="width: 98%"
															name="freqList[1].freqMod">
																<option value="">请选择</option>
																<c:forEach var="f" items="${freqModDic }">
																	<option value="${f.cn }">${f.codeChiName }</option>
																</c:forEach>
														</select></td>
													</tr>

													<tr class="Title3">
														<td class="tdContent">止：<input id="" type="text"
															class="txtDefault" name="freqList[1].freqEfe" value=""
															style="width: 60%" /></td>
														<td class="tdContent">止：<input id="" type="text"
															class="txtDefault" name="freqList[1].freqRfe" value=""
															style="width: 60%" /></td>
													</tr>


												</table>
											</td>
										</tr>



										<tr>
											<td colspan="4" style="padding: 0px 0px 0px 0px;">
												<table border="0" cellpadding="0" cellspacing="0"
													style="margin: 0px 0px 0px 0px; width: 1000px;">
													<tr style="height: 18.45pt;">
														<td class="tdTitleTop Title2" colspan="13">③ 设备数据</td>
													</tr>
													<tr class="Title3">
														<td class="tdBorderLeft">设备出厂号</td>
														<c:forEach varStatus="s" begin="0" end="4" step="1">
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="equTList[${s.index }].etEquNo"
																value="${s.count }" style="width: 20px" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="equList[${s.index }].equCode"
																value="" style="width: 98%" /></td>
														</c:forEach>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equTList[5].etEquNo" value="6"
															style="width: 20px" /></td>
														<td class="tdBorderRight"><input id="" type="text"
															class="txtDefault" name="equList[5].equCode" value=""
															style="width: 98%" /></td>
													</tr>
													<tr class="Title3">
														<td class="tdBorderLeft">呼号</td>
														<c:forEach varStatus="s" begin="0" end="4" step="1">
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="" value="${s.count }"
																style="width: 20px" /></td>
															<td class="tdContent"><input id="" type="text"
																class="txtDefault" name="equTList[${s.index }].etEquCl"
																value="" style="width: 98%" /></td>
														</c:forEach>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="" value="5" style="width: 20px" /></td>
														<td class="tdBorderRight"><input id="" type="text"
															class="txtDefault" name="equTList[5].etEquCl" value=""
															style="width: 98%" /></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td colspan="4" style="padding: 0px 0px 0px 0px;">
												<table border="0" cellpadding="0" cellspacing="0"
													style="margin: 0px 0px 0px 0px; width: 1000px;">
													<tr class="Title3">
														<td class="tdBorderLeft">设备型号</td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equ.equModel" value=""
															style="width: 98%" /></td>
														<td class="tdContent">设备生产厂家</td>
														<td colspan="4" class="tdBorderRight"><input id=""
															type="text" class="txtDefault" name="equ.equMenu"
															value="" style="width: 98%" /></td>
													</tr>
													<tr class="Title3">
														<td class="tdBorderLeft">型号核准代码</td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equ.equAuth" value=""
															style="width: 98%" /></td>
														<td class="tdContent">接收机灵敏度</td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equT.etEquSen" value=""
															style="width: 98%" /></td>
														<td class="tdContent">发射功率</td>
														<td class="tdContent"><input id="" type="text"
															class="txtDefault" name="equ.equPow" value=""
															style="width: 98%" /></td>
														<td class="tdBorderRight"><input
															id="radio_freq_band_unit_type0" type="radio"
															name="equT.etPowU" class="required" value="0" /><label>W</label>
															<input id="radio_freq_band_unit_type1" type="radio"
															name="equT.etPowU" class="required" value="1" /><label>dBm</label>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="8">
								<div id="Div1" style="width: 1000px;">
									<form></form>
									<form id="formant">
										<table border="0" cellpadding="0" cellspacing="0"
											style="border: none; width: 100%; background-color: White;"
											id="tableAnt">
											<tr style="height: 18.45pt;">
												<td class="tdTitleTop Title2" colspan="8">④ 天馈线数据 <!--  <a id="antDataCopy"  class="easyui-linkbutton" iconCls="icon-rxcopy"  plain="true" style="color:black;background:white" >复制发射天线数据到接收天线数据</a> -->
												</td>
											</tr>
											<tr style="height: 18.45pt;">
												<td class="tdBorderLeft Title3">&nbsp;</td>
												<td class="tdContent Title3">天线类型<span
													style="color: #FF0000;">*</span>
												</td>
												<td class="tdContent Title3">天线型号</td>
												<td class="tdContent Title3"><label id="lblANT_Gain">天线增益</label>
													<br /> <input id="Radio1" type="radio"
													name="radio_at_unit_type" value="0" class="required" /> <label
													for="Radio1"> dBd </label> &nbsp; <input id="Radio2"
													type="radio" name="radio_at_unit_type" value="1"
													class="required" /> <label for="Radio2"> dBi</label></td>
												<td class="tdContent Title3">极化方式<span
													style="color: #FF0000;">*</span>
												</td>
												<td class="tdContent Title3"><label id="lblANT_Angle">最大辐射方位角</label>
												</td>
												<td colspan="2" class="tdBorderRight Title3">天线生产厂家</td>
											</tr>
											<tr style="height: 18.45pt;">
												<td class="tdBorderLeft Title3">发</td>
												<td class="tdContent Content3"><select id=""
													class="txtDefault combobox-text" style="width: 98%"
													name="antList[0].antType">
														<option value="">请选择</option>
														<c:forEach var="f" items="${antTypeDic }">
															<option value="${f.cn }">${f.codeChiName }</option>
														</c:forEach>
												</select></td>
												<td class="tdContent Content3"><input
													id="txtANT_Model1" name="antList[0].antModel" type="text"
													class="txtDefault ant_model_tf" /></td>
												<td class="tdContent Content3"><input id="txtANT_Gain1"
													name="antList[0].antEgain" type="text"
													class="txtDefault easyui-numberbox ant_gain" precision="1" />
												</td>
												<td class="tdContent Content3"><select id=""
													class="txtDefault combobox-text" style="width: 98%"
													name="antList[0].antEpole">
														<option value="">请选择</option>
														<c:forEach var="f" items="${antPoleDic }">
															<option value="${f.cn }">${f.codeChiName }</option>
														</c:forEach>
												</select></td>
												<td class="tdContent Content3"><input
													id="txtANT_Angle1" name="antList[0].antAngle" type="text"
													class="txtDefault easyui-numberbox ant_angle_required_Three"
													precision="1" />°</td>
												<td colspan="2" class="tdBorderRight Title3"
													style="text-align: left"><input id="txtANT_MENU1"
													name="antList[0].antMenu" type="text"
													class="txtDefault ant_menu" /></td>
											</tr>
											<tr style="height: 18.45pt;" id="trAntR1">
												<td class="tdBorderLeft Title3">收</td>
												<td class="tdContent Content3"><select id=""
													class="txtDefault combobox-text" style="width: 98%"
													name="antList[1].antType">
														<option value="">请选择</option>
														<c:forEach var="f" items="${antTypeDic }">
															<option value="${f.cn }">${f.codeChiName }</option>
														</c:forEach>
												</select></td>
												<td class="tdContent Content3"><input
													id="txtANT_Model1" name="antList[1].antModel" type="text"
													class="txtDefault ant_model_tf" /></td>
												<td class="tdContent Content3"><input id="txtANT_Gain1"
													name="antList[1].antEgain" type="text"
													class="txtDefault easyui-numberbox ant_gain" precision="1" />
												</td>
												<td class="tdContent Content3"><select id=""
													class="txtDefault combobox-text" style="width: 98%"
													name="antList[1].antRpole">
														<option value="">请选择</option>
														<c:forEach var="f" items="${antPoleDic }">
															<option value="${f.cn }">${f.codeChiName }</option>
														</c:forEach>
												</select></td>
												<td class="tdContent Content3"><input
													id="txtANT_Angle1" name="antList[1].antAngle" type="text"
													class="txtDefault easyui-numberbox ant_angle_required_Three"
													precision="1" />°</td>
												<td colspan="2" class="tdBorderRight Title3"
													style="text-align: left"><input id="txtANT_MENU1"
													name="antList[1].antMenu" type="text"
													class="txtDefault ant_menu" /></td>
											</tr>

											<tr style="height: 18.45pt;">
												<td class="tdBorderLeft Title3">&nbsp;</td>
												<td class="tdContent Title3"><label id="lblANT_Hight">天线高度</label>
												</td>
												<td class="tdContent Title3"><label id="lblAT_Sum">天线数量</label>
												</td>
												<td colspan="2" class="tdContent Title3">馈线型号</td>
												<td class="tdContent Title3"><label id="lblFEED_Lose">馈线系统总损耗</label>
												</td>
												<td colspan="2" class="tdBorderRight Title3">馈线生产厂家</td>
											</tr>

											<tr style="height: 18.45pt;">
												<td class="tdBorderLeft Title3">发</td>
												<td class="tdContent Content3"><input
													id="txtANT_Hight1" name="antList[0].antHight" type="text"
													class="txtDefault easyui-numberbox ant_hight" precision="1" />m
												</td>
												<td class="tdContent Content3"><input id="txtAT_Sum1"
													name="antTList[0].atSum" type="text"
													class="txtDefault easyui-numberbox at_sum" /></td>
												<td colspan="2" class="tdContent Content3"><input
													id="txtFEED_Model1" name="feedList[0].feedModel type="
													text" class="txtDefault feed_model" /></td>
												<td class="tdContent Content3"><input
													id="txtFEED_Lose1" name="feedList[0].feedLose" type="text"
													class="txtDefault easyui-numberbox feed_lose" precision="1" />dB
												</td>
												<td colspan="2" class="tdBorderRight Title3"
													style="text-align: left"><input id="txtFEED_MENU1"
													name="feedList[0].feedMenu" type="text"
													class="txtDefault feed_menu" /></td>
											</tr>
											<tr style="height: 18.45pt;" id="trAntR2">
												<td class="tdBorderLeft Title3">收</td>
												<td class="tdContent Content3"><input
													id="txtANT_Hight1" name="antList[1].antHight" type="text"
													class="txtDefault easyui-numberbox ant_hight" precision="1" />m
												</td>
												<td class="tdContent Content3"><input id="txtAT_Sum1"
													name="antTList[1].atSum" type="text"
													class="txtDefault easyui-numberbox at_sum" /></td>
												<td colspan="2" class="tdContent Content3"><input
													id="txtFEED_Model1" name="feedList[1].feedModel type="
													text" class="txtDefault feed_model" /></td>
												<td class="tdContent Content3"><input
													id="txtFEED_Lose1" name="feedList[1].feedLose" type="text"
													class="txtDefault easyui-numberbox feed_lose" precision="1" />dB
												</td>
												<td colspan="2" class="tdBorderRight Title3"
													style="text-align: left"><input id="txtFEED_MENU1"
													name="feedList[1].feedMenu" type="text"
													class="txtDefault feed_menu" /></td>
											</tr>
										</table>
									</form>
								</div>
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
								<td colspan="7" class="bottomTableRight"><input
									id="txtMEMO" name="station.memo" style="width: 750px"
									type="text" class="txtDefault meno" /></td>
							</tr>
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #003399">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #003399">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #003399; text-align: right;">
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