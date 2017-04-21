<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table id="formFreq1" border="0" cellpadding="0" cellspacing="0"
	style="margin-left: 0pt; border: none; width: 498px">

	<tr class="Title3" style="height: 18.45pt">
		<td colspan="2" class="tdBorderLeft">通信对象的站代号<span
			style="color: #FF0000;">*</span>
		</td>
		<td class="tdContent">调制方式<span style="color: #FF0000;">*</span>
		</td>
		<td class="tdBorderRight"><select id=""
			class="txtDefault combobox-text" style="width: 98%"
			name="pageList[${param.pageIndex }].freq.freqMod">
				<option value="">请选择</option>
				<c:forEach var="f" items="${freqModDic }">
					<option value="${f.cn }">${f.codeChiName }</option>
				</c:forEach>
		</select></td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td colspan="2" class="tdBorderLeft"><input id="radio10"
			type="radio" name="pageList[${param.pageIndex }].freqT.ftFreqType"
			value="0" class="required" /> <label for="radio10"> 波道间隔</label> <input
			id="radio101" type="radio"
			name="pageList[${param.pageIndex }].freqT.ftFreqType" value="1"
			class="required" /> <label for="radio101"> 信道带宽</label><label
			id="lblFREQ_E_Ban"></label></td>
		<td class="tdContent"><input id="txtFREQ_E_Ban" precision="4"
			type="text" name="pageList[${param.pageIndex }].freq.freqEBand"
			class="txtDefault freq_e_band" /></td>

		<td class="tdBorderRight" style="text-align: left"><input
			id="radio_freq_band_unit_type0" type="radio"
			name="radio_freq_band_unit_type" class="required" value="0" /> <label
			for="radio_freq_band_unit_type0"> kHz</label> <input
			id="radio_freq_band_unit_type1" type="radio"
			name="radio_freq_band_unit_type" class="required" value="1" /> <label
			for="radio_freq_band_unit_type1"> MHz</label></td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td colspan="3" class="tdBorderLeft"><input id="radio_freqType0"
			type="radio" name="pageList[${param.pageIndex }].freq.freqType"
			value="0" /> <label for="radio_freqType0"> 发射信（波）道中心频率</label></td>
		<td class="tdBorderRight">极化方式</td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft"><input class="txtDefault" type="text"
			name="pageList[${param.pageIndex }].freqList[0].ftFreqNo" value="1"
			style="width: 20px" /> <select id="selSys_Code"
			class="txtDefault combobox-text" style="width: 35px"
			name="pageList[${param.pageIndex }].freqList[0].freqMb">
				<option value="0">主用</option>
				<option value="1">备用</option>
		</select></td>
		<td class="tdContent"><input id="" type="text" class="txtDefault"
			name="pageList[${param.pageIndex }].freq[0].freqEfb" value=""
			style="width: 98%" /></td>
		<td rowspan="6" class="tdContent"><input
			id="radio_freq_band_unit_type0" type="radio"
			name="radio_freq_band_unit_type" class="required" value="0" /> <label
			for="radio_freq_band_unit_type0"> MHz</label><br> <input
			id="radio_freq_band_unit_type1" type="radio"
			name="radio_freq_band_unit_type" class="required" value="1" /> <label
			for="radio_freq_band_unit_type1"> GHz</label></td>
		<td class="tdBorderRight"><select id=""
			class="txtDefault combobox-text" style="width: 98%"
			name="pageList[${param.pageIndex }].freqTList[0].ftFreqFep">
				<option value="">--请选择--</option>
				<c:forEach var="f" items="${ftFreqFepDic }">
					<option value="${f.cn }">${f.codeChiName }</option>
				</c:forEach>
		</select></td>
	</tr>

	<c:forEach varStatus="s" begin="1" end="5" step="1">
		<tr class="Title3" style="height: 18.45pt">
			<td class="tdBorderLeft"><input class="txtDefault" type="text"
				name="pageList[${param.pageIndex }].freqList[${s.index }].ftFreqNo"
				value="${s.index+1 }" style="width: 20px" /> <select
				id="selSys_Code" class="txtDefault combobox-text"
				style="width: 35px"
				name="pageList[${param.pageIndex }].freqList[${s.index }].freqMb">
					<option value="0">主用</option>
					<option value="1">备用</option>
			</select></td>
			<td class="tdContent"><input id="" type="text"
				class="txtDefault"
				name="pageList[${param.pageIndex }].freqList[${s.index }].freqEfb"
				value="" style="width: 98%" /></td>
			<td class="tdBorderRight"><select id=""
				class="txtDefault combobox-text" style="width: 98%"
				name="pageList[${param.pageIndex }].freqTList[${s.index }].ftFreqFep">
					<option value="">--请选择--</option>
					<c:forEach var="f" items="${ftFreqFepDic }">
						<option value="${f.cn }">${f.codeChiName }</option>
					</c:forEach>
			</select></td>
		</tr>
	</c:forEach>

	<tr class="Title3" style="height: 18.45pt">
		<td colspan="3" class="tdBorderLeft"><input id="radio_freqType1"
			type="radio" name="pageList[${param.pageIndex }].freq.freqType"
			value="1" /> <label for="radio_freqType1"> 发射频段</label></td>
		<td class="tdBorderRight">极化方式</td>
	</tr>


	<c:forEach varStatus="s" begin="0" end="3" step="2">
		<tr class="Title3" style="height: 18.45pt">
			<td class="tdBorderLeft"><input class="txtDefault" type="text"
				name="pageList[${param.pageIndex }].freqList[${s.index }].ftFreqNo"
				value="${s.index+1 }" style="width: 20px" /></td>
			<td class="tdContent"><input id="" type="text"
				class="txtDefault"
				name="pageList[${param.pageIndex }].freqList[${s.index }].freqEfb"
				value="" style="width: 45%" />至 <input id="" type="text"
				class="txtDefault"
				name="pageList[${param.pageIndex }].freqList[${s.index }].freqEfe"
				value="" style="width: 45%" /></td>
			<td rowspan="2" class="tdContent"><input
				id="radio_freq_band_unit_type0" type="radio"
				name="radio_freq_band_unit_type" class="required" value="0" /> <label
				for="radio_freq_band_unit_type0"> MHz</label><br> <input
				id="radio_freq_band_unit_type1" type="radio"
				name="radio_freq_band_unit_type" class="required" value="1" /> <label
				for="radio_freq_band_unit_type1"> GHz</label></td>
			<td class="tdBorderRight"><select id=""
				class="txtDefault combobox-text" style="width: 98%"
				name="pageList[${param.pageIndex }].freqTList[${s.index }].ftFreqFep">
					<option value="">--请选择--</option>
					<c:forEach var="f" items="${ftFreqFepDic }">
						<option value="${f.cn }">${f.codeChiName }</option>
					</c:forEach>
			</select></td>
		</tr>
		<tr class="Title3" style="height: 18.45pt">
			<td class="tdBorderLeft"><input class="txtDefault" type="text"
				name="pageList[${param.pageIndex }].freqList[${s.index+1 }].ftFreqNo"
				value="${s.index+2 }" style="width: 20px" /></td>
			<td class="tdContent"><input id="" type="text"
				class="txtDefault"
				name="pageList[${param.pageIndex }].freqList[${s.index+1 }].freqEfb"
				value="" style="width: 45%" />至 <input id="" type="text"
				class="txtDefault"
				name="pageList[${param.pageIndex }].freqList[${s.index+1 }].freqEfe"
				value="" style="width: 45%" /></td>
			<td class="tdBorderRight"><select id=""
				class="txtDefault combobox-text" style="width: 98%"
				name="pageList[${param.pageIndex }].freqTList[${s.index+1 }].ftFreqFep">
					<option value="">--请选择--</option>
					<c:forEach var="f" items="${ftFreqFepDic }">
						<option value="${f.cn }">${f.codeChiName }</option>
					</c:forEach>
			</select></td>
		</tr>
	</c:forEach>
