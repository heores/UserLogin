<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DB"%>
<%@page import="bean.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户检查</title>
    
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
    	String username=request.getParameter("username");
    	String password=request.getParameter("password");
    	Connection conn=DB.getConn();
    	ResultSet rest=User.check(username, password);
    	
    		if(!rest.next()){
    			out.print("<script language='javascript'>alert('用户名不存在！');window.location.href='UserLogin.jsp';</script>");
    		}else{
    			if(!password.equals(rest.getString("password"))) {
					out.print("<script language='javascript'>alert('密码错误哦！');window.location.href='UserLogin.jsp';</script>");
				}else{
					//判断用户是否勾选了一周内免登录复选框
					String []checked=request.getParameterValues("userCookie");
					if(checked!=null&&checked.length>0){
						//把用户名或密码保存在Cookie对象里面
						Cookie usernameCookie=new Cookie("username",username);
						Cookie passwordCookie=new Cookie("password",password);
						usernameCookie.setMaxAge(604800);//设置保存时间
						passwordCookie.setMaxAge(604800);
						response.addCookie(usernameCookie);
						response.addCookie(passwordCookie);
					}else{
						Cookie[] cookies=request.getCookies();
						if(cookies!=null&&cookies.length>0){
							for(Cookie c:cookies){
								if(c.getName().equals("username")||c.getName().equals("password")){
									c.setMaxAge(0);//设置失效
									response.addCookie(c);//重新保存
								}
							}
						}
					}
					session.setAttribute("username", username);
					response.sendRedirect("index.jsp");
				}								
    		}
     %>
  </body>
</html>
