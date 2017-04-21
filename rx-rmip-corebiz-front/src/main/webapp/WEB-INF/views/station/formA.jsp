<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表9-A-航空器电台技术资料申报表</title>
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
<!-- 下国无管表9的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formA.css" />
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
	<table style="height: 100%; width: 100%;" cellpadding="0"
		cellspacing="0">
		<tr>
			<td align="center">
				<div id="formcontent"
					style="width: 1000px; padding: 0px; background-color: White;">
					<form></form>
					<form id="form1" runat="server">
						<table border="0" id="formTableC" cellpadding="0" cellspacing="0"
							style="margin-left: 0pt; border: none; width: 1000px; background-color: White;">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="8"><span id="spanTitle">航空器电台技术资料申报表</span></td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="4">
									&nbsp;&nbsp;国无管表9</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="4">A<input id="txtSTAT_TDI" name="stat_tdi"
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
								<td class="tdContent Title3">国籍和注册号码<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3" colspan="3"
									style="text-align: left"><input id="txtST_A_NRM"
									name="stationT.stANrm" type="text" class="txtDefault st_a_nrm" />
								</td>
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
								<td class="tdBorderLeft Title3">航空器型号<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdContent"><input id="txtST_A_Model"
									name="stationT.stAModel" type="text"
									class="txtDefault st_a_model" maxlength="4" /></td>
								<td class="tdContent Title3">航空器类型<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent Title3" style="text-align: left"><select
									id="selSys_Code" class="txtDefault combobox-text"
									style="width: 98%" name="stationT.stAType">
										<option value="">--请选择--</option>
										<c:forEach items="${stATypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdBorderRight Title3" colspan="2"
									style="text-align: left"><input id="Radio1" type="radio"
									name="stationT.stACall" value="0" class="required" /> <label
									for="Radio1"> 选呼</label>&nbsp; <input id="Radio2" type="radio"
									name="stationT.stACall" value="1" class="required" /> <label
									for="Radio2"> 报呼</label></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">呼号或其他标识<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdContent"><input
									id="txtST_A_Call_OI" name="stationT.stACallOi" type="text"
									class="txtDefault st_a_call_oi" /></td>
								<td class="tdContent Title3">航空器识别码<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent Title3" style="text-align: left"><input
									id="txtST_A_SGN" name="stationT.stASgn" type="text"
									class="txtDefault st_a_sgn" /></td>
								<td class="tdContent Title3">最大起飞重量</td>
								<td class="tdBorderRight Title3" style="text-align: left">
									<input id="txtST_A_ST" name="stationT.stASt" type="text"
									class="txtDefault easyui-numberbox st_a_st" precision="1" />t
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">是否按地标飞行<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdContent Title3" colspan="2"
									style="text-align: left"><input id="Radio5" type="radio"
									name="stationT.stAPiloting" value="1" class="required" /> <label
									for="Radio5"> 是</label> <input id="Radio6" type="radio"
									name="stationT.stAPiloting" value="0" class="required" /> <label
									for="Radio6"> 否</label></td>
								<td class="tdContent Title3">启用日期<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight Title3" colspan="3"
									style="text-align: left"><input id="txtSTAT_Date_Start"
									name="station.statDateStart" type="text"
									class="txtDefault easyui-datebox combobox-text STAT_Date_Start"
									maxlength="10" style="width: 140px"
									onClick="WdatePicker({dateFmt:'yyyy/M/d'})" /></td>
							</tr>
						</table>
					</form>
					<table border="0" cellpadding="0" cellspacing="0"
						style="margin: 0px 0px 0px 0px; width: 1000px;">
						<tr style="height: 18.45pt;">
							<td colspan="12" class="tdTitleLeft Title2">② 发射机数据</td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td class="tdBorderLeft">设备<br>名称
							</td>
							<td class="tdContent">型号核<br>准代码
							</td>
							<td class="tdContent">设备<br>型号
							</td>
							<td class="tdContent">设备出厂号<br>(件号)
							</td>
							<td class="tdContent">发射<br>标识
							</td>
							<td class="tdContent"><input id="radio_freq_band_unit_type0"
								type="radio" name="freq.freqType" class="required" value="0" />
								<label>频率</label><br> <input
								id="radio_freq_band_unit_type1" type="radio"
								name="freq.freqType" class="required" value="1" /> <label>频带</label><br>
								(MHz)</td>
							<td class="tdContent">频率<br>间隔<br>(kHz)
							</td>
							<td class="tdContent">发射<br>功率<br>(dBW)
							</td>
							<td class="tdContent">电台安<br>装位置
							</td>
							<td class="tdContent">天线<br>类型
							</td>
							<td class="tdContent">天线安<br>装位置
							</td>
							<td class="tdBorderRight">设备<br>数量
							</td>
						</tr>

						<c:forEach varStatus="s" begin="0" end="1" step="1">
							<tr class="Title3" style="height: 18.45pt;">
								<td rowspan="2" class="tdBorderLeft"><input id=""
									type="text" class="txtDefault" name="equTList[0].etEquName"
									value="" style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equAuth" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equModel" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equCode" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><select id="selSys_Code"
									class="txtDefault combobox-text" style="width: 98%"
									name="equTList[0].etEquEsgn">
										<option value="">--请选择--</option>
										<c:forEach items="${etEquEsgnDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="" value="" style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquFntval" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equPow" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquEpos" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="equTList[0].etEquAtype">
										<option value="">请选择</option>
										<c:forEach items="${etEquAtypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquApos" value=""
									style="width: 98%" /></td>
								<td rowspan="2" class="tdBorderRight"><input id=""
									type="text" class="txtDefault" name="equTList[0].etEquSum"
									value="" style="width: 98%" /></td>
							</tr>
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equAuth" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equModel" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equCode" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><select id="selSys_Code"
									class="txtDefault combobox-text" style="width: 98%"
									name="equTList[0].etEquEsgn">
										<option value="">--请选择--</option>
										<c:forEach items="${etEquEsgnDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="" value="" style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquFntval" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equPow" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquEpos" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="equTList[0].etEquAtype">
										<option value="">请选择</option>
										<c:forEach items="${etEquAtypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquApos" value=""
									style="width: 98%" /></td>
							</tr>
						</c:forEach>

						<tr class="Title3" style="height: 18.45pt;">
							<td rowspan="4" class="tdBorderLeft"><input id=""
								type="text" class="txtDefault" name="equTList[0].etEquName"
								value="" style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equAuth" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equModel" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equCode" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><select id="selSys_Code"
								class="txtDefault combobox-text" style="width: 98%"
								name="equTList[0].etEquEsgn">
									<option value="">--请选择--</option>
									<c:forEach items="${etEquEsgnDic}" var="f">
										<option value="${f.cn}">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="" value="" style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquFntval" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equPow" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquEpos" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><select id=""
								class="txtDefault combobox-text" style="width: 98%"
								name="equTList[0].etEquAtype">
									<option value="">请选择</option>
									<c:forEach items="${etEquAtypeDic}" var="f">
										<option value="${f.cn}">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquApos" value=""
								style="width: 98%" /></td>
							<td rowspan="4" class="tdBorderRight"><input id=""
								type="text" class="txtDefault" name="equTList[0].etEquSum"
								value="" style="width: 98%" /></td>
						</tr>
						<c:forEach varStatus="s" begin="0" end="2" step="1">
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equAuth" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equModel" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equCode" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><select id="selSys_Code"
									class="txtDefault combobox-text" style="width: 98%"
									name="equTList[0].etEquEsgn">
										<option value="">--请选择--</option>
										<c:forEach items="${etEquEsgnDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="" value="" style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquFntval" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equPow" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquEpos" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><select id=""
									class="txtDefault combobox-text" style="width: 98%"
									name="equTList[0].etEquAtype">
										<option value="">请选择</option>
										<c:forEach items="${etEquAtypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquApos" value=""
									style="width: 98%" /></td>
							</tr>
						</c:forEach>

						<tr class="Title3" style="height: 18.45pt;">
							<td rowspan="2" class="tdBorderLeftCorner">航空器<br>地球站
							</td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equAuth" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equModel" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equCode" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><select id="selSys_Code"
								class="txtDefault combobox-text" style="width: 98%"
								name="equTList[0].etEquEsgn">
									<option value="">--请选择--</option>
									<c:forEach items="${etEquEsgnDic}" var="f">
										<option value="${f.cn}">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="" value="" style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquFntval" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equPow" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquEpos" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><select id=""
								class="txtDefault combobox-text" style="width: 98%"
								name="equTList[0].etEquAtype">
									<option value="">请选择</option>
									<c:forEach items="${etEquAtypeDic}" var="f">
										<option value="${f.cn}">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquApos" value=""
								style="width: 98%" /></td>
							<td rowspan="2" class="tdBorderRightCorner"><input id=""
								type="text" class="txtDefault" name="equTList[0].etEquSum"
								value="" style="width: 98%" /></td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td class="tdBorderBottom"><input id="" type="text"
								class="txtDefault" name="equList[0].equAuth" value=""
								style="width: 98%" /></td>
							<td class="tdBorderBottom"><input id="" type="text"
								class="txtDefault" name="equList[0].equModel" value=""
								style="width: 98%" /></td>
							<td class="tdBorderBottom"><input id="" type="text"
								class="txtDefault" name="equList[0].equCode" value=""
								style="width: 98%" /></td>
							<td class="tdBorderBottom"><select id="selSys_Code"
								class="txtDefault combobox-text" style="width: 98%"
								name="equTList[0].etEquEsgn">
									<option value="">--请选择--</option>
									<c:forEach items="${etEquEsgnDic}" var="f">
										<option value="${f.cn}">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
							<td class="tdBorderBottom"><input id="" type="text"
								class="txtDefault" name="" value="" style="width: 98%" /></td>
							<td class="tdBorderBottom"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquFntval" value=""
								style="width: 98%" /></td>
							<td class="tdBorderBottom"><input id="" type="text"
								class="txtDefault" name="equList[0].equPow" value=""
								style="width: 98%" /></td>
							<td class="tdBorderBottom"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquEpos" value=""
								style="width: 98%" /></td>
							<td class="tdBorderBottom"><select id=""
								class="txtDefault combobox-text" style="width: 98%"
								name="equTList[0].etEquAtype">
									<option value="">请选择</option>
									<c:forEach items="${etEquAtypeDic}" var="f">
										<option value="${f.cn}">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
							<td class="tdBorderBottom"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquApos" value=""
								style="width: 98%" /></td>
						</tr>
					</table>
					<table border="0" cellpadding="0" cellspacing="0"
						style="margin: 0px 0px 0px 0px; width: 1000px;">
						<tr style="height: 18.45pt;">
							<td colspan="8" class="tdTitleLeft Title2" id="td_tip3">③
								营救器发射机数据</td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td rowspan="3" class="tdBorderLeft ">营救器<br>发射机
							</td>
							<td class="tdContent ">型号核<br>准代码
							</td>
							<td class="tdContent ">设备<br>型号
							</td>
							<td class="tdContent ">工作频率<br>(MHz)
							</td>
							<td class="tdContent ">发射功率</td>
							<td class="tdContent ">电池有效期</td>
							<td class="tdContent ">电台安装位置</td>
							<td class="tdBorderRight ">设备<br>数量
							</td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equAuth" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equModel" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="" value="" style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equPow" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquEuse" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquEpos" value=""
								style="width: 98%" /></td>
							<td rowspan="2" class="tdBorderRight"><input id=""
								type="text" class="txtDefault" name="equTList[0].etEquSum"
								value="" style="width: 98%" /></td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equAuth" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equModel" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="" value="" style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equList[0].equPow" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquEuse" value=""
								style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault" name="equTList[0].etEquEpos" value=""
								style="width: 98%" /></td>
						</tr>
					</table>
					<table border="0" cellpadding="0" cellspacing="0"
						style="margin: 0px 0px 0px 0px; width: 1000px;">
						<tr style="height: 18.45pt;">
							<td class="tdTitleTop Title2" colspan="5" id="td_tip4">④
								其他无线电设备数据</td>
						</tr>
						<tr class="Title3" style="height: 18.45pt;">
							<td class="tdBorderLeft">设备名称</td>
							<td class="tdContent">设备型号</td>
							<td class="tdContent">型号核准代码</td>
							<td class="tdContent"><input id="radio_freq_band_unit_type0"
								type="radio" name="freq.freqType" class="required" value="0" />
								<label>频率</label> <input id="radio_freq_band_unit_type1"
								type="radio" name="freq.freqType" class="required" value="1" />
								<label>频带</label><br> (MHz)</td>
							<td class="tdBorderRight">设备数量</td>
						</tr>

						<c:forEach varStatus="s" begin="0" end="3" step="1">
							<tr class="Title3" style="height: 18.45pt;">
								<td class="tdBorderLeft"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquName" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equModel" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="equList[0].equAuth" value=""
									style="width: 98%" /></td>
								<td class="tdContent"><input id="" type="text"
									class="txtDefault" name="" value="" style="width: 40%" />至 <input
									id="" type="text" class="txtDefault" name="" value=""
									style="width: 40%" /></td>
								<td class="tdBorderRight"><input id="" type="text"
									class="txtDefault" name="equTList[0].etEquSum" value=""
									style="width: 98%" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</td>
		</tr>
		<tr>
			<td align="center">
				<div id="formcontent"
					style="width: 1000px; padding: 0px; background-color: White;">
					<table border="0" id="TablelMemo" cellpadding="0" cellspacing="0"
						style="border: none; width: 1000px; background-color: White;">
						<tr>
							<td colspan="8" style="font-size: 7.5pt; color: #B46F3C">
								&nbsp;</td>
						</tr>
						<tr style="height: 22.7pt">
							<td class="bottomTableLeft Title3" style="width: 150px">
								备&nbsp;注</td>
							<td colspan="7" class="bottomTableRight"><input id="txtMEMO"
								name="station.memo" style="width: 750px" type="text"
								class="txtDefault meno" /></td>
						</tr>
						<tr>
							<td colspan="8" style="font-size: 7.5pt; color: #385DFC">
								&nbsp;</td>
						</tr>
						<tr>
							<td colspan="4" style="font-size: 7.5pt; color: #385DFC">
								&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
							<td colspan="4"
								style="font-size: 7.5pt; color: #385DFC; text-align: right;">
								中华人民共和国信息产业部制&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>