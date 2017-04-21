<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<style type="text/css">
.dataTable {
	cell-spacing: 0;
	border-collapse: collapse;
	border-spacing: 0;
	font-size:12px;
}

td {
	cursor: pointer;
}
</style>

<!-- 用户订单列表 -->
<div id="search_result" class="search_result">
	<table id="tb" border="1" class="dataTable" style="width:100%;">
		<tbody>
			<tr bgcolor="#eee">
				<th>序号</th>
				<th>系统代码</th>
				<th>系统名称</th>
				<th>系统备注</th>
				<th>服务代码</th>
			</tr>
			
			<c:if test="${empty page.list}">
				<tr>
					<td colspan="5">没有符合条件的数据</td>
				</tr>
			</c:if>
			
			<c:forEach var="system" items="${page.list}" varStatus="status">
				<tr onmouseover="changebg(tr_${status.index + 1})" ondblclick="setSystem(tr_${status.index + 1})"
					onmouseleave="removebg(tr_${status.index + 1})" id="tr_${status.index + 1}">
					<td>${status.index + 1}</td>
					<td class="systemCode">${system.systemCode}</td>
					<td class="systemName">${system.systemName}</td>
					<td>${system.systemNote}</td>
					<td>${system.serviceCode}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<c:if test="${!empty page.list}">
		<%@ include file="/WEB-INF/common/ajaxpage.jsp"%>
	</c:if>
</div>
