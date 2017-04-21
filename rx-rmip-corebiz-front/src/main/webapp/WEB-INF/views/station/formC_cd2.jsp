<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<table border="0" cellpadding="0" cellspacing="0"
	style="margin: 0px 0px 0px 0px; width: 330px;">
	<tr style="height: 18.45pt;">
		<td colspan="3" class="tdBorderLeft Title3">扇区<span
			style="color: #FF0000;">*</span>
		</td>
		<td class="tdContent"><input id="txtSTA_Equ_CCode"
			name="pageList[${param.pageIndex }].freqT.ftFreqCcode" type="text"
			maxlength="15" class="txtDefault cCode" maxlength="15" /></td>
		<td class="tdContent  Title3"><label id="lblAT_ANG_E">
				方位角</label></td>
		<td class="tdBorderRight Title3" style="text-align: left"><input
			id="txtAT_ANG_E" name="pageList[${param.pageIndex }].antT.atAngB"
			type="text" class="txtNumber easyui-numberbox ant_angle_required_Two"
			style="width: 80%" precision="1" maxlength="8" />°</td>
	</tr>
	<tr style="height: 18.45pt;">
		<td colspan="3" class="tdBorderLeft Title3"><label
			id="lblAT_Csgm">扇区标识码</label></td>
		<td colspan="3" class="tdBorderRight tdContent"><input
			id="txtAT_Csgm" type="text"
			name="pageList[${param.pageIndex }].freq.ftFreqCsgn"
			class="txtDefault at_csgn_norequired" maxlength="20" /></td>
	</tr>
	<tr style="height: 18.45pt;">
		<td colspan="3" class="tdBorderLeft Title3">收倾角</td>
		<td class="tdContent Title3" style="text-align: left"><input
			id="txtAt_Rang" name="pageList[${param.pageIndex }].antT.atRang"
			type="text" class="txtNumber easyui-numberbox at_rang_norequired"
			precision="1" maxlength="8" />°</td>
		<td class="tdContent Title3">发倾角</td>
		<td class="tdBorderRight Title3" style="text-align: left"><input
			id="txtAt_Eang" name="pageList[${param.pageIndex }].antT.atEang"
			type="text" precision="1"
			class="txtNumber easyui-numberbox at_eang_norequired" />°</td>
	</tr>
</table>

<table border="0" cellpadding="0" cellspacing="0"
	style="margin: 0px 0px 0px 0px; width: 330px;">
	<tr style="height: 18.45pt;">
		<td colspan="3" class="fullLine Title3"><input id="radio221"
			type="radio" name="pageList[${param.pageIndex }].freq.freqType"
			value="0" /> <label for="radio221"> 中心频率</label> <input id="radio22"
			type="radio" name="pageList[${param.pageIndex }].freq.freqType"
			value="1" /> <label for="radio22"> 频率范围</label></td>
	</tr>
	<tr class="Title3">
		<td class="tdBorderLeft">发射频率</td>
		<td class="tdContent">接收频率</td>
		<td rowspan="12" class="tdBorderRight">MHz</td>
	</tr>
	<c:forEach varStatus="s" begin="${param.pageIndex*7 }"
		end="${param.pageIndex*7+6 }" step="1">
		<tr class="Title3">
			<td class="tdBorderLeft"><input id="" type="hidden"
				name="pageList[${param.pageIndex }].freqList[${s.index }].freqMb"
				value="0" class="txtDefault" style="width: 98%" /> <input id=""
				type="text"
				name="pageList[${param.pageIndex }].freqList[${s.index }].freqEfb"
				class="txtDefault" style="width: 98%" /></td>
			<td class="tdContent"><input id="" type="text"
				name="pageList[${param.pageIndex }].freqList[${s.index }].freqRfb"
				class="txtDefault" style="width: 98%" /></td>
		</tr>
	</c:forEach>
	<tr class="Title3">
		<td rowspan="2" class="tdBorderLeft">发射频率范围</td>
		<td class="tdContent">起：<input id="" type="text"
			name="pageList[${param.pageIndex }].freqList[0].freqEfb"
			class="txtDefault" style="width: 70%" /></td>
	</tr>
	<tr class="Title3">
		<td class="tdContent">止：<input id="" type="text"
			name="pageList[${param.pageIndex }].freqList[0].freqEfe"
			class="txtDefault" style="width: 70%" /></td>
	</tr>
	<tr class="Title3">
		<td rowspan="2" class="tdBorderLeft">接收频率范围</td>
		<td class="tdContent">起：<input id="" type="text"
			name="pageList[${param.pageIndex }].freqList[0].freqRfb"
			class="txtDefault" style="width: 70%" /></td>
	</tr>
	<tr class="Title3">
		<td class="tdContent">止：<input id="" type="text"
			name="pageList[${param.pageIndex }].freqList[0].freqRfe"
			class="txtDefault" style="width: 70%" /></td>
	</tr>
</table>



<table border="0" cellpadding="0" cellspacing="0"
	style="margin: 0px 0px 0px 0px; width: 330px;">
	<tr style="height: 18.45pt;">
		<td colspan="2" class=" tdTitleLeft Title2">③ 收发信机数据</td>
	</tr>
	<tr class="Title3">
		<td class="tdBorderLeft">型号核准代码</td>
		<td class="tdBorderRight"><input id="" type="text"
			name="pageList[${param.pageIndex }].equ.equAuth" class="txtDefault"
			style="width: 98%" /></td>
	</tr>
	<tr class="Title3">
		<td class="tdBorderLeft">设备型号</td>
		<td class="tdBorderRight"><input id="" type="text"
			name="pageList[${param.pageIndex }].equ.equModel" class="txtDefault"
			style="width: 98%" /></td>
	</tr>
	<tr class="Title3">
		<td class="tdBorderLeft">设备数量</td>
		<td class="tdBorderRight"><input id="" type="text"
			name="pageList[${param.pageIndex }].equT.etEquSum" class="txtDefault"
			style="width: 98%" /></td>
	</tr>
	<tr class="Title3">
		<td class="tdBorderLeft">生产厂家</td>
		<td class="tdBorderRight"><input id="" type="text"
			name="pageList[${param.pageIndex }].equ.equMenu" class="txtDefault"
			style="width: 98%" /></td>
	</tr>
	<tr class="Title3">
		<td class="tdBorderLeft">发射功率</td>
		<td class="tdBorderRight"><input id="" type="text"
			name="pageList[${param.pageIndex }].equ.equPow" class="txtDefault"
			style="width: 45%" /> <input id="radio25" type="radio"
			name="pageList[${param.pageIndex }].equT.etPowU" value="1"
			class="required" /> <label>W</label> <input id="radio26"
			type="radio" name="pageList[${param.pageIndex }].equT.etPowU"
			value="4" class="required" /> <label>dBm</label></td>
	</tr>
</table>

