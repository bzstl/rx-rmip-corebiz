<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 日期控件 -->
<script language="javascript" type="text/javascript" src="<%=basePath%>assets/test-js/My97DatePicker/WdatePicker.js"></script>

</head>
<body>
    <!-- 测试模块 -->
    <form id="setAppForm" action="${pageContext.request.contextPath}/station/submitFormT" method="post">
    
    
  	orgApp:</br>
  	<!-- org_GUID<input type="text" name="orgApp.guid" value="1"/> -->
  	ORG_AREA_CODE <input type="text" name="orgApp.orgAreaCode" value="1"/>
  	ORG_TYPE<input type="text" name="orgApp.orgType" value="1"/></br>
  	
  	orgFee:</br>
  <!-- 	org_GUID<input type="text" name="orgFee.guid" value="2"/> -->
  	ORG_AREA_CODE <input type="text" name="orgFee.orgAreaCode" value="1"/>
  	ORG_TYPE<input type="text" name="orgFee.orgType" value="1"/></br>
  	
  	
  	net:</br>
  	net_GUID<input type="text" name="net.guid" value="1"/>
  	net_org_code<input type="text" name="net.orgCode" value="1"/></br>
  	
  	apply:</br>
<!--   	apply_GUID<input type="text" name="apply.guid" value="1"/> -->
  	ORG_MANAGER_GUID<input type="text" name="apply.orgManagerGuid" value="2"/>
  	APP_CODE<input type="text" name="apply.appCode" value="1"/>
  	APP_TYPE<input type="text" name="apply.appType" value="1"/>
  	APP_SUB_TYPE<input type="text" name="apply.appSubType" value="1"/>
  	APP_OBJECT_TYPE<input type="text" name="apply.appObjectType" value="1"/>
   	APP_FTLB<input class="Wdate" name="apply.appFtlb" value="2016/10/7" type="text" onClick="WdatePicker({dateFmt:'yyyy/M/d'})">
  	APP_FTLE<input class="Wdate" name="apply.appFtle" value="2016/10/6" type="text" onClick="WdatePicker({dateFmt:'yyyy/M/d'})"></br> 
  	
  	
  	appfreqList:</br>
  	appfreq_GUID_1<input type="text" name="appfreqList[0].guid" value="1"/></br>
  	appfreq_GUID_2<input type="text" name="appfreqList[1].guid" value="2"/></br>
  	
  	
  	appfilelistList:</br>
  	appfilelist_GUID1<input type="text" name="appfilelistList[0].guid" value="1"/></br>
  	appfilelist_GUID2<input type="text" name="appfilelistList[3].guid" value="2"/></br> 
  	
  	
  	
  	<select name="orgApp.orgSysCode">  
         <option value="">--请选择--</option>  
             <c:forEach items="${orgSysCodeDic}" var="f">  
             <option value="${f.cn}">${f.codeChiName }</option>  
           	 </c:forEach>  
    </select>
  
    	<input type="submit" value="提交"/>
    </form>
    
</body>
</html>