<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table id="formFreq1" border="0" cellpadding="0" cellspacing="0"
	style="margin-left: 0pt; border: none; width: 1000px">
	<tr>
		<td><jsp:include page="formTF_cd.jsp" flush="true">
				<jsp:param value="${param.tabIndex*2 }" name="pageIndex" />
			</jsp:include></td>
		<td><jsp:include page="formTF_cd.jsp" flush="true">
				<jsp:param value="${param.tabIndex*2+1 }" name="pageIndex" />
			</jsp:include></td>
	</tr>
</table>