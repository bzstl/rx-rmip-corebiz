<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style type="text/css">
div.pagination {
	padding-right: 3px;
	padding-left: 3px;
	padding-bottom: 3px;
	margin: 3px;
	padding-top: 3px;
	text-align: center
}

div.pagination a {
	border-right: #ddd 1px solid;
	padding-right: 5px;
	border-top: #ddd 1px solid;
	padding-left: 5px;
	padding-bottom: 2px;
	border-left: #ddd 1px solid;
	color: #2FA4E7;
	font-size:14px;
	margin-right: 2px;
	padding-top: 2px;
	border-bottom: #ddd 1px solid;
	text-decoration: none
}

div.pagination a:hover {
	border-right: #a0a0a0 1px solid;
	padding-right: 5px;
	border-top: #a0a0a0 1px solid;
	padding-left: 5px;
	padding-bottom: 2px;
	border-left: #a0a0a0 1px solid;
	margin-right: 2px;
	padding-top: 2px;
	border-bottom: #a0a0a0 1px solid
}

div.pagination a:active {
	border-right: #a0a0a0 1px solid;
	padding-right: 5px;
	border-top: #a0a0a0 1px solid;
	padding-left: 5px;
	padding-bottom: 2px;
	border-left: #a0a0a0 1px solid;
	margin-right: 2px;
	padding-top: 2px;
	border-bottom: #a0a0a0 1px solid
}

div.pagination span.current {
	border-right: #e0e0e0 1px solid;
	padding-right: 5px;
	border-top: #e0e0e0 1px solid;
	padding-left: 5px;
	font-weight: bold;
	padding-bottom: 2px;
	border-left: #e0e0e0 1px solid;
	color: #2FA4E7;
	margin-right: 2px;
	padding-top: 2px;
	border-bottom: #e0e0e0 1px solid;
	background-color: #f0f0f0
}

div.pagination span.disabled {
	border-right: #f3f3f3 1px solid;
	padding-right: 5px;
	border-top: #f3f3f3 1px solid;
	padding-left: 5px;
	padding-bottom: 2px;
	border-left: #f3f3f3 1px solid;
	color: #ccc;
	margin-right: 2px;
	padding-top: 2px;
	border-bottom: #f3f3f3 1px solid
}
div.pagination input{
	border: 1px solid #f3f3f3;
    width: 22px;
    padding: 2px;
}
</style>
<%-- 
<script type="text/javascript">
function pageGo() {
	var val = $.trim($("#jumpPage").val());
	var patrn = /^[0-9]{1,8}$/;
	if (!patrn.exec(val) || (val < 1) || (val >  Number('${page.pages}'))) {
		$("#jumpPage").val("");
		return;
	}
	
	var url = "${page.url}";
	if (url.indexOf("#pageNum#") > 0) {
		url = url.replace("#pageNum#", val);
	}
	window.location.href = url;
}
</script>
 --%>
<div class="pagination">
	<a href="javascript:doSearch(1)">首页</a>
	<c:choose>
		<c:when test="${page.hasPreviousPage}">
			<a href="javascript:doSearch(${page.prePage})">上一页</a>
		</c:when>
		<c:otherwise>
			<span  style="fonti-size:14px;color:#2FA4E7;">上一页</span>
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${page.pages <= 5}">
			<c:forEach var="i" begin="1" end="${page.pages}" step="1">
				<c:choose>
				<c:when test="${page.pageNum == i}">
					<span class="current">${i}</span>
				</c:when>
				<c:otherwise>
					<a href="javascript:doSearch(${i})">${i}</a>
				</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:when>
		<c:when test="${page.pageNum <= 3}">
			<c:forEach var="i" begin="1" end="5" step="1">
				<c:choose>
				<c:when test="${page.pageNum == i}">
					<span class="current">${i}</span>
				</c:when>
				<c:otherwise>
					<a href="javascript:doSearch(${i})">${i}</a>
				</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:when>
		<c:when test="${page.pageNum >= (page.pages - 2)}">
			<c:forEach var="i" begin="${page.pages - 4}" end="${page.pages}" step="1">
				<c:choose>
				<c:when test="${page.pageNum == i}">
					<span class="current">${i}</span>
				</c:when>
				<c:otherwise>
					<a href="javascript:doSearch(${i})">${i}</a>
				</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<c:forEach var="i" begin="${page.pageNum - 2}" end="${page.pageNum + 2}" step="1">
				<c:choose>
				<c:when test="${page.pageNum == i}">
					<span class="current">${i}</span>
				</c:when>
				<c:otherwise>
					<a href="javascript:doSearch(${i})">${i}</a>
				</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${page.hasNextPage}">
			<a href="javascript:doSearch(${page.nextPage})">下一页</a>
		</c:when>
		<c:otherwise>
			<span style="fonti-size:14px;color:#2FA4E7;">下一页</span>
		</c:otherwise>
	</c:choose>
	<a  href="javascript:doSearch(${page.pages})">尾页</a>
	&nbsp;&nbsp;<span style="fonti-size:14px;color:#2FA4E7;">跳&nbsp;<input type="text"  style="width:50px;border:1px solid #b5b5b5;"  id="jumpPage" title="按回车键跳转" onkeypress="if (event.keyCode == '13') { var val = $.trim(this.value); var patrn = /^[0-9]{1,8}$/; if (!patrn.exec(val) || (val < 1) || (val >  Number('${page.pages}'))) { this.value = ''; return false; } doSearch(this.value); }"/>/${page.pages}页
	</span><%-- &nbsp;<a onclick="javascript:pageGo();">跳转</a> --%>
</div>
