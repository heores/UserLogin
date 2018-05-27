<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page import="bean.User" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  		String username="";
  		String password="";
  		Cookie[] cookies=request.getCookies();
  		if(cookies!=null&&cookies.length>0){
  			for(Cookie c:cookies){
  				if(c.getName().equals("username")){
  					username=c.getValue();
  				}
  				if(c.getName().equals("password")){
  					password=c.getValue();
  				}
  			}
  		}
   %>
   <br>
    <form action="loginCheck.jsp" method="post">
    	<input type="hidden" name="action" value="login"/>
    	<table align="center">
    		<tr>
    			<td>用户名:</td>
    			<td><input type="text" name="username" value="<%=username%>"></td>
    		</tr>
    		<tr>
    			<td>密码:</td>
    			<td><input type="password" name="password" value="<%=password%>"></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="checkbox" name="userCookie" checked="checked">一周内免登录</td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="登录">&nbsp&nbsp
    			<a href="reg.jsp">注册</a></td>
    		</tr>
    	</table>
    </form>
    <jsp:include page="copyright.jsp" />
  </body>
</html>
