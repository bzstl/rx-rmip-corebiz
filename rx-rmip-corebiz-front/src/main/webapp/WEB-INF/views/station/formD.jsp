<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表12-D-直放站技术资料申报表</title>
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
<!-- 下国无管表12的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formD.css" />
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
						<input runat="server" type="hidden" id="hidOp" /> <input
							runat="server" type="hidden" id="hidDataFormType" /> <input
							type="hidden" runat="server" id="hidTooltip" /> <input
							type="hidden" runat="server" id="hidisReload" /> <input
							runat="server" type="hidden" id="hidStat_guid" /> <input
							runat="server" type="hidden" id="hidOpFrom" /> <input
							runat="server" type="hidden" id="hidFromData" /> <input
							runat="server" type="hidden" id="hidOpDataType" /> <input
							runat="server" type="hidden" id="hidStatValid" />
						<!--add 2012-7-10 用于无线电台站资料数据库验证工具中，保存数据时也需要开始《台站数据准确性校验》-->
						<input type="hidden" id="hidFileName" runat="server" />
						<!--add 2011-9-28-->
						<input runat="server" type="hidden" id="hidApp_code" />
						<!-- 区分是不是备用库2011-10-24 -->
						<input runat="server" type="hidden" id="hidIsBak" />
						<!-- 系统部署ID -->
						<input runat="server" type="hidden" id="hidSysID" /> <input
							type="hidden" id="hidStatus" />
						<!--add 2012-4-6  保存文件状态，用于入库工具列表显示-->
						<input type="hidden" id="hidJqgridOption" />
						<!-- 保存当前表格的数据选项特性,只选用于导入系统里面，台站和早报用的是父页面的 -->

						<table border="0" id="formTableC" cellpadding="0" cellspacing="0"
							style="margin: 0px 0px 0px 0px; border: none; width: 1000px; background-color: White;">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="8"><span id="spanTitle"> 直放站技术资料申报表</span></td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="4">
									&nbsp;&nbsp;国无管表12</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="4">D<input id="txtSTAT_TDI" type="text"
									name="stat_tdi" class="txtLine  stat_tdi" maxlength="4" />&nbsp;&nbsp;
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
								<td colspan="2" class="tdContent"><input id="txtAPP_Code"
									type="text" name="station.appCode" class="txtDefault app_code"
									maxlength="14" /></td>
								<td class="tdContent Title3">台（站）名称</td>
								<td colspan="4" class="tdBorderRight Title3"
									style="text-align: left"><input id="txtSTAT_Name"
									type="text" name="station.statName"
									class="txtDefault stat_name_noRequired" /></td>
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
								<td class="tdBorderLeft Title3">台（站）地址<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent" colspan="4"><input id="txtSTAT_ADDR"
									type="text" name="station.statAddr"
									class="txtDefault stat_addr" /></td>
								<td class="tdContent Title3">技术体制<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight" colspan="2"><input
									id="txtST_D_TEC_Type" type="text" name="stationT.stDTecType"
									style="width: 180px" class="txtDefault st_d_tec_type" /></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">地理坐标<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent Title3">东经</td>
								<td class="tdContent Title3"><input id="txtSTAT_LG1"
									type="text" name="stat_lg"
									class="txtNumber easyui-numberbox stat_lg1" />° <input
									id="txtSTAT_LG2" type="text" name="stat_lg1"
									class="txtNumber easyui-numberbox stat_lg2" />′ <input
									id="txtSTAT_LG3" type="text" name="stat_lg2"
									class="txtNumber easyui-numberbox stat_lg3" precision="2" />″
									<!-- 页面上没有但是又非空的字段 ， station.statLg = stat_lg_s+stat_lg1_s+stat_lg2_s -->
									<input name="station.statLg" value="" type="hidden"></td>
								<td class="tdContent Title3">北纬</td>
								<td class="tdContent Title3"><input id="txtSTAT_LA1"
									type="text" name="stat_la"
									class="txtNumber easyui-numberbox stat_la1" />° <input
									id="txtSTAT_LA2" type="text" name="stat_la1"
									class="txtNumber easyui-numberbox stat_la2" />′ <input
									id="txtSTAT_LA3" type="text" name="stat_la2"
									class="txtNumber easyui-numberbox stat_la3" precision="2" />″
									<!-- 页面上没有但是又非空的字段 ， station.statLa = stat_la_s+stat_la1_s+stat_la2_s -->
									<input name="station.statLa" value="" type="hidden"></td>
								<td class="tdContent Title3">海拔高度<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdBorderRight Title3"
									style="text-align: left"><input id="txtSTAT_AT"
									type="text" name="station.statAt" style="width: 180px"
									class="txtNumber easyui-numberbox stat_at" precision="1" />m</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">直放站类型<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdContent Content3"><input
									id="radio8" type="radio" name="stationT.stDType" value="0"
									class="required" /><label for="radio8"> &nbsp;宽带&nbsp;</label>
									<input id="radio9" type="radio" name="stationT.stDType"
									value="1" class="required" /><label for="radio9">&nbsp;窄带&nbsp;</label>
								</td>
								<td class="tdContent Title3">服务半径</td>
								<td class="tdContent Content3"><input id="txtSt_Serv_R"
									type="text" name="stationT.stServR"
									class="txtNumberLong easyui-numberbox St_Serv_R_d"
									style="width: 220px" precision="1" />m</td>
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
							<tr style="height: 18.45pt;">
								<td colspan="2" class="tdBorderLeftCorner Title3">
									通信对象的基站编号<span style="color: #FF0000;">*</span>
								</td>
								<td colspan="6" class="tdBorderRightCorner Title3" align="left">
									<input id="txtSTAT_C_Code" type="text" name="st_tf_code"
									maxlength="40" class=" txtDefault1 st_tf_code" />
								</td>
							</tr>
							<tr>
								<td colspan="8">
									<div id="tab"
										style="margin: 0px 0px 0px 0px; border: 0px 0px 0px 0px;">
									</div>
								</td>
							</tr>
						</table>
					</form>
					<table border="0" id="formTableEqus" cellpadding="0"
						cellspacing="0"
						style="margin: 0px 0px 0px 0px; border: none; width: 1000px; background-color: White;">
						<tr style="height: 18.45pt;">
							<td colspan="4" class="tdTitleLeft Title2">② 频率数据</td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td class="tdBorderLeft">通信对象的基站编号</td>
							<td class="tdBorderRight"><input id="" type="text"
								class="txtDefault" name="stationT.stCCode" value=""
								style="width: 98%" /></td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td class="fullLine">上行方向</td>
							<td class="fullLine">下行方向</td>
						</tr>
						<tr>
							<td><jsp:include page="formD_cd1.jsp">
									<jsp:param value="0" name="pageIndex" />
								</jsp:include></td>
							<td><jsp:include page="formD_cd1.jsp">
									<jsp:param value="1" name="pageIndex" />
								</jsp:include></td>
						</tr>
					</table>



					<table border="0" id="formTableEqus" cellpadding="0"
						cellspacing="0"
						style="margin: 0px 0px 0px 0px; border: none; width: 1000px; background-color: White;">
						<tr>
							<td colspan="8">
								<table border="0" id="formTableEqus" cellpadding="0"
									cellspacing="0"
									style="margin: 0px 0px 0px 0px; border: none; width: 1000px; background-color: White;">
									<tr style="height: 18.45pt;">
										<td class="tdTitleTop Title2" colspan="6">⑤ 设备数据</td>
									</tr>
									<tr class="Title3" style="height: 18.45pt;">
										<td class="tdBorderLeft">型号核准代码</td>
										<td class="tdContent"><input id="" type="text"
											class="txtDefault" name="equ.equAuth" value=""
											style="width: 98%" /></td>
										<td class="tdContent">设备型号</td>
										<td class="tdContent"><input id="" type="text"
											class="txtDefault" name="equ.equModel" value=""
											style="width: 98%" /></td>
										<td class="tdContent">设备数量</td>
										<td class="tdBorderRight"><input id="" type="text"
											class="txtDefault" name="equT.etEquSum" value=""
											style="width: 98%" /></td>
									</tr>
									<tr class="Title3" style="height: 18.45pt;">
										<td class="tdBorderLeft">设备生产厂家</td>
										<td class="tdContent" colspan="3"><input id=""
											type="text" class="txtDefault" name="equ.equMenu" value=""
											style="width: 98%" /></td>
										<td class="tdContent">设备出厂号</td>
										<td class="tdBorderRight"><input id="" type="text"
											class="txtDefault" name="equ.equCode" value=""
											style="width: 98%" /></td>
									</tr>
									<tr class="Title3" style="height: 18.45pt;">
										<td class="tdBorderLeft">上行发射功率/信道</td>
										<td class="tdContent" colspan="2"><input id=""
											type="text" class="txtDefault" name="equT.etEquUpow" value=""
											style="width: 50%" /> <input id="radio25" type="radio"
											name="equT.etEquUpu" value="1" class="required" /> <label>W</label>
											<input id="radio26" type="radio" name="equT.etEquUpu"
											value="4" class="required" /> <label>dBm</label></td>
										<td class="tdContent">下行发射功率/信道</td>
										<td class="tdBorderRight" colspan="2"><input id=""
											type="text" class="txtDefault" name="equT.etEquDpow" value=""
											style="width: 50%" /> <input id="radio25" type="radio"
											name="equT.etEquDnu" value="1" class="required" /> <label>W</label>
											<input id="radio26" type="radio" name="equT.etEquDnu"
											value="4" class="required" /> <label>dBm</label></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<form id="formEqua">
						<table border="0" id="formTableMEMO" cellpadding="0"
							cellspacing="0"
							style="margin: 20px 0px 0px 0px; border: none; width: 1000px; background-color: White;">
							<tr style="height: 22.7pt">
								<td class="bottomTableLeft Title3" style="width: 150px">
									备&nbsp;注</td>
								<td colspan="7" class="bottomTableRight"><input
									id="txtMEMO" name="station.memo" type="text"
									class="txtDefault  meno" /></td>
							</tr>
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #D85896">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #D85896">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #D85896; text-align: right;">
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