</table>

<table id="formEqu1" border="0" cellpadding="0" cellspacing="0"
	style="margin-left: 0pt; border: none; width: 498px">
	<tr style="height: 18.45pt">
		<td colspan="5" class="tdTitleLeft Title2"
			style="padding: 0pt; margin: 0pt;">③ 设备数据</td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft">生产厂家</td>
		<td colspan="4" class="tdBorderRight"><input id="txtEQU_MENU"
			type="text" name="pageList[${param.pageIndex }].equ.equMenu"
			class="txtDefault EQU_MENU_by_dlm" /></td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td colspan="1" class="tdBorderLeft">设备型号<span
			style="color: red;">*</span>
		</td>
		<td colspan="2" class="tdContent"><input id="txtEQU_Model"
			type="text" name="pageList[${param.pageIndex }].equ.equModel"
			class="txtDefault EQU_Model" /></td>
		<td class="tdContent">门限电平</td>
		<td class="tdBorderRight"><input id="txtET_EQU_TLl" type="text"
			name="pageList[${param.pageIndex }].equT.etEquTl"
			style="width: 150px; text-align: left" class="txtDefault  et_equ_tl" />
			dBm</td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td colspan="2" class="tdBorderLeft"><label id="lblEQU_AUTH">
				型号核准代码</label></td>
		<td colspan="3" class="tdBorderRight"><input id="txtEQU_AUTH"
			type="text" name="pageList[${param.pageIndex }].equ.equAuth"
			class="txtDefault EQU_AUTH" /></td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td colspan="1" class="tdBorderLeft">发射功率<span
			style="color: #FF0000;">*</span>
		</td>
		<td class="tdContent" style="wight: 10%"><input id="selEqu_PF"
			name="pageList[${param.pageIndex }].equ.equPow"
			class="txtDefault checkRequired" type="text" /></td>
		<td class="tdContent"><input id="radio25" type="radio"
			name="pageList[${param.pageIndex }].equT.etPowU" value="1"
			class="required" /> <label for="radio25">dBm</label> <input
			id="radio26" type="radio"
			name="pageList[${param.pageIndex }].equT.etPowU" value="4"
			class="required" /> <label for="radio26">W</label></td>
		<td class="tdContent">噪声系数</td>
		<td class="tdBorderRight"><input id="txtET_EQU_RNQ" type="text"
			name="pageList[${param.pageIndex }].equT.etEquRnq"
			style="width: 90%; text-align: left"
			class="txtDefault  easyui-numberbox equTl" precision="1" /> dB</td>
	</tr>
