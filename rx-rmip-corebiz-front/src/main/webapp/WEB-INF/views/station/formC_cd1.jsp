<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<form id="form1" runat="server">
	<table border="0" cellpadding="0" cellspacing="0"
		style="margin: 0px 0px 0px 0px; width: 1000px;">
		<tr>
			<td align="left"><jsp:include page="formC_cd2.jsp">
					<jsp:param value="${param.tabIndex*3 }" name="pageIndex" />
				</jsp:include></td>
			<td align="center"><jsp:include page="formC_cd2.jsp">
					<jsp:param value="${param.tabIndex*3+1 }" name="pageIndex" />
				</jsp:include></td>
			<td align="right"><jsp:include page="formC_cd2.jsp">
					<jsp:param value="${param.tabIndex*3+2 }" name="pageIndex" />
				</jsp:include></td>
		</tr>
	</table>

</form>
