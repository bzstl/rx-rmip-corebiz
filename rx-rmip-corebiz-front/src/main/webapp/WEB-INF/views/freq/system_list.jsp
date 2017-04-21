<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<base href="<%=basePath%>" />
<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/freq/layer/layer.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/freq/alloc/system.js"></script>
<script type="text/javascript">
	function changebg(tr){
		$(tr).attr("bgcolor","#eee");
	}
	
	function removebg(tr){
		$(tr).attr("bgcolor","#fff");
	}
	
	// 选中业务系统条件
	function setSystem(tr){
		var systemCode = $(tr).find("td[class='systemCode']").text();
		var systemName = $(tr).find("td[class='systemName']").text();
		setSystemInfo(systemCode,systemName);
	}
</script>
</head>
<body>
	<div style="width: 100%;">
		<span style="font-size: 12px;">业务/应用系统:&nbsp;</span><input type="text" class="input_style_1"
			name="systemNameInput" id="systemNameInput" /> <a href="javascript:;"
			onclick="doSearch()"><span><input class="btn_style_2"
				value="查询" type="button" /></span></a>
	</div>

	<div id="show_table">
		<jsp:include page="system_list_page.jsp" />
	</div>
</body>
</html>