</table>

<table id="formEquNo1" border="0" cellpadding="0" cellspacing="0"
	style="margin-left: 0pt; border: none; width: 498px">
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft" colspan="2">设备出厂号</td>
		<td class="tdContent"><input id="" type="text"
			name="pageList[${param.pageIndex }].equT[0].etEquNo" value="1"
			style="width: 20px" class="txtDefault" /></td>
		<td class="tdContent"><select id="selSys_Code"
			class="txtDefault combobox-text" style="width: 35px"
			name="pageList[${param.pageIndex }].equ[0].equMb">
				<option value="0">主用</option>
				<option value="1">备用</option>
		</select> <input id="" type="text"
			name="pageList[${param.pageIndex }].equ[0].equCode"
			style="width: 60%" class="txtDefault" /></td>
		<td class="tdContent"><input id="" type="text"
			name="pageList[${param.pageIndex }].equT[1].etEquNo" value="2"
			style="width: 20px" class="txtDefault" /></td>
		<td class="tdBorderRight"><select id="selSys_Code"
			class="txtDefault combobox-text" style="width: 35px"
			name="pageList[${param.pageIndex }].equ[1].equMb">
				<option value="0">主用</option>
				<option value="1">备用</option>
		</select> <input id="" type="text"
			name="pageList[${param.pageIndex }].equ[1].equCode"
			style="width: 60%" class="txtDefault" /></td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft"><input id="" type="text"
			name="pageList[${param.pageIndex }].equT[2].etEquNo" value="3"
			style="width: 20px" class="txtDefault" /></td>
		<td class="tdContent"><select id="selSys_Code"
			class="txtDefault combobox-text" style="width: 35px"
			name="pageList[${param.pageIndex }].equ[2].equMb">
				<option value="0">主用</option>
				<option value="1">备用</option>
		</select> <input id="" type="text"
			name="pageList[${param.pageIndex }].equ[2].equCode"
			style="width: 60%" class="txtDefault" /></td>
		<td class="tdContent"><input id="" type="text"
			name="pageList[${param.pageIndex }].equT[3].etEquNo" value="4"
			style="width: 20px" class="txtDefault" /></td>
		<td class="tdContent"><select id="selSys_Code"
			class="txtDefault combobox-text" style="width: 35px"
			name="pageList[${param.pageIndex }].equ[3].equMb">
				<option value="0">主用</option>
				<option value="1">备用</option>
		</select> <input id="" type="text"
			name="pageList[${param.pageIndex }].equ[3].equCode"
			style="width: 60%" class="txtDefault" /></td>
		<td class="tdContent"><input id="" type="text"
			name="pageList[${param.pageIndex }].equT[4].etEquNo" value="5"
			style="width: 20px" class="txtDefault" /></td>
		<td class="tdBorderRight"><select id="selSys_Code"
			class="txtDefault combobox-text" style="width: 35px"
			name="pageList[${param.pageIndex }].equ[4].equMb">
				<option value="0">主用</option>
				<option value="1">备用</option>
		</select> <input id="" type="text"
			name="pageList[${param.pageIndex }].equ[4].equCode"
			style="width: 60%" class="txtDefault" /></td>
	</tr>
