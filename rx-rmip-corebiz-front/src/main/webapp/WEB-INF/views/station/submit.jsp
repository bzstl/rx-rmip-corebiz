<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String s=(String)request.getParameter("orgApp.guid"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
提交的数据：guid=${applyVo.orgApp.guid} orgAreaCode=${applyVo.orgApp.orgAreaCode}  orgType=${applyVo.orgApp.orgType}
</body>
</html>