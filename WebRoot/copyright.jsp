<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>版权</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		#copyright{
			text-align:center;
			color:white;
			width:1396px;
            height:50px;
			padding-top:5px;
			background-image: url(images/top.jpg);
		}
	</style>
  </head>  
  <body>
    <div id="copyright">
    	Copyright © 2010-2020 欣哥工作室 All Rights Reserved<br>
    	联系我们:<font color="bluck">QQ:54169140&nbsp;&nbsp;Tel:18339207935</font>
    </div>
  </body>
</html>
