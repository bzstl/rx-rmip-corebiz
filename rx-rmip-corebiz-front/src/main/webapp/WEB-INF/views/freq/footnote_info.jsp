<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>测试</title>
</head>
<body>
	<c:if test="${footnote.footnoteCode != null}">
		<table style="width: 100%; border-collapse: collapse;font-size:12px;" border="1">
			<tr>
				<td width="15%">脚注代码</td>
				<td>${footnote.footnoteCode}</td>
			</tr>
			<tr>
				<td>脚注性质</td>
				<td>${footnote.footnoteProperty}</td>
			</tr>
			<tr>
				<td>脚注分类</td>
				<td>${footnote.footnoteClass}</td>
			</tr>
			<tr>
				<td>脚注内容</td>
				<td>${footnote.footnoteContent}</td>
			</tr>
			<tr>
				<td>备注</td>
				<td>${footnote.footnoteNote}</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${footnote.footnoteCode == null}">
		<span style="color:red;font-weight:bold;">此脚注已删除</span>
	</c:if>
</body>
</html>