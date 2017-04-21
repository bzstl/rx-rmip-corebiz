<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表5-TF-地面固定业务台报表</title>



<!-- --------------------------------  样式      ------------------------------------>

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/font-awesome/4.5.0/css/font-awesome.min.css" />


<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!-- 下国无管表5的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formTF.css" />
<!-- 页面校验的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/Validate.css" />
<!-- 下拉框的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/combobox.css" />


<!-- 临时添加的样式 -->
<style type="text/css">
</style>
</head>
<body style="width: 100%; background-color: White; overflow-x: hidden">
	<table align="center" style="height: 100%; background-color: White;"
		cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2" align="center">
				<div id="formcontent" style="">
					<form id="form1">
						<table id="formTableTF" border="0" cellpadding="0" cellspacing="0"
							style="margin-left: 0pt; border: none; width: 1000px;">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="9"><span id="spanTitle">地面固定业务台（站）技术资料申报表</span>
								</td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2"></tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="4">
									&nbsp;&nbsp;国无管表5</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="4"><span id="tdSVN"> 通信业务/系统类型<span
										style="color: #FF0000;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										id="selNET_SVN" class="txtDefault checkNET_SVN"
										style="width: 180px" /></span></td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="1">TF<input id="txtSTAT_TDI" type="text"
									name="stat_tdi" class="txtLine stat_tdi" maxlength="4" />&nbsp;&nbsp;
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdTitleTopLeft Title2" colspan="8">① 台（站）数据</td>
								<td class="tdTitleTopRight Title2" style="text-align: right">
									<input id="txtSTAT_Stauts" type="text" style="width: 50px"
									class="txtStatStauts" readonly="true" />
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3"><label id="lblAPP_Code">申请表编号</label>
								</td>
								<td colspan="3" class="tdContent"><input id="txtAPP_Code"
									name="station.appCode" type="text" class="txtDefault app_code"
									maxlength="14" /></td>
								<td colspan="2" class="tdContent Title3"><label
									id="lblSTAT_Type">台（站）类别<span style="color: #FF0000;">*</span></label>
								</td>
								<td colspan="4" class="tdBorderRight"><select
									id="selSys_Code" class="txtDefault combobox-text"
									style="width: 98%" name="station.statType">
										<option value="">--请选择--</option>
										<c:forEach items="${stationTypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<!-- <td  class="tdBorderRight Title3">
	                                <input id="rdNew" type="radio" name="radio_optype" value="0" />
	                                <label for="rdNew">
	                                    新设</label>
	                                <input id="rdChange" type="radio" name="radio_optype" value="1" />
	                                <label for="rdChange">
	                                    变更</label>
	                            </td> -->
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3"><label id="lblSTAT_Name">台（站）名称</label>
								</td>
								<td colspan="6" class="tdContent"><input id="txtSTAT_Name"
									type="text" name="station.statName"
									class="txtDefault stat_name_v" /></td>
								<td class="tdContent Title3"><label id="lblSt_Tf_Code">站代号</label>
								</td>
								<td colspan="1" class="tdBorderRight"><input
									id="txtSt_Tf_Code" type="text" name="stationT.stTfCode"
									class="txtDefault st_tf_code_norequired" /></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3"><label id="lblSTAT_ADDR">台（站）地址</label>
								</td>
								<td class="tdContent" colspan="6"><input id="txtSTAT_ADDR"
									type="text" name="station.statAddr"
									class="txtDefault stat_addr_norequired" /></td>
								<td class="tdContent Title3"><label id="lblEqu_sum">设备数量</label>
								</td>
								<td class="tdBorderRight" colspan="1" style="text-align: left">
									<input id="txt_Equ_sum" type="text" name="station.statEquSum"
									style="width: 120px; text-align: left"
									class="txtDefault easyui-numberbox stat_equ_sum" />
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3"><label id="lblSTAT_LG">地理坐标</label>
								</td>
								<td class="tdContent Title3">东经</td>
								<td colspan="2" class="tdContent Title3"><input
									id="txtSTAT_LG1" type="text" name="stat_lg" style="width: 30px"
									class="txtDefault easyui-numberbox stat_lg1" />° <input
									id="txtSTAT_LG2" type="text" name="stat_lg1"
									style="width: 30px"
									class="txtDefault easyui-numberbox stat_lg2" />′ <input
									id="txtSTAT_LG3" precision="2" type="text" name="stat_lg2"
									style="width: 35px"
									class="txtDefault easyui-numberbox stat_lg3" />″ <!-- 页面上没有但是又非空的字段 ， station.statLg = stat_lg_s+stat_lg1_s+stat_lg2_s -->
									<input name="station.statLg" value="" type="hidden"></td>
								<td class="tdContent Title3">北纬</td>
								<td colspan="2" class="tdContent Title3"><input
									id="txtSTAT_LA1" type="text" name="stat_la" style="width: 30px"
									class="txtDefault easyui-numberbox stat_la1" />° <input
									id="txtSTAT_LA2" type="text" name="stat_la1"
									style="width: 30px"
									class="txtDefault easyui-numberbox stat_la2" />′ <input
									id="txtSTAT_LA3" precision="2" type="text" name="stat_la2"
									style="width: 35px"
									class="txtDefault easyui-numberbox stat_la3" />″ <!-- 页面上没有但是又非空的字段 ， station.statLa = stat_la_s+stat_la1_s+stat_la2_s -->
									<input name="station.statLa" value="" type="hidden"></td>
								<td class="tdContent Title3"><label id="lblSTAT_AT">
										海拔高度</label></td>
								<td colspan="1" class="tdBorderRight Title3"
									style="text-align: left"><input id="txtSTAT_AT"
									type="text" name="station.statAt"
									style="width: 150px; text-align: left"
									class="txtDefault easyui-numberbox stat_at_norequired"
									precision="1" />m</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeftCorner Title3"><label
									id="lblST_TF_TRANS_CA_P">传输容量</label></td>
								<td colspan="2" class="tdBorderBottom Content3"><input
									id="txtST_TF_TRANS_CA_P" type="text"
									name="stationT.stTfTransCaP" precision="6"
									class="txtDefault easyui-numberbox st_tf_trans_ca_p" /></td>
								<td colspan="3" class="tdBorderBottom Title3"><input
									id="radio2" type="radio" name="stationT.stTfTransCaPu"
									value="0" class="required" /> <label for="radio2">
										Mbit/s&nbsp;</label> <input id="radio3" type="radio"
									name="stationT.stTfTransCaPu" value="1" class="required" /> <label
									for="radio3"> Gbit/s&nbsp;</label> <input id="radio4"
									type="radio" name="stationT.stTfTransCaPu" value="2"
									class="required" /> <label for="radio4"> CH</label></td>
								<td class="tdBorderBottom Title3"><label
									id="lblSTAT_Date_Start">启用日期</label></td>
								<td colspan="2" class="tdBorderRightCorner Title3" align="left"
									style="text-align: left"><input id="txtSTAT_Date_Start"
									type="text" name="station.statDateStart"
									class="txtDefault easyui-datebox combobox-text STAT_Date_Start"
									maxlength="10" style="width: 140px"
									onClick="WdatePicker({dateFmt:'yyyy/M/d'})" /></td>
							</tr>
						</table>
					</form>
				</div>
			</td>
		</tr>

		<tr style="height: 18.45pt">
			<td class="tdTitleLeft Title2">② 频率数据&nbsp;
				<button id="bt5"
					style="border-bottom-color: #b46f3c; background-color: #d8aa88;">+</button>
			</td>
		</tr>

		<tr>
			<td>
				<div class="tabbable" style="width: 1000px">
					<ul class="nav nav-tabs" id="myTab">


						<li class="active"><a data-toggle="tab" href="#tab1">
								Tab1 <i class="red ace-icon fa fa-close bigger-30"></i>
						</a></li>


					</ul>

					<div class="tab-content"
						style="padding: 0px; margin: 0px; border: 0;">

						<div id="tab1" class="tab-pane fade in active">
							<jsp:include page="formTF_cd1.jsp" flush="true">
								<jsp:param value="0" name="tabIndex" />
							</jsp:include>
						</div>


					</div>
				</div>
			</td>
		</tr>


		<tr>
			<td colspan="2" align="center">
				<div id="formcontent6" style="width: 1000px;">
					<form id="form10">
						<table id="formTableMemo" border="0" cellpadding="0"
							cellspacing="0" style="border: none; width: 1000px;">
							<tr style="height: 22.7pt">
								<td class="bottomTableLeft Title3" style="width: 150px"><label
									id="lblMEMO">备&nbsp;注</label></td>
								<td colspan="7" class="bottomTableCenter bottomTableRight">
									<input id="txtMEMO" type="text" name="station.memo"
									class="txtDefault meno" />
								</td>
							</tr>
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #B46F3C">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #b46f3c;"
									align="left">&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #b46f3c; text-align: right;">
									中华人民共和国信息产业部制&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						</table>
					</form>
				</div>
			</td>
		</tr>
	</table>
