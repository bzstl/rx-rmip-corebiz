<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>测试</title>
</head>
<body>
<c:forEach var="service" items="${frmServices}">
	${service.value.serviceName} ${service.value.serviceCode}<br/>
</c:forEach>
</body>
</html>