<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body style="margin: 0px 0px 0px 0px; overflow: hidden">
	<table border="0" cellpadding="0" cellspacing="0"
		style="margin: 0px 0px 0px 0px; width: 500px;">
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0"
					style="margin: 0px 0px 0px 0px; width: 500px;">
					<tr class="Title3">
						<td class="tdBorderLeft">信道宽带<input type="hidden"
							name="pageList[${param.pageIndex }].freqT.ftFreqDupdn"
							value="${param.pageIndex%2 }">
						</td>
						<td class="tdBorderRight" colspan="3"><input id=""
							type="text" class="txtDefault"
							name="pageList[${param.pageIndex }].freq.freqEBand" value=""
							style="width: 50%" /> <input id="radio25" type="radio"
							name="radio_ET_POW_U" value="1" class="required" /> <label>kHz</label>
							<input id="radio26" type="radio" name="radio_ET_POW_U" value="4"
							class="required" /> <label>MHz</label></td>
					</tr>
					<tr class="Title3">
						<td class="tdBorderLeft">发射频率</td>
						<td class="tdContent">接收频率</td>
						<td rowspan="7" class="tdContent" align="left"><input
							id="radio25" type="radio" name="radio_ET_POW_U" value="1"
							class="required" /> <label>MHz</label> <br> <input
							id="radio26" type="radio" name="radio_ET_POW_U" value="4"
							class="required" /> <label>GHz</label></td>
						<td class="tdBorderRight">极化</td>
					</tr>
					<c:forEach varStatus="s" begin="0" end="5" step="1">
						<tr class="Title3">
							<td class="tdBorderLeft"><input id="" type="text"
								class="txtDefault"
								name="pageList[${param.pageIndex }].freqList[${s.index }].freqEfb"
								value="" style="width: 98%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault"
								name="pageList[${param.pageIndex }].freqList[${s.index }].freqRfb"
								value="" style="width: 98%" /></td>
							<td class="tdBorderRight"><select id=""
								class="txtDefault combobox-text" style="width: 98%"
								name="pageList[${param.pageIndex }].freqTList[${s.index }].ftFreqFep">
									<option value="">请选择</option>
									<c:forEach var="f" items="${antPoleDic }">
										<option value="${f.cn }">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
						</tr>
					</c:forEach>



					<tr class="Title3">
						<td class="tdBorderLeft" rowspan="2">发射频率范围</td>
						<td class="tdContent">起：<input id="" type="text"
							class="txtDefault"
							name="pageList[${param.pageIndex }].freq.freqEfb" value=""
							style="width: 80%" /></td>
						<td class="tdContent" rowspan="4"><input id="radio25"
							type="radio" name="radio_ET_POW_U" value="1" class="required" />
							<label>MHz</label><br> <input id="radio26" type="radio"
							name="radio_ET_POW_U" value="4" class="required" /> <label>GHz</label>
						</td>
						<td class="tdBorderRight" rowspan="2"><select id=""
							class="txtDefault combobox-text" style="width: 98%"
							name="pageList[${param.pageIndex }].freqT.ftFreqFep">
								<option value="">请选择</option>
								<c:forEach var="f" items="${antPoleDic }">
									<option value="${f.cn }">${f.codeChiName }</option>
								</c:forEach>
						</select></td>
					</tr>

					<tr class="Title3">
						<td class="tdContent">止：<input id="" type="text"
							class="txtDefault"
							name="pageList[${param.pageIndex }].freq.freqEfe" value=""
							style="width: 80%" /></td>
					</tr>

					<tr class="Title3">
						<td class="tdBorderLeft" rowspan="2">接收频率范围</td>
						<td class="tdContent">起：<input id="" type="text"
							class="txtDefault"
							name="pageList[${param.pageIndex }].freq.freqRfb" value=""
							style="width: 80%" /></td>
						<td class="tdBorderRight" rowspan="2"><select id=""
							class="txtDefault combobox-text" style="width: 98%"
							name="pageList[${param.pageIndex }].freqT.ftFreqFrp">
								<option value="">请选择</option>
								<c:forEach var="f" items="${antPoleDic }">
									<option value="${f.cn }">${f.codeChiName }</option>
								</c:forEach>
						</select></td>
					</tr>
					<tr class="Title3">
						<td class="tdContent">止：<input id="" type="text"
							class="txtDefault"
							name="pageList[${param.pageIndex }].freq.freqRfe" value=""
							style="width: 80%" /></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0"
					style="margin: 0px 0px 0px 0px; width: 500px;">
					<tr style="height: 18.45pt;">
						<td class="tdTitleTop Title2" colspan="5">③ 天线数据</td>
					</tr>
					<tr class="Title3">
						<td class="tdBorderLeft">生产厂家</td>
						<td class="tdBorderRight" colspan="4"><input id=""
							type="text" class="txtDefault"
							name="pageList[${param.pageIndex }].ant.antMenu" value=""
							style="width: 80%" /></td>
					</tr>
					<tr class="Title3">
						<td class="tdBorderLeft">天线型号</td>
						<td class="tdContent">天线<br>类型
						</td>
						<td class="tdContent">天线<br>高度
						</td>
						<td class="tdContent">天线<br>增益
						</td>
						<td class="tdBorderRight">天线<br>方位角
						</td>
					</tr>
					<c:forEach varStatus="s" begin="0" end="1" step="1">
						<tr class="Title3">
							<td class="tdBorderLeft"><input id="" type="text"
								class="txtDefault"
								name="pageList[${param.pageIndex }].antList[${s.index }].antModel"
								value="" style="width: 80%" /></td>
							<td class="tdContent"><select id=""
								class="txtDefault combobox-text" style="width: 98%"
								name="pageList[${param.pageIndex }].antList[${s.index }].antType">
									<option value="">请选择</option>
									<c:forEach var="f" items="${antTypeDic }">
										<option value="${f.cn }">${f.codeChiName }</option>
									</c:forEach>
							</select></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault"
								name="pageList[${param.pageIndex }].antList[${s.index }].antHight"
								value="" style="width: 80%" /></td>
							<td class="tdContent"><input id="" type="text"
								class="txtDefault"
								name="pageList[${param.pageIndex }].antList[${s.index }].antEgain"
								value="" style="width: 80%" />m</td>
							<td class="tdBorderRight"><input id="" type="text"
								class="txtDefault"
								name="pageList[${param.pageIndex }].antTList[${s.index }].atAngB"
								value="" style="width: 80%" />°</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0"
					style="margin: 0px 0px 0px 0px; width: 500px;">
					<tr style="height: 18.45pt;">
						<td class="tdTitleTop Title2" colspan="4">④ 馈线数据</td>
					</tr>
					<tr class="Title3">
						<td class="tdBorderLeft">生产厂家</td>
						<td class="tdBorderRight" colspan="3"><input id=""
							type="text" class="txtDefault"
							name="pageList[${param.pageIndex }].feed.feedMenu" value=""
							style="width: 80%" /></td>
					</tr>
					<tr class="Title3">
						<td class="tdBorderLeft">型号</td>
						<td class="tdContent"><input id="" type="text"
							class="txtDefault"
							name="pageList[${param.pageIndex }].feed.feedModel" value=""
							style="width: 80%" /></td>
						<td class="tdContent">长度</td>
						<td class="tdBorderRight"><input id="" type="text"
							class="txtDefault"
							name="pageList[${param.pageIndex }].feed.feedLength" value=""
							style="width: 80%" />m</td>
					</tr>
					<tr class="Title3">
						<td class="tdBorderLeft" colspan="2">馈线系统总损耗</td>
						<td class="tdBorderRight" colspan="2"><input id=""
							type="text" class="txtDefault"
							name="pageList[${param.pageIndex }].feed.feedLose" value=""
							style="width: 80%" />dB</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>