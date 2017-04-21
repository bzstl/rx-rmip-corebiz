<%@page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<style>
.iframs{
	height: 700px;
	width: 800px;
}

<!--

-->
</style>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>UI Elements - Ace Admin</title>

		<meta name="description" content="Common UI Features &amp; Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<script src="<%=basePath%>assets/js/testjs/jquery.js"></script>
<script src="<%=basePath%>assets/js/testjs/awsui.js"></script>
<script src="<%=basePath%>assets/js/testjs/aws.pc.all.js"></script>
	</head>



	<body class="no-skin">

		hello
		
		
	</body>
	
	
	
</html>

<script type="text/javascript">
function doLogin(){
	var param = {
			cmd : 'CONSOLE_ADMIN_LOGIN',
			userid : "admin",
			pwd : "123456",
			lang : "cn"
		};
		awsui.ajax.request({
			type : "POST",
			url : "http://localhost:8088/portal/r/jd",
			dataType : "json",
			data : param,
			alert : false,
			success : function(r) {
					alert(r.data.sid);
			}
		});
}
alert("df");
doLogin();
</script>
