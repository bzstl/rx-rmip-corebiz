<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表2-T-无线电台（站）设置申请表报表</title>

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
	src="${pageContext.request.contextPath }/assets/js/station/tip/FormTipT.js"></script>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/station/backspaceDisable.js"></script>
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

<!-- 下拉框的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/combobox.css" />
<!-- 下国无管表2的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formT.css" />
<!-- 页面校验的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/Validate.css" />




<!-- --------------------------------  临时添加的js      ----------------------------------   -->


<script type="text/javascript">
	$(function() {

		/* 	 当该页面作为iframe嵌套在其他页面中时，
		执行父页面的方法：把iframe大小尺寸赋给容纳它的div  */
		/* if(parent.iframeAdapte!=null){
			parent.iframeAdapte();
		} */
		//对表单form1进行校验
		var validator = $("#form1").validate();
	});
</script>


<!-- --------------------------------  临时添加的样式     ----------------------------------   -->
<style type="text/css">
</style>

</head>
<body
	style="width: 100%; background-color: White; margin: 0px; overflow-x: hidden">
	<table style="height: 100%; width: 100%;" cellpadding="0"
		cellspacing="0">
		<tr>
			<td align="center">
				<div id="formcontent"
					style="width: 1000px; background-color: White;">
					<table border="0" cellpadding="0" cellspacing="0"
						style="border-style: none; border-color: inherit; border-width: medium; background-color: White;"
						id="formTableT" class="style1">
						<tr>
							<td style="border: none" align="center" class="Title1"
								colspan="7"><span id="spanTitle">无线电台（站）设置申请表</span></td>
						</tr>
						<tr style="height: 5pt;">
							<td colspan="7"></td>
						</tr>
					</table>
					<table border="0" cellpadding="0" cellspacing="0"
						style="border-style: none; border-color: inherit; border-width: medium; background-color: White;"
						id="trSetp2" class="style1">
						<tr>
							<td colspan="7">
								<form id="form1">
									<table border="0" cellpadding="0" cellspacing="0"
										style="border-style: none; border-color: inherit; border-width: medium; background-color: White;"
										id="Table1" class="style1">
										<tr style="height: 18.45pt;" class="Title2">
											<td style="border: none; text-align: left;" colspan="4">
												&nbsp;&nbsp;国无管表2</td>
											<td style="border: none; text-align: right;" class="Title3"
												colspan="3">T<input id="txtAPP_Code1"
												name="app_code1_aa" style="width: 40px" type="text"
												class="txtLine  app_code_pa1" maxlength="4" />- <input
												id="txtAPP_Code2" name="app_code2_aa" style="width: 40px"
												type="text" class="txtLine  stat_tdi" maxlength="4" />- <input
												id="txtAPP_Code3" name="app_code3_aa" style="width: 40px"
												type="text" class="txtLine  stat_tdi" maxlength="4" />
											</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdTitleTop Title2" colspan="6"
												style="border-right: 0">① 申请信息</td>
											<td class="tdTitleTop Title2"
												style="text-align: right; border-left: 0"><input
												id="txtApplyStauts" type="text" style="width: 50px"
												class="txtApplyStauts" /></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3" rowspan="5"
												style="width: 80px">设台单位</td>
											<td class="tdContent Title3" style="width: 80px">单位名称<span
												style="color: #FF0000;">*</span>
											</td>
											<td colspan="5" class="tdBorderRight Title3Left" align="left">
												<table border="0" cellpadding="0" cellspacing="0"
													style="border-style: none; border-color: inherit; border-width: medium; background-color: White;">
													<tr style="height: 18.45pt;">
														<td><input id="selOrgName1" type="text"
															maxlength="80" name="orgApp.orgName"
															class="txtDefault stat_addr" style="width: 510px" /></td>
														<td align="right" id="trOrg1" style="display: none">
															<!-- <a href="javascript:void(0)" class="easyui-linkbutton" id="selOrg1"
                                                            title="选择设台申	请单位" plain="true">选择</a><a href="javascript:void(0)" class="easyui-linkbutton"
                                                                iconcls="icon-clear" title="清除设台申请单位数据" id="clsOrg1" plain="true">清除</a> -->
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdContent Title3">组织机构代码<span
												style="color: #FF0000;">*</span>
											</td>
											<td colspan="3" class="tdContent Title3Left"><input
												id="txtORG_Code" type="text" name="ororgApp.orgCode"
												maxlength="10" class="txtDefault org_code" /></td>
											<td class="tdContent Title3">系统代码<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdBorderRight Title3Left"><select
												id="selSys_Code" class="txtDefault combobox-text"
												style="width: 98%" name="orgApp.orgSysCode">
													<option value="">--请选择--</option>
													<c:forEach items="${orgSysCodeDic}" var="f">
														<option value="${f.cn}">${f.codeChiName }</option>
													</c:forEach>
											</select></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdContent Title3">通信地址<span
												style="color: #FF0000;">*</span>
											</td>
											<td colspan="3" class="tdContent Title3Left"><input
												id="txtORG_ADDR" type="text" name="orgApp.orgAddr"
												class="txtDefault stat_addr" /></td>
											<td class="tdContent Title3">邮政编码<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdBorderRight Title3Left"><input
												id="txtORG_POST" name="orgApp.orgPost" type="text"
												maxlength="6" class="txtDefault  org_post" /></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdContent Title3">联系人<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdContent Title3Left" style="width: 193px"><input
												id="ORG_Link_Person" type="text" name="orgApp.orgLinkPerson"
												class="txtDefault org_link_person" style="width: 50%" /></td>
											<td class="tdContent Title3" style="width: 133px">联系电话<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdContent Title3Left" style="width: 189px"><input
												id="txtORG_Phone" type="text" name="orgApp.orgPhone"
												class="txtDefault app_pa_org_phone required" /></td>
											<td class="tdContent Title3">传真号码</td>
											<td class="tdBorderRight Title3Left"><input
												id="txtORG_FAX" name="orgApp.orgFax" type="text"
												class="txtDefault org_fax" /></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdContent Title3">手机号码</td>
											<td colspan="2" class="tdContent Title3Left"><input
												id="txtORG_MOB_Phone" type="text" name="orgApp.orgMobPhone"
												maxlength="12" class="txtDefault org_mob_phone" /></td>
											<td class="tdContent Title3">电子信箱</td>
											<td colspan="2" class="tdBorderRight Title3Left"><input
												id="txtORG_Mail" name="orgApp.orgMail" type="text"
												maxlength="40" class="txtDefault org_mail" /></td>
										</tr>
									</table>

									<!--  <form id="formNet1"> -->
									<table border="0" cellpadding="0" cellspacing="0"
										style="border-style: none; border-color: inherit; border-width: medium; background-color: White;"
										id="TableNet" class="style1">
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft1 Title3" colspan="2">无线电系统/网络名称<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdBorderRight Title3Left" colspan="5">
												<table border="0" cellpadding="0" cellspacing="0"
													style="border-style: none; border-color: inherit; border-width: medium; background-color: White;">
													<tr style="height: 18.45pt;">
														<td><input id="selNET_Name" type="text"
															name="net.netName" class="txtDefault stat_addr"
															style="width: 750px" /></td>
														<td align="right" id="trNet" style="display: none">
															<!--  <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-clear" id="clsNet"
                                                            title="清除无线电系统/网络名称数据" plain="true">清除</a> -->
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft1 Title3" colspan="2"
												style="width: 176px" id="tdNetBand">信道带宽/波道间隔</td>
											<td class="tdContent Title3Left" style="width: 170px"><input
												id="txtNET_Band" name="net.netBand" type="text"
												class="txtDefault easyui-numberbox  freq_e_band" /></td>
											<td class="tdContent Title3" style="width: 125px"><input
												id="radio_freqUnit1" type="radio" name="radio_band_Unit"
												value="0" /> <label for="radio_freqUnit1"> kHz</label> <input
												id="radio_freqUnit2" type="radio" name="radio_band_Unit"
												value="1" /> <label for="radio_freqUnit2"> MHz</label></td>
											<td class="tdContent Title3" style="width: 174px">
												通信业务/系统类型<span style="color: #FF0000;">*</span>
											</td>
											<td class="tdBorderRight Title3Left" colspan="2"><select
												id="selNET_SVN" class="txtDefault combobox-text"
												style="width: 275px" name="net.netSvn">
													<option value="">--请选择--</option>
													<c:forEach items="${netSvnDic}" var="f">
														<option value="${f.cn}">${f.codeChiName }</option>
													</c:forEach>
											</select></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3" colspan="2" id="tdNetBand2">
												业务性质<span style="color: #FF0000;">*</span>
											</td>
											<td class="tdContent Title3" colspan="2"><input
												id="radioNetsp1" type="radio" name="net.netSp" value="CO"
												class="required" /> <label for="radioNetsp1"> 专用</label>&nbsp;
												<input id="radioNetsp2" type="radio" name="net.netSp"
												value="CP" class="required" /> <label for="radioNetsp2">
													公众</label> <input id="radioNetsp3" type="radio" name="net.netSp"
												value="QT" class="required" /> <label for="radioNetsp3">
													其它</label></td>
											<td class="tdContent Title3">技术体制</td>
											<td class="tdBorderRight Title3Left" colspan="2"><input
												id="selNET_TS" class="txtDefault checkNET_TS"
												style="width: 275px" /></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft1 Title3" colspan="2">使用范围<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdBorderRight Title3" colspan="5"><input
												id="RadioNET_Area1" type="radio" name="net.netArea"
												value="1" class="required" /> <label for="RadioNET_Area1">
													国际/跨边境（界）</label>&nbsp; <input id="RadioNET_Area2" type="radio"
												name="net.netArea" value="2" class="required" /> <label
												for="RadioNET_Area2"> 全国</label> <input id="RadioNET_Area3"
												type="radio" name="net.netArea" value="3" class="required" />
												<label for="RadioNET_Area3"> 跨省</label>&nbsp; <input
												id="RadioNET_Area4" type="radio" name="net.netArea"
												value="4" class="required" /> <label for="RadioNET_Area4">
													省内</label> <input id="RadioNET_Area5" type="radio"
												name="net.netArea" value="5" class="required" /> <label
												for="RadioNET_Area5"> 地市</label>&nbsp; <input
												id="RadioNET_Area6" type="radio" name="net.netArea"
												value="6" class="required" /> <label for="RadioNET_Area6">
													县级</label> <input id="RadioNET_Area7" type="radio"
												name="net.netArea" value="7" class="required" /> <label
												for="RadioNET_Area7"> 其他</label></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft1 Title3" colspan="2">网络用途</td>
											<td class="tdBorderRight Title3Left" colspan="5"><input
												id="txtNET_Use" type="text" name="net.netUse"
												class="txtDefault net_use" /></td>
										</tr>
										<tbody id="appfilelistTbody">
											<tr style="height: 18.45pt;">
												<td rowspan="3" colspan="2"
													class="tdBorderLeft1 Title3 appfilelistTitle"
													style="width: 19.1%">频率使用许可证号<br /> 或批准文号<span
													style="color: #FF0000;">*</span><br> <span
													id="appfilelistBt" style="cursor: pointer">(+)</span>
												</td>
												<td class="tdBorderRight Title3Left" colspan="5"><input
													id="txtAPP_File_NO1" type="text"
													name="appfilelistList[0].appFileNo"
													class="txtDefault app_file_no_required" /></td>
											</tr>
											<c:forEach varStatus="s" begin="0" end="1">
												<tr style="height: 18.45pt;">
													<td class="tdBorderRight Title3Left" colspan="5"><input
														id="txtAPP_File_NO${s.count+1 }" type="text"
														name="appfilelistList[${s.count}].appFileNo"
														class="txtDefault app_file_no" /></td>
												</tr>
											</c:forEach>
										</tbody>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3" id="tdStartDate" colspan="2">
												批准频率使用期限<span style="color: red;">*</span>
											</td>
											<td colspan="5" class="tdBorderRight Title3Left"><input
												id="date_APP_FTLB" name="apply.appFtlb"
												class="txtDefault  Wdate combobox-text " maxlength="10"
												style="width: 110px" type="text"
												onClick="WdatePicker({dateFmt:'yyyy/M/d'})" />&nbsp;&nbsp;至&nbsp;&nbsp;
												<input id="date_APP_FTLE" name="apply.appFtle"
												class="txtDefault combobox-text Wdate" maxlength="10"
												style="width: 120px" type="text"
												onClick="WdatePicker({dateFmt:'yyyy/M/d'})" /></td>
										</tr>
									</table>
									<!-- </form> -->

									<!--  <form id="formFreqs"> -->
									<table id="appFreq1Table" border="0" cellpadding="0"
										cellspacing="0"
										style="border-style: none; border-color: inherit; border-width: medium; background-color: White;"
										class="style1">
										<tbody id="appFreq1Tbody">
											<tr style="height: 18.45pt;">
												<td class="tdBorderLeft Title3 appFreq1Title" rowspan="7">
													<input id="radio_FREQ_Type0" name="appfreq.appFreqType"
													value="1" checked="checked" type="radio"> <label
													for="radio_FREQ_Type0"> 使用信（波）道<br>的中心频率
												</label><br>
												<span id="appFreq1Bt" style="cursor: pointer">(+)</span>
												</td>
												<td class="tdContent Title3"><input class="txtDefault"
													type="text" name="appfreqList[0].appFreqLc"
													style="width: 47%" /><span>/</span> <input
													class="txtDefault" type="text"
													name="appfreqList[0].appFreqUc" style="width: 47%" /></td>
												<td class="tdContent Title3 appFreq1Title" rowspan="7"
													style="width: 10%"><input
													id="radio_centerFreqUnitRight0"
													name="radio_centerFreqUnitRight" value="0" type="radio"><label
													for="radio_centerFreqUnitRight0">kHz</label><br> <input
													id="radio_centerFreqUnitRight1"
													name="radio_centerFreqUnitRight" value="1" type="radio"><label
													for="radio_centerFreqUnitRight1">MHz</label><br> <input
													id="radio_centerFreqUnitRight2"
													name="radio_centerFreqUnitRight" value="2" type="radio"><label
													for="radio_centerFreqUnitRight2">GHz</label><br></td>
												<td class="tdContent Title3" colspan="2"><input
													class="txtDefault" type="text"
													name="appfreqList[1].appFreqLc" style="width: 47%" /><span>/</span>
													<input class="txtDefault" type="text"
													name="appfreqList[1].appFreqUc" style="width: 47%" /></td>
												<td class="tdBorderRight Title3 appFreq1Title" rowspan="7"
													style="width: 10%"><input
													id="radio_centerFreqUnitLeft0"
													name="radio_centerFreqUnitLeft" value="0" type="radio"><label
													for="radio_centerFreqUnitLeft0">kHz</label><br> <input
													id="radio_centerFreqUnitLeft1"
													name="radio_centerFreqUnitLeft" value="1" type="radio"><label
													for="radio_centerFreqUnitLeft1">MHz</label><br> <input
													id="radio_centerFreqUnitLeft2"
													name="radio_centerFreqUnitLeft" value="2" type="radio"><label
													for="radio_centerFreqUnitLeft2">GHz</label><br></td>
											</tr>
											<c:forEach varStatus="s" begin="0" end="5">
												<tr style="height: 18.45pt;">
													<td class="tdContent Title3"><input
														class="txtDefault" type="text"
														name="appfreqList[${s.count*2}].appFreqLc"
														style="width: 47%" /><span>/</span> <input
														class="txtDefault" type="text"
														name="appfreqList[${s.count*2}].appFreqUc"
														style="width: 47%" /></td>
													<td class="tdContent Title3" colspan="2"><input
														class="txtDefault" type="text"
														name="appfreqList[${s.count*2+1}].appFreqLc"
														style="width: 47%" /><span>/</span> <input
														class="txtDefault" type="text"
														name="appfreqList[${s.count*2+1}].appFreqUc"
														style="width: 47%" /></td>
												</tr>
											</c:forEach>
										</tbody>
										<tbody id="appFreq2Tbody">
											<tr style="height: 18.45pt;">
												<td class="tdBorderLeft Title3 appFreq2Title" rowspan="6">
													<input id="radio_FREQ_Type1" name="appfreq.appFreqType"
													value="0" type="radio"> <label
													for="radio_FREQ_Type1"> 使用频率范围</label><br>
												<span id="appFreq2Bt" style="cursor: pointer">(+)</span>
												</td>
												<td class="tdContent Title3" colspan="3"><input
													class="txtDefault" type="text"
													name="appfreqList[0].appFreqLfb" style="width: 22%" /><span>/</span>
													<input class="txtDefault" type="text"
													name="appfreqList[0].appFreqUfb" style="width: 22%" /> 至 <input
													class="txtDefault" type="text"
													name="appfreqList[0].appFreqLfe" style="width: 22%" /><span>/</span>
													<input class="txtDefault" type="text"
													name="appfreqList[0].appFreqUfe" style="width: 22%" /></td>
												<td class="tdBorderRight Title3" colspan="2"><input
													id="radio_rangeFreqUnit0_0" name="radio_rangeFreqUnit[0]"
													value="0" type="radio" /><label
													for="radio_rangeFreqUnit0_0">kHz</label> <input
													id="radio_rangeFreqUnit1_0" name="radio_rangeFreqUnit[0]"
													value="1" type="radio" /><label
													for="radio_rangeFreqUnit1_0">MHz</label> <input
													id="radio_rangeFreqUnit2_0" name="radio_rangeFreqUnit[0]"
													value="2" type="radio" /><label
													for="radio_rangeFreqUnit2_0">GHz</label></td>
											</tr>
											<c:forEach varStatus="s" begin="0" end="4">
												<tr style="height: 18.45pt;">
													<td class="tdContent Title3" colspan="3"><input
														class="txtDefault" type="text"
														name="appfreqList[${s.count}].appFreqLfb"
														style="width: 22%" /><span>/</span> <input
														class="txtDefault" type="text"
														name="appfreqList[${s.count}].appFreqUfb"
														style="width: 22%" /> 至 <input class="txtDefault"
														type="text" name="appfreqList[${s.count}].appFreqLfe"
														style="width: 22%" /><span>/</span> <input
														class="txtDefault" type="text"
														name="appfreqList[${s.count}].appFreqUfe"
														style="width: 22%" /></td>
													<td class="tdBorderRight Title3" colspan="2"><input
														id="radio_rangeFreqUnit0_${s.count}"
														name="radio_rangeFreqUnit[${s.count}]" value="0"
														type="radio" /><label
														for="radio_rangeFreqUnit0_${s.count}">kHz</label> <input
														id="radio_rangeFreqUnit1_${s.count}"
														name="radio_rangeFreqUnit[${s.count}]" value="1"
														type="radio" /><label
														for="radio_rangeFreqUnit1_${s.count}">MHz</label> <input
														id="radio_rangeFreqUnit2_${s.count}"
														name="radio_rangeFreqUnit[${s.count}]" value="2"
														type="radio" /><label
														for="radio_rangeFreqUnit2_${s.count}">GHz</label></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<!-- </form> -->
									<table border="0" cellpadding="0" cellspacing="0"
										style="border-style: none; border-color: inherit; border-width: medium; background-color: White;"
										class="style1">
										<tr>
											<td colspan="7">
												<!-- <form id="form4"> -->
												<table border="0" cellpadding="0" cellspacing="0"
													style="border: none; width: 100%; background-color: White;"
													id="Table3">
													<tr style="height: 18.45pt;">
														<td class="tdBorderLeftCorner Title3" rowspan="7"
															style="width: 105px">
															<p>缴费单位</p>
														</td>
														<td class="tdContent Title3">单位名称<span
															style="color: #FF0000;">*</span>
														</td>
														<td colspan="5" class="tdBorderRight Title3Left">
															<table border="0" cellpadding="0" cellspacing="0"
																style="border-style: none; border-color: inherit; border-width: medium; background-color: White; width: 700px">
																<tr style="height: 18.45pt;">
																	<td><input id="selOrgName2" type="text"
																		name="orgFee.orgName" class="txtDefault stat_addr"
																		style="width: 600px;" /></td>
																	<td align="right" id="trOrg2"
																		style="display: none; width: 100px;">
																		<!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-search" id="selOrg2"
                                                                        title="选择缴费设台申请单位" plain="true">选择</a><a href="javascript:void(0)" class="easyui-linkbutton"
                                                                            iconcls="icon-clear" title="清除缴费设台申请单位数据" id="clsOrg2" plain="true">清除</a> -->
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr style="height: 18.45pt;">
														<td class="tdContent Title3">组织机构代码<span
															style="color: #FF0000;">*</span>
														</td>
														<td colspan="3" class="tdContent Title3Left"><input
															id="txtORG_Code2" type="text" name="orgFee.orgCode"
															maxlength="10" class="txtDefault org_code" /></td>
														<td class="tdContent Title3">邮政编码<span
															style="color: #FF0000;">*</span>
														</td>
														<td class="tdBorderRight Title3Left"><input
															id="txtORG_POST2" name="orgFee.orgPost" type="text"
															maxlength="6" class="txtDefault org_post" /></td>
													</tr>
													<tr style="height: 18.45pt;">
														<td class="tdContent Title3">通信地址<span
															style="color: #FF0000;">*</span>
														</td>
														<td colspan="5" class="tdBorderRight Title3Left"><input
															id="txtORG_ADDR2" type="text" name="orgFee.orgAddr"
															class="txtDefault stat_addr" /></td>
													</tr>
													<tr style="height: 18.45pt;">
														<td class="tdContent Title3">联系人<span
															style="color: #FF0000;">*</span>
														</td>
														<td class="tdContent Title3Left"><input
															id="txtORG_Link_Person2" type="text"
															name="orgFee.orgLinkPerson" style="width: 50px"
															class="txtDefault org_link_person" /></td>
														<td class="tdContent Title3">联系电话<span
															style="color: #FF0000;">*</span>
														</td>
														<td class="tdContent Title3Left"><input
															id="txtORG_Phone2" type="text" name="orgFee.orgPhone"
															class="txtDefault app_pa_org_phone required" /></td>
														<td class="tdContent Title3">传真号码</td>
														<td class="tdBorderRight Title3Left"><input
															id="txtORG_FAX2" type="text" name="orgFee.orgFax"
															class="txtDefault org_fax" /></td>
													</tr>
													<tr style="height: 18.45pt;">
														<td class="tdContent Title3">手机号码</td>
														<td colspan="2" class="tdContent Title3Left"><input
															id="txtORG_MOB_Phone2" type="text"
															name="orgFee.orgMobPhone" maxlength="12"
															class="txtDefault org_mob_phone " /></td>
														<td class="tdContent Title3">电子信箱</td>
														<td colspan="2" class="tdBorderRight Title3Left"><input
															id="txtORG_Mail2" type="text" name="orgFee.orgMail"
															maxlength="40" class="txtDefault org_mail" /></td>
													</tr>
													<tr style="height: 18.45pt;">
														<td class="tdContent Title3">开户银行</td>
														<td colspan="2" class="tdContent Title3Left"><input
															id="txtORG_Bank" type="text" name="orgFee.orgBank"
															class="txtDefault net_use" /></td>
														<td class="tdContent Title3">账户名称</td>
														<td colspan="2" class="tdBorderRight Title3Left"><input
															id="txtORG_Account_Name" type="text"
															name="orgFee.orgAccountName" class="txtDefault net_use" />
														</td>
													</tr>
													<tr style="height: 18.45pt;">
														<td class="tdBorderBottom Title3">银行账号</td>
														<td colspan="5" class="tdBorderRightCorner Title3Left">
															<input id="txtORG_Account" type="text"
															name="orgFee.orgAccount"
															class="txtDefault org_account_name" />
														</td>
													</tr>
													<tr style="height: 18.45pt;">
														<td colspan="7" class=" tdTitleLeft Title2">② 申请人承诺</td>
													</tr>
													<tr style="height: 18.45pt;">
														<td colspan="7" class="fullLine Title3"
															style="text-align: left; padding-left: 25px; border-bottom: none">
															<p>1. 本申请表填写的所有内容真实、准确；</p>
															<p>2.
																无线电台（站）的发射频率、功率等技术指标符合国家有关无线电管理规定及技术标准，不对其他无线电台（站）、系统造成有害干扰；</p>
															<p>3. 无线电台（站）的设置、使用符合国家城市规划、环境保护等相关规定；</p>
															<p>4. 本单位如变更地址、名称等事项，将及时向无线电管理机构备案；</p>
															<p>5. 遵守国家有关无线电管理规定，并按时缴纳频率占用费。</p>
															<p></p>
														</td>
													</tr>
													<tr style="height: 18.45pt;">
														<td colspan="5" class="tdBorderLeft Title3"
															style="border-right: none; border-bottom: none;">
															&nbsp;</td>
														<td class="tdBorderRight1 Title3" style="text-align: left"
															colspan="2">&nbsp;&nbsp; &nbsp;&nbsp;
															&nbsp;&nbsp;申请人（签章）： <input style="display: none"
															id="txtApp_Person" type="text" style="width: 150px"
															name="app_person_aa" class="txtDefault st_me_file_no" />
														</td>
													</tr>
													<tr style="height: 18.45pt;">
														<td colspan="5" class="tdBorderLeftCorner Title3"
															style="border-right: none;">&nbsp;</td>
														<td class="tdBorderRightCorner Title3"
															style="text-align: left" colspan="2">&nbsp;
															&nbsp;&nbsp; &nbsp;&nbsp;日 &nbsp;&nbsp;
															&nbsp;&nbsp;&nbsp;&nbsp;期<span style="color: #FF0000;">*</span>：
															<input id="date_APP_Date" name="apply.appDate"
															type="text"
															class="txtDefault  combobox-text STAT_Date_Start"
															onClick="WdatePicker({dateFmt:'yyyy/M/d'})"
															maxlength="10" style="width: 200px" />
														</td>
													</tr>
												</table> <!-- </form> -->
											</td>
										</tr>
									</table>
									<!-- <form id="formMemo"> -->
									<table border="0" cellpadding="0" cellspacing="0"
										style="border-style: none; border-color: inherit; border-width: medium; background-color: White;"
										class="style1">
										<tr>
											<td colspan="6" style="font-size: 7.5pt; color: #B46F3C">
												&nbsp;</td>
										</tr>
										<tr style="height: 22.7pt">
											<td class="bottomTableLeft Title3" colspan="3"
												style="width: 150px">备&nbsp;注</td>
											<td colspan="4" class="tdBorderRightCorner bottomTableCenter"
												style="width: 809px"><input id="txtMEMO" type="text"
												name="apply.memo" class="txtDefault meno" /></td>
										</tr>
										<tr>
											<td colspan="7" style="font-size: 7.5pt; color: #FF3300">
												&nbsp;</td>
										</tr>
										<tr>
											<td colspan="3"
												style="font-size: 7.5pt; color: #FF3300; text-align: left">
												&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
											<td colspan="3"
												style="font-size: 7.5pt; color: #FF3300; text-align: right;">
												中华人民共和国信息产业部制&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
									</table>
									<!--  </form> -->
								</form> <!-- form1 -->
							</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>

	<!-- 页面上没有但是又非空的字段 -->
	<input name="" value="" type="hidden">
</body>



</html>