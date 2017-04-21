<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表11-C-蜂窝无线电通信基站技术资料申报表</title>

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=basePath%>assets/font-awesome/4.5.0/css/font-awesome.min.css" />


<!-- text fonts -->
<link rel="stylesheet"
	href="<%=basePath%>assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="<%=basePath%>assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />


<!-- 下国无管表11的样式 -->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>assets/css/station/formC.css" />
<!-- 页面校验的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/Validate.css" />
<!-- 下拉框的样式 -->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>assets/css/station/combobox.css" />

<!-- 临时添加的样式 -->
<style type="text/css">
</style>
</head>
<body
	style="width: 100%; background-color: White; overflow-x: hidden; margin: 0px;">
	<table style="height: 100%; width: 100%;">
		<tr>
			<td align="center">
				<div id="formcontent"
					style="width: 1000px; background-color: White;">
					<form></form>
					<form id="form1" runat="server">
						<table id="formTableC" border="0" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="8"><span id="spanTitle">蜂窝无线电通信基站技术资料申报表</span></td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2"></tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="4">
									&nbsp;&nbsp;国无管表11</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="2"><span id="tdSVN"> 通信业务/系统类型<span
										style="color: #FF0000;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										id="selNET_SVN" class=" checkNET_SVN"
										style="width: 150px; border: 0pt;" /></span></td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="2">C<input id="txtSTAT_TDI" type="text"
									name="stat_tdi" class="txtLine stat_tdi" maxlength="4" />&nbsp;&nbsp;
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
								<td colspan="8" class="tdBorderRight" align="left"><input
									id="txtAPP_Code" name="app_code" type="text"
									class="txtDefault app_code" maxlength="14"
									style="text-align: left; width: 600px" /></td>
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
								<td class="tdBorderLeft Title3">台站名称</td>
								<td colspan="5" class="tdContent"><input id="txtSTAT_Name"
									type="text" name="stat_name"
									class="txtDefault stat_name_noRequired" /></td>
								<td class="tdContent Title3"><label id="lblSTAT_C_Code">基站编号</label>
								</td>
								<td colspan="2" class="tdBorderRight"><input
									id="txtSTAT_C_Code" name="st_c_code" type="text"
									class="txtDefault st_c_code_noRequired" /></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">台站地址<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent" colspan="5"><input id="txtSTAT_ADDR"
									type="text" name="stat_addr" class="txtDefault stat_addr" /></td>
								<td class="tdContent Title3">扇区数量<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight" align="left"><input
									id="txtSTAT_C_Sum" style="width: 120px" type="text"
									name="st_c_sum" class="txtNumber easyui-numberbox  st_c_sum" />
								</td>
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
								</td>
								<td class="tdContent Title3">北纬</td>
								<td class="tdContent Title3"><input id="txtSTAT_LA1"
									type="text" name="stat_la"
									class="txtNumber easyui-numberbox stat_la1" />° <input
									id="txtSTAT_LA2" type="text" name="stat_la1"
									class="txtNumber easyui-numberbox stat_la2" />′ <input
									id="txtSTAT_LA3" type="text" name="stat_la2"
									class="txtNumber easyui-numberbox stat_la3" precision="2" />″
								</td>
								<td class="tdContent Title3">海拔高度<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdBorderRight Title3"><input
									id="txtSTAT_AT" type="text" name="stat_at" style="width: 180px"
									class="txtNumber easyui-numberbox stat_at" precision="1" />m</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeftCorner Title3" align="left">服务半径</td>
								<td colspan="2" class="tdBorderBottom Content3"><input
									id="txtSt_Serv_R" type="text" name="st_serv_r"
									class="txtNumberLong easyui-numberbox St_Serv_R"
									style="width: 220px" precision="3" maxlength="7" />km</td>
								<td class="tdBorderBottom Title3">启用日期<span
									style="color: red;">*</span>
								</td>
								<td colspan="4" class="tdBorderRightCorner Title3" align="left"
									style="text-align: left"><input id="txtSTAT_Date_Start"
									type="text"
									class="txtDefault easyui-datebox combobox-text STAT_Date_Start"
									maxlength="10" style="width: 140px" name="stat_date_start" />
								</td>
							</tr>
						</table>
					</form>
					<table border="0" id="" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;">
						<tr style="height: 18.45pt;">
							<td colspan="4" class="tdTitleLeft Title2">② 扇区数据
								<button id="bt11"
									style="border-bottom-color: #ffbe8c; background-color: #ffbe8c;">+</button>
							</td>
						</tr>
						<tr>
							<td align="center">
								<div class="tabbable" style="width: 1000px">
									<ul class="nav nav-tabs" id="myTab" style="">
										<li class="active"><a data-toggle="tab" href="#tab1">
												Tab1 <i class="red ace-icon fa fa-close bigger-30"></i>
										</a></li>
									</ul>
									<div class="tab-content"
										style="padding: 0px; margin: 0px; border: 0;">
										<div id="tab1" class="tab-pane fade in active">
											<jsp:include page="formC_cd1.jsp">
												<jsp:param value="0" name="tabIndex" />
											</jsp:include>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>

					<%--  <table border="0" id="TablelMemo" cellpadding="0" cellspacing="0" style=" 
                        border: none; width: 1000px; background-color: White;">
                        <tr>
                        	<td align="left"><jsp:include page="formC_cd1.jsp"/> </td>
                        	<td align="center"><jsp:include page="formC_cd1.jsp"/> </td>
                        	<td align="right"><jsp:include page="formC_cd1.jsp"/> </td>
                        </tr>
                    </table>  --%>

					<table border="0" id="TablelAntFeed" cellpadding="0"
						cellspacing="0"
						style="border: none; width: 1000px; background-color: White;">
						<tr style="height: 18.45pt;">
							<td colspan="9" class="tdTitleLeft Title2">④ 天馈线数据</td>
						</tr>
						<tr class="Title3">
							<td class="tdBorderLeft">扇区</td>
							<td class="tdContent">天线类<br>型
							</td>
							<td class="tdContent">天线<br>型号
							</td>
							<td class="tdContent">极化<br>方式
							</td>
							<td class="tdContent">3dB角宽</td>
							<td class="tdContent">天线增益<br>(dBi)
							</td>
							<td class="tdContent">天线生产厂家</td>
							<td class="tdContent">天线<br>高度
							</td>
							<td class="tdBorderRight">馈线系统<br>总损耗
							</td>
						</tr>

						<c:forEach varStatus="s" begin="0" end="2" step="1">
							<tr class="Title3">
								<td class="tdBorderLeft"><input id="" type="text"
									name="antTList[${s.index }].atCcode" class="txtDefault"
									style="width: 98%" /></td>
								<td class="tdContent"><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="antList[${s.index }].antType">
										<option value="">请选择</option>
										<c:forEach var="f" items="${antTypeDic }">
											<option value="${f.cn }">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent"><input id="" type="text"
									name="antList[${s.index }].antModel" class="txtDefault"
									style="width: 98%" /></td>
								<td class="tdContent"><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="antList[${s.index }].antPole">
										<option value="">请选择</option>
										<c:forEach var="f" items="${antPoleDic }">
											<option value="${f.cn }">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent"><input id="" type="text"
									name="antTList[${s.index }].at3dbe" class="txtDefault"
									style="width: 40%" />/ <input id="" type="text"
									name="antTList[${s.index }].at3dbr" class="txtDefault"
									style="width: 40%" /></td>
								<td class="tdContent"><input id="" type="text"
									name="antList[${s.index }].antEgain" class="txtDefault"
									style="width: 40%" />/ <input id="" type="text"
									name="antList[${s.index }].antRgain" class="txtDefault"
									style="width: 40%" /></td>
								<td class="tdContent"><input id="" type="text"
									name="antList[${s.index }].antMenu" class="txtDefault"
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									name="antList[${s.index }].antHight" class="txtDefault"
									style="width: 80%" />m</td>
								<td class="tdBorderRight"><input id="" type="text"
									name="feedList[${s.index }].feedLose" class="txtDefault"
									style="width: 70%" />dB</td>
							</tr>
						</c:forEach>
					</table>

					<form id="formMemo">
						<table border="0" id="TablelMemo" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #EA790B">
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
								<td colspan="8" style="font-size: 7.5pt; color: #EA790B">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #EA790B">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #EA790B; text-align: right;">
									中华人民共和国信息产业部制&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						</table>
					</form>
					<!--用于显示填表说明与索引关系-->
					<!-- <iframe id="showother" name="showother" frameborder="0" style="border: 0px; height: 0;
                        width: 100%; padding: 0px; margin: 0px;"></iframe> -->
				</div>
			</td>
		</tr>
	</table>
	<div id="excelOutput" style="display: none"></div>