</body>
<!-- -------------------------------- jquery的 浏览器适配      ----------------------------------   -->
<!--[if !IE]> -->
<script
	src="${pageContext.request.contextPath }/assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="${pageContext.request.contextPath }/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
	if ('ontouchstart' in document.documentElement)
		document
				.write("<script src='${pageContext.request.contextPath }/assets/js/jquery.mobile.custom.min.js'>"
						+ "<"+"/script>");
</script>
<script
	src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
		  <script src="${pageContext.request.contextPath }/assets/js/excanvas.min.js"></script>
		<![endif]-->
<script
	src="${pageContext.request.contextPath }/assets/js/jquery-ui.custom.min.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/bootbox.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/jquery.easypiechart.min.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/jquery.gritter.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/spin.js"></script>

<!-- ace scripts -->
<script
	src="${pageContext.request.contextPath }/assets/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<!-- 添加页面提示信息     
FormTipBasic.js和FormTipT.js是data文件
qtipHelper.js是service文件
FormTipController是controller文件
  -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/tip/FormTipBasic.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/tip/FormTipTF.js"></script>
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
<!-- 动态添加Tab -->
<script
	src="${pageContext.request.contextPath }/assets/js/station/dynamicTable/dynamicTabHelp.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/station/dynamicTable/dynamicTabBasic.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/station/dynamicTable/dynamicTabBind.js"></script>

<script type="text/javascript">
	jQuery(function($) {

		$('[data-rel=tooltip]').tooltip();

	});
</script>
</html>