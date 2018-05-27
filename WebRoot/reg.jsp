<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page import="bean.User" %>
<%@ page import="util.DB" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
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
  		String name=request.getParameter("name");
  		String pwd=request.getParameter("pwd");
  		ResultSet rest=User.check(name, pwd);
  		if(rest.next()){
  			out.print("<script language='javascript'>alert('用户名存在！');window.location.href='reg.jsp';</script>");
  		}else{
  			Connection conn=DB.getConn();
  			int n=DB.insertUser(conn, name, pwd);
  			if(n>0){
  				session.setAttribute("name", name);
  				session.setAttribute("pwd", pwd);
  				out.print("<script language='javascript'>alert('添加成功！');window.location.href='reginfo.jsp';</script>");
  			}
  		}
   %>
    <form action="reg.jsp" method="post">
    	<table align="center">
    		<tr>
    			<td>用户名:</td>
    			<td><input type="text" name="name"></td>
    		</tr>
			<tr>
    			<td>密码:</td>
    			<td><input type="password" name="pwd"></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="注册">&nbsp
    			<a href="UserLogin.jsp">返回登录</a></td>
    		</tr>
    	</table>
    </form>
    <jsp:include page="copyright.jsp" />
  </body>
</html>
