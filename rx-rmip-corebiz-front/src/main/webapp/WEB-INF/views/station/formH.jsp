<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国无管表3-H-30MHz以下无线电台（站）技术资料申报表</title>

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

<!-- 下国无管表3的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/formH.css" />
<!-- 下拉框的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/combobox.css" />
<!-- 页面校验的样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/assets/css/station/Validate.css" />


<!-- 临时添加的样式 -->
<style type="text/css">
</style>


<!-- 临时添加的js -->

<script type="text/javascript">
	$(function() {
	});
</script>


</head>
<body style="width: 100%; background-color: White; overflow-x: hidden">

	<table style="height: 100%; width: 100%;">
		<tr>
			<td align="center">
				<div id="formcontent"
					style="width: 1000px; background-color: White;">
					<!-- <form id="form1"> -->

					<form action="${pageContext.request.contextPath }/techData/submitFormH" method="post" >
						<!-- 提交测试  -->
						<table id="formTableH" border="0" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td style="border: none" align="center" class="Title1"
									colspan="8"><span id="spanTitle">30MHz以下无线电台（站）技术资料申报表</span>
								</td>
							</tr>
							<tr style="height: 18.45pt;" class="Title2">
								<td style="border: none; text-align: left;" colspan="4">
									&nbsp;&nbsp;国无管表3</td>
								<td style="border: none; text-align: right;" class="Title3"
									colspan="4">H<input id="txtSTAT_TDI" type="text"
									name="station.statTdi" class="txtLine stat_tdi" maxlength="4"
									value="3211" />&nbsp;&nbsp;
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdTitleTopLeft Title2" colspan="7">① 台（站）数据</td>
								<td class="tdTitleTopRight Title2" style="text-align: right">
									<input id="txtSTAT_Stauts" type="text"
									name="station.statStatus" style="width: 50px"
									class="txtStatStauts" />
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">申请表编号<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="2" class="tdContent"><input id="txtAPP_Code"
									name="station.appCode" type="text" class="txtDefault app_code"
									maxlength="14" value="T321321" /></td>
								<td class="tdContent Title3">台（站）类别<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="5" class="tdBorderRight"><select
									id="selSys_Code" class="txtDefault combobox-text"
									style="width: 98%" name="station.statType">
										<option value="">--请选择--</option>
										<c:forEach items="${stationTypeDic}" var="f">
											<option value="${f.cn}">${f.codeChiName }</option>
										</c:forEach>
								</select></td>
								<!--  <td  class="tdBorderRight Title3">
                                <input id="rdNew" type="radio" name="station.statStatus" value="" />
                                <label for="rdNew">
                                    新设</label>&nbsp;
                                <input id="rdChange" type="radio" name="station.statStatus" value="" />
                                <label for="rdChange">
                                    变更</label>
                            </td> -->
							</tr>
							<tr style="height: 18.45pt;" datagrid-row-index='id1'>
								<td class="tdBorderLeft Title3">台（站）名称</td>
								<td colspan="3" class="tdContent"><input id="txtSTAT_Name"
									type="text" name="station.statName"
									class="txtDefault stat_name_noRequired" value="台（站）名称" /></td>
								<td class="tdContent Title3">工作时间<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="3" class="tdBorderRight tdLabelAndCheckbox"
									style="text-align: left"><input id="txt_St_TimeB"
									name="stationT.stTimeB" type="text"
									class="txtDefault startTime combobox-text STAT_Date_Start"
									onClick="WdatePicker({dateFmt:'yyyy/M/d'})"
									value="${stationVo.stationT.stTimeB }" maxlength="10"
									style="width: 80px" starttimecontrol="startTime" /> — <input
									id="txt_St_TimeE" name="stationT.stTimeE" type="text"
									class="txtDefault endTime combobox-text STAT_Date_Start"
									onClick="WdatePicker({dateFmt:'yyyy/M/d'})" maxlength="10"
									style="width: 80px" starttimecontrol="endTime" /> <input
									id="rdStTime" type="checkbox" name="stationCustom.allday"
									value="1" /> <label for="rdStTime" style="width: 50px">
										全天</label>&nbsp;</td>
							</tr>

							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">台（站）地址<label
									style="color: #FF0000; display: none; width: 10px;"
									id="spanStatAddr">*</label>
								</td>
								<td class="tdContent" colspan="3"><input id="txtSTAT_ADDR"
									type="text" name="station.statAddr"
									class="txtDefault stat_addr" value="台（站）地址" /></td>
								<td class="tdContent Title3">工作方式<span
									style="color: #FF0000;">*</span>
								</td>
								<td class="tdBorderRight tdContent Title3" colspan="3"
									style="text-align: left; width: 200px"><input
									id="rdStat_Work_TypeS" type="radio" name="station.statWork"
									value="S" class="required" /> <label for="rdStat_Work_TypeS">
										单工</label>&nbsp; <input id="rdStat_Work_TypeH" type="radio"
									name="station.statWork" value="H" class="required" /> <label
									for="rdStat_Work_TypeH"> 半双工</label> <input
									id="rdStat_Work_TypeD" type="radio" name="station.statWork"
									value="D" class="required" /> <label for="rdStat_Work_TypeD">
										双工</label></td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeft Title3">地理坐标<label
									style="color: #FF0000; display: none; width: 10px;"
									id="spanStatLG">*</label>
								</td>
								<td class="tdContent Title3">东经</td>
								<td class="tdContent Title3"><input id="txtSTAT_LG1"
									value="12" type="text" name="stationCustom.lg1"
									style="width: 30px"
									class="txtDefault easyui-numberbox stat_lg1" />° <input
									id="txtSTAT_LG2" value="12" type="text"
									name="stationCustom.lg2" style="width: 30px"
									class="txtDefault easyui-numberbox stat_lg2" />′ <input
									id="txtSTAT_LG3" value="12" precision="2" type="text"
									name="stationCustom.lg3" style="width: 35px"
									class="txtDefault easyui-numberbox stat_lg3" />″</td>
								<td class="tdContent Title3">北纬</td>
								<td class="tdContent Title3"><input id="txtSTAT_LA1"
									value="12" type="text" name="stationCustom.la1"
									style="width: 30px"
									class="txtDefault easyui-numberbox stat_la1" />° <input
									id="txtSTAT_LA2" value="12" type="text"
									name="stationCustom.la2" style="width: 30px"
									class="txtDefault easyui-numberbox stat_la2" />′ <input
									id="txtSTAT_LA3" value="12" type="text"
									name="stationCustom.la3" style="width: 35px"
									class="txtDefault easyui-numberbox stat_la3" />″</td>
								<td class="tdContent Title3">海拔高度<label
									style="color: #FF0000; display: none; width: 10px;"
									id="spanStatAt">*</label>
								</td>
								<td colspan="2" class="tdBorderRight Title3"
									style="text-align: left"><input id="txtSTAT_AT"
									type="text" name="station.statAt"
									style="width: 150px; text-align: left" value=""
									class="txtDefault easyui-numberbox stat_at" precision="1" />m
								</td>
							</tr>
							<tr style="height: 18.45pt;">
								<td class="tdBorderLeftCorner Title3">设备数量<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="3" class="tdBorderBottom Content3"
									style="text-align: left"><input id="txt_Equ_sum"
									type="text" name="station.statEquSum"
									style="width: 120px; text-align: left" value="2"
									class="txtDefault easyui-numberbox equ_sum" /></td>
								<td class="tdBorderBottom Title3">启用日期<span
									style="color: #FF0000;">*</span>
								</td>
								<td colspan="4" class="tdBorderRightCorner Title3" align="left"
									style="text-align: left"><input id="txtSTAT_Date_Start"
									type="text" name="station.statDateStart"
									class="txtDefault easyui-datebox combobox-text STAT_Date_Start"
									maxlength="10" style="width: 140px"
									onClick="WdatePicker({dateFmt:'yyyy/M/d'})" /></td>
							</tr>
						</table>
						<!-- </form> -->


						<!-- <form id="formEqusFreqs"> -->
						<table id="tableEqusFreqs" border="0" cellpadding="0"
							cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr style="height: 18.45pt;">
								<td colspan="10" class="tdTitleLeft Title2">② 设备数据</td>
							</tr>
							<tr class="Title3">
								<td class="tdBorderLeft">序号</td>
								<td class="tdContent">主备用</td>
								<td class="tdContent">设备型号</td>
								<td class="tdContent">型号核准代码</td>
								<td class="tdContent">设备出厂号</td>
								<td colspan="2" class="tdContent">设备生产厂家</td>
								<td colspan="2" class="tdContent">发射功率</td>
								<td class="tdBorderRight">自动选频</td>
							</tr>


							<tbody id="">
								<c:forEach varStatus="s" begin="0" end="2">
									<tr class="Title3">
										<td class="tdBorderLeft"><input id="" type="text"
											name="equTList[${s.index }].etEquNo" class="txtDefault"
											style="width: 98%" value="te12" /></td>
										<td class="tdContent"><select id="selSys_Code"
											class="txtDefault combobox-text" style="width: 35px"
											name="equList[${s.index }].equMb">
												<option selected="selected" value="0">主用</option>
												<option value="1">备用</option>
										</select></td>
										<td class="tdContent"><input id="" type="text"
											name="equList[${s.index }].equModel" class="txtDefault"
											style="width: 98%" value="test123" /></td>
										<td class="tdContent"><input id="" type="text"
											name="equList[${s.index }].equAuth" class="txtDefault"
											style="width: 98%" /></td>
										<td class="tdContent"><input id="" type="text"
											name="equList[${s.index }].equCode" class="txtDefault"
											style="width: 98%" /></td>
										<td colspan="2" class="tdContent"><input id=""
											type="text" name="equList[${s.index }].equMenu"
											class="txtDefault" style="width: 98%" /></td>
										<td class="tdContent"><input id="" type="text"
											name="equList[${s.index }].equPow" class="txtDefault"
											style="width: 98%" /></td>
										<td class="tdContent"><input
											id="radio_etPowUnit0_${s.index }"
											name="equTList[${s.index }].etPowU" value="0" type="radio" /><label
											for="radio_etPowUnit0_${s.index }">W</label> <input
											id="radio_etPowUnit1_${s.index }"
											name="equTList[${s.index }].etPowU" value="1" type="radio" /><label
											for="radio_etPowUnit1_${s.index }">kW</label></td>
										<td class="tdBorderRight"><input
											id="radio_etAfType0_${s.index }"
											name="equTList[${s.index }].etAfType" value="0" type="radio" /><label
											for="radio_etAfType0_${s.index }">是</label> <input
											id="radio_etAfType1_${s.index }"
											name="equTList[${s.index }].etAfType" value="1" type="radio" /><label
											for="radio_etAfType1_${s.index }">否</label></td>
									</tr>
								</c:forEach>
							</tbody>



							<tbody>
								<tr class="Title3">
									<td class="tdBorderLeft">序号</td>
									<td class="tdContent">主备用</td>
									<td class="tdContent">发射频率<br>(kHz)
									</td>
									<td class="tdContent">接收频率<br>(kHz)
									</td>
									<td colspan="2" class="tdContent">工作时段</td>
									<td class="tdContent">必要带宽</td>
									<td class="tdContent">发送信息<br>类型
									</td>
									<td class="tdContent">调制<br>方式
									</td>
									<td class="tdBorderRight">呼号</td>
								</tr>
								<c:forEach varStatus="s" begin="0" end="5" step="2">
									<tr class="Title3">
										<td rowspan="2" class="tdBorderLeft"><input id=""
											type="text" name="freqTList[${s.index }].ftFreqNo"
											class="txtDefault" style="width: 98%" /></td>
										<td class="tdContent"><select id="selSys_Code"
											class="txtDefault combobox-text" style="width: 35px"
											name="freqList[${s.index }].freqMb">
												<option value="0">主用</option>
												<option value="1">备用</option>
										</select></td>
										<td class="tdContent"><input id="" type="text"
											name="freqList[${s.index }].freqEfb" class="txtDefault"
											style="width: 98%" value="1" /></td>
										<td class="tdContent"><input id="" type="text"
											name="freqList[${s.index }].freqRfb" class="txtDefault"
											style="width: 98%" /></td>
										<td colspan="2" class="tdContent"><input id=""
											type="text" name="freqTList[${s.index }].ftFreqTimeb"
											class="txtDefault" style="width: 40%" /> - <input id=""
											type="text" name="freqTList[${s.index }].ftFreqTimee"
											class="txtDefault" style="width: 40%" /></td>
										<td class="tdContent"><input id="" type="text"
											name="freqList[${s.index }].freqEBand" class="txtDefault"
											style="width: 98%" /></td>
										<td class="tdContent"><select id=""
											class="txtDefault combobox-text" style="width: 98%"
											name="freqTList[${s.index }].ftFreqInfoType">
												<option value="">--请选择--</option>
												<c:forEach var="f" items="${ftFreqInfoTypeDic }">
													<option value="${f.cn }">${f.codeChiName }</option>
												</c:forEach>
										</select></td>
										<td class="tdContent"><select id=""
											class="txtDefault combobox-text" style="width: 98%"
											name="freqList[${s.index }].freqMod">
												<option value="">请选择</option>
												<c:forEach var="f" items="${freqModDic }">
													<option value="${f.cn }">${f.codeChiName }</option>
												</c:forEach>
										</select></td>
										<td class="tdBorderRight"><input id="" type="text"
											name="freqTList[${s.index }].ftFreqHcl" class="txtDefault"
											style="width: 98%" value="test1" /></td>
									</tr>
									<tr class="Title3">
										<td class="tdContent"><select id="selSys_Code"
											class="txtDefault combobox-text" style="width: 35px"
											name="freqList[${s.index+1 }].freqMb">
												<option value="0">主用</option>
												<option value="1">备用</option>
										</select></td>
										<td class="tdContent"><input id="" type="text"
											name="freqList[${s.index+1 }].freqefb" class="txtDefault"
											style="width: 98%" /></td>
										<td class="tdContent"><input id="" type="text"
											name="freqList[${s.index+1 }].freqRfb" class="txtDefault"
											style="width: 98%" /></td>
										<td colspan="2" class="tdContent"><input id=""
											type="text" name="freqTList[${s.index+1 }].ftFreqTimeb"
											class="txtDefault" style="width: 40%" /> - <input id=""
											type="text" name="freqTList[${s.index+1 }].ftFreqTimee"
											class="txtDefault" style="width: 40%" /></td>
										<td class="tdContent"><input id="" type="text"
											name="freqList[${s.index+1 }].freqEBand" class="txtDefault"
											style="width: 98%" /></td>
										<td class="tdContent"><select id=""
											class="txtDefault combobox-text" style="width: 98%"
											name="freqTList[${s.index+1 }].ftFreqInfoType">
												<option value="">--请选择--</option>
												<c:forEach var="f" items="${ftFreqInfoTypeDic }">
													<option value="${f.cn }">${f.codeChiName }</option>
												</c:forEach>
										</select></td>
										<td class="tdContent"><select id=""
											class="txtDefault combobox-text" style="width: 98%"
											name="freqList[${s.index+1 }].freqMod">
												<option value="">请选择</option>
												<c:forEach var="f" items="${freqModDic }">
													<option value="${f.cn }">${f.codeChiName }</option>
												</c:forEach>
										</select></td>
										<td class="tdBorderRight"><input id="" type="text"
											name="freqTList[${s.index+1 }].ftFreqHcl" class="txtDefault"
											style="width: 98%" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>



						<!-- </form> -->
						<table id="Table2" border="0" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;">
							<tr>
								<td colspan="8">
									<!-- <form id="form2"> -->
									<table border="0" cellpadding="0" cellspacing="0"
										style="border: none; width: 100%; background-color: White;"
										id="tableAnt">
										<tr style="height: 18.45pt;">
											<td colspan="6" class="tdTitleLeft Title2">③ 天线数据</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3">天线类型<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdContent"><select id=""
												class="txtDefault combobox-text" style="width: 98%"
												name="ant.antType">
													<option value="">请选择</option>
													<c:forEach var="f" items="${antTypeDic }">
														<option value="${f.cn }">${f.codeChiName }</option>
													</c:forEach>
											</select></td>
											<td class="tdContent Title3">
												<div id="divAntModel1">天线型号</div>
												<div id="divAntModel2" style="display: none">
													<a href="javascript:void(0)" class="easyui-linkbutton"
														onclick="javascript:ShowModalByAntEqu(1,2,'#tableAnt')">
														天线型号</a>
												</div>
											</td>
											<td class="tdContent"><input id="txtANT_Model"
												type="text" name="ant.antModel"
												class="txtDefault ant_model_tf" value="test123" /></td>
											<td class="tdContent  Title3">极化方式<span
												style="color: #FF0000;">*</span>
											</td>
											<td class="tdBorderRight   Title3" style="text-align: left">
												<select id="" class="txtDefault combobox-text"
												style="width: 98%" name="ant.antPole">
													<option value="">请选择</option>
													<c:forEach var="f" items="${antPoleDic }">
														<option value="${f.cn }">${f.codeChiName }</option>
													</c:forEach>
											</select>
											</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3">天线生产厂家</td>
											<td class="tdContent" colspan="3"><input
												id="txtANT_MENU" type="text" name="ant.antMenu"
												class="txtDefault ant_menu" value="test123" /></td>
											<td class="tdContent Title3">最大增益<span
												style='color: #FF0000;'>*</span>
											</td>
											<td class="tdBorderRight Title3" style="text-align: left;">
												<input id="txtANT_Gain" type="text" name="ant.antGain"
												class="txtNumber   ant_gain_required" />dBi
											</td>
										</tr>
										<tr style="height: 18.45pt;" equrequired="true">
											<td class="tdBorderLeft Title3"><label id="lblANT_Hight">天线距地面高度</label>
											</td>
											<td class="tdContent Content3"><input id="txtANT_Hight"
												type="text" name="ant.antHight" style="width: 150px;"
												class="txtNumber  ant_hight" /> m</td>
											<td class="tdContent Title3"><label id="lblANT_Angle">最大辐射方位角</label>
											</td>
											<td class="tdContent Content3" style="text-align: left">
												<input id="txtANT_Angle" type="text" precision="1"
												name="ant.antAngle"
												class="txtNumber easyui-numberbox ant_angle_required_Two" />
												°
											</td>
											<td class="tdContent Title3"><label id="lbl_AT_SE">射线仰角范围</label>
											</td>
											<td class="tdBorderRight Title3" style="text-align: left">
												<input id="txt_AT_SE_B" type="text" name="antT.atAngB"
												style="width: 50px;" class="txtNumber  se_angle" />- <input
												id="txt_AT_SE_E" type="text" name="antT.atAngE"
												style="width: 50px;" class="txtNumber  at_ant_upangMax_h" />°
											</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeftCorner Title3">垂直方向图</td>
											<td class="tdBorderBottom" colspan="2"><input
												id="txtAT_H_VPIC" name="antT.atHVpic" type="text"
												class="txtDefault at_h_vpic" value="test123" /></td>
											<td class="tdBorderBottom Title3">水平方向图</td>
											<td class="tdBorderRightCorner" colspan="2"><input
												id="txtAT_H_HPIC" name="antT.atHHpic" type="text"
												class="txtDefault at_h_vpic" value="test123" /></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td colspan="6" class="tdTitleLeft Title2">④ 馈线数据</td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3">生产厂家</td>
											<td colspan="5" class="tdBorderRight"><input
												id="txtFEED_MENU" type="text" name="feed.feedMenu"
												class="txtDefault feed_menu" value="test123" /></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeftCorner Title3">馈线型号</td>
											<td class="tdBorderBottom Title3"><input
												id="txtFEED_Model" type="text" name="feed.feedModel"
												class="txtDefault ant_model_tf" value="test123" /></td>
											<td class="tdBorderBottom Title3">长度</td>
											<td class="tdBorderBottom Title3" style="text-align: left">
												<input id="txtFEED_Length" type="text"
												name="feed.feedLength"
												style="width: 150px; text-align: left"
												class="txtDefault  feed_length" /> m
											</td>
											<td class="tdBorderBottom  Title3"><label
												id="lblFEED_Lose"> 馈线系统总损耗</label></td>
											<td colspan="3" class="tdBorderRightCorner Content3"
												style="text-align: left"><input id="txtFEED_Lose"
												type="text" name="feed.feedLose"
												style="width: 250px; text-align: left"
												class="txtDefault  feed_lose" /> dB</td>
										</tr>
									</table> <!-- <input type="submit" value="提交"> -->
									</form> <!-- </form> -->
									<table border="0" cellpadding="0" cellspacing="0"
										style="border: none; width: 100%; background-color: White;"
										pwidrequired="true">
										<tr style="height: 18.45pt;">
											<td colspan="6" class="tdTitleLeft Title2" id="td_tip6">
												⑤ 通信对象数据</td>
										</tr>
										<%-- <tr style="height: 18.45pt;">
                                        <td class="tdBorderLeft Title3" colspan="2">
                                            通信对象类型
                                        </td>
                                        <td class="tdBorderRight  Title3Left" style="text-align: left;" colspan="4">
                                            <select id="" class="txtDefault combobox-text" style="width: 98%" name="antList[0].antPole">
			                          			<option value="">请选择</option>
			                          			<c:forEach var="f" items="${objTypeDic }">
			                          				<option value="${f.cn }">${f.codeChiName }</option>
			                          			</c:forEach> 
			                          		</select>
                                        </td>
                                    </tr> --%>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeft Title3" colspan="2">
												通信对象的无线电台（站）申请表编号或名称<label
												style="color: #FF0000; display: none; width: 10px;"
												id="spanObj">*</label>
											</td>
											<td class="tdContent  Title3" style="text-align: left;"
												colspan="2"><input id="txtSTAT_TDI1" type="text"
												name="sTCobjList[0].objName"
												class="txtDefault stat_name_obj1" objname1="true" /></td>
											<td class="tdBorderRight Title3" style="text-align: left"
												colspan="2"><input id="txtSTAT_TDI2" type="text"
												name="sTCobjList[4].objName"
												class="txtDefault stat_name_obj2" objname2="true" /></td>
										</tr>
										<tr style="height: 18.45pt;">
											<td class="tdBorderLeftCorner Title3" colspan="2">
												通信对象的无线电台（站）技术资料申报表号</td>
											<td colspan="4">
												<table border="0" cellpadding="0" cellspacing="0"
													style="border: none; width: 100%; background-color: White;">
													<tr>
														<c:forEach varStatus="s" begin="0" end="7">
															<td class="tdBorderBottom Title3"
																style="text-align: left"><input
																id="txtTdi${s.index }" type="text"
																name="sTCobjList[${s.index }].objTdi"
																style="width: 48px" class="txtDefault  obj_tdi_h"
																maxlength="4" objtdi1="true" /></td>
														</c:forEach>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>



						<!-- <form id="formMemo"> -->
						<table border="0" id="TablelMemo" cellpadding="0" cellspacing="0"
							style="border: none; width: 1000px; background-color: White;"
							class="style1">
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #cc9900">
									&nbsp;</td>
							</tr>
							<tr style="height: 22.7pt">
								<td class="bottomTableLeft Title3" style="width: 150px">
									备&nbsp;注</td>
								<td colspan="7" class="bottomTableRight Title3Left"><input
									id="txtMEMO" name="station.memo" style="width: 850px"
									type="text" class="txtDefault meno" /></td>
							</tr>
							<tr>
								<td colspan="8" style="font-size: 7.5pt; color: #cc9900">
									&nbsp;</td>
							</tr>
							<tr>
								<td colspan="4" style="font-size: 7.5pt; color: #cc9900">
									&nbsp;&nbsp;&nbsp;&nbsp;2006年版</td>
								<td colspan="4"
									style="font-size: 7.5pt; color: #cc9900; text-align: right;">
									中华人民共和国信息产业部制&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						</table>
						<!-- </form> -->
				</div>
			</td>
		</tr>
	</table>


</body>
</html>