</body>
<!--  basic scripts -->

<!--[if !IE]> -->
<script src="<%=basePath%>assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="<%=basePath%>assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->

<script type="text/javascript">
	if('ontouchstart' in document.documentElement) document.write("<script src='<%=basePath%>
	assets/js/jquery.mobile.custom.min.js'>"
						+ "<"+"/script>");
</script>
<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
		  <script src="<%=basePath%>assets/js/excanvas.min.js"></script>
		<![endif]-->
<script src="<%=basePath%>assets/js/jquery-ui.custom.min.js"></script>
<script src="<%=basePath%>assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="<%=basePath%>assets/js/bootbox.js"></script>
<script src="<%=basePath%>assets/js/jquery.easypiechart.min.js"></script>
<script src="<%=basePath%>assets/js/jquery.gritter.min.js"></script>
<script src="<%=basePath%>assets/js/spin.js"></script>

<!-- ace scripts -->
<script src="<%=basePath%>assets/js/ace-elements.min.js"></script>
<script src="<%=basePath%>assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<!-- 添加页面提示信息     
FormTipBasic.js和FormTipT.js是data文件
qtipHelper.js是service文件
FormTipController是controller文件
  -->
<script type="text/javascript"
	src="<%=basePath%>assets/js/station/tip/FormTipBasic.js"></script>
<script type="text/javascript"
	src="<%=basePath%>assets/js/station/tip/FormTipC.js"></script>
<script type="text/javascript"
	src="<%=basePath%>assets/js/station/tip/qtipHelper.js"></script>
<script type="text/javascript"
	src="<%=basePath%>assets/js/station/tip/FormTipController.js"></script>
<script type="text/javascript"
	src="<%=basePath%>assets/js/station/tip/bindTip.js"></script>
<!-- 日期控件 -->
<script language="javascript" type="text/javascript"
	src="<%=basePath%>assets/js/My97DatePicker/WdatePicker.js"></script>
<!-- 禁止退格键 -->



<!-- 动态添加Tab -->
<script
	src="<%=basePath%>assets/js/station/dynamicTable/dynamicTabHelp.js"></script>
<script
	src="<%=basePath%>assets/js/station/dynamicTable/dynamicTabBasic.js"></script>
<script
	src="<%=basePath%>assets/js/station/dynamicTable/dynamicTabBind.js"></script>

<script type="text/javascript">
	jQuery(function($) {

		$('[data-rel=tooltip]').tooltip();

	});
</script>

</html>