</table>

<table id="formAnt1" border="0" cellpadding="0" cellspacing="0"
	style="margin-left: 0pt; border: none; width: 498px">
	<tr style="height: 18.45pt">
		<td colspan="4" class="tdTitleLeft Title2">④ 天线数据</td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft">天线型号</td>
		<td class="tdContent"><input id="txtANT_MODEL" type="text"
			name="pageList[${param.pageIndex }].ant.antModel"
			class="txtDefault ant_model" /></td>
		<td class="tdContent">生产厂家</td>
		<td class="tdBorderRight"><input id="txtANT_MENU" type="text"
			name="pageList[${param.pageIndex }].ant.antMenu"
			class="txtDefault ant_menu" /></td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft">天线类型<span style="color: #FF0000;">*</span>
		</td>
		<td class="tdContent"><select id=""
			class="txtDefault combobox-text" style="width: 98%"
			name="pageList[${param.pageIndex }].ant.antType">
				<option value="">--请选择--</option>
				<c:forEach var="f" items="${antTypeDic }">
					<option value="${f.cn }">${f.codeChiName }</option>
				</c:forEach>
		</select></td>
		<td class="tdContent">天线增益<span style="color: #FF0000;">*</span>
		</td>
		<td class="tdBorderRight"><input id="txtANT_Gain" type="text"
			precision="1" name="pageList[${param.pageIndex }].ant.antGain"
			class="txtNumber easyui-numberbox  ant_gain_required" /> dBi</td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft">天线仰角</td>
		<td class="tdContent"><input id="txtAT_SE_B" type="text"
			name="pageList[${param.pageIndex }].antT.atAntUpang" precision="1"
			class="txtNumber easyui-numberbox se_angle" /> °</td>
		<td class="tdContent">天线距地面高度<span style="color: #FF0000;">*</span>
		</td>
		<td class="tdBorderRight"><input id="txtANT_Hight" type="text"
			name="pageList[${param.pageIndex }].ant.antHight" precision="1"
			class="txtNumber easyui-numberbox ant_hight_required" /> m</td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft">天线尺寸<span style="color: #FF0000;">*</span>
		</td>
		<td class="tdContent"><input id="txtANT_Size" type="text"
			name="pageList[${param.pageIndex }].ant.antSize" precision="1"
			class="txtNumber easyui-numberbox ant_angle_required_Two" /> m</td>
		<td class="tdContent">最大辐射方位角<span style="color: #FF0000;">*</span>
		</td>
		<td class="tdBorderRight"><input id="txtANT_Angle" type="text"
			name="pageList[${param.pageIndex }].ant.antAngle" precision="1"
			class="txtNumber easyui-numberbox ant_angle_required_Two" /> °</td>
	</tr>
</table>


<table id="formFeed1" border="0" cellpadding="0" cellspacing="0"
	style="margin-left: 0pt; border: none; width: 498px">
	<tr style="height: 18.45pt">
		<td colspan="4" class="tdTitleLeft Title2">⑤ 馈线数据</td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft">生产厂家</td>
		<td colspan="3" class="tdBorderRight"><input id="txtFEED_MENU"
			type="text" name="pageList[${param.pageIndex }].feed.feedMenu"
			class="txtDefault feed_menu" /></td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td class="tdBorderLeft">馈线型号</td>
		<td class="tdContent"><input id="txtFEED_Model" type="text"
			name="pageList[${param.pageIndex }].feed.feedModel"
			class="txtDefault ant_model_tf" /></td>
		<td class="tdContent">长度</td>
		<td class="tdBorderRight"><input id="txtFEED_Length" type="text"
			name="pageList[${param.pageIndex }].feed.feedLength"
			style="width: 80%" class="txtDefault feed_menu " precision="1" /> m
		</td>
	</tr>
	<tr class="Title3" style="height: 18.45pt">
		<td colspan="2" class="tdBorderLeftCorner">馈线系统总损耗<span
			style="color: #FF0000;">*</span>
		</td>
		<td colspan="2" class="tdBorderRightCorner"><input
			id="txtFEED_Lose" type="text"
			name="pageList[${param.pageIndex }].feed.feedLose" style="width: 80%"
			class="txtDefault feed_menu " precision="1" />dB</td>
	</tr>
</table>