<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dao.StayDao" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布留言</title>
    
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
    	request.setCharacterEncoding("utf-8");
    	String name=request.getParameter("name");
    	String title=request.getParameter("title");
    	String content=request.getParameter("content");
    	StayDao stay=new StayDao();
    	if(name==null||name.length()==0){
    		out.print("<script language='javascript'>alert('姓名为空！');window.location.href='liuyan.jsp';</script>");
    		return;
    	}
    	if(title==null||title.length()==0){
    		out.print("<script language='javascript'>alert('标题为空！');window.location.href='liuyan.jsp';</script>");
    		return;
    	}
    	if(content==null||content.length()==0){
    		out.print("<script language='javascript'>alert('内容为空！');window.location.href='liuyan.jsp';</script>");
    		return;
    	}
    	int row=stay.insertStay(name, title, content);
    	if(row>0){
    		out.print("<script language='javascript'>alert('发布成功！');window.location.href='liuyan.jsp';</script>");
    	}else{
    		out.print("<script language='javascript'>alert('发布失败！');window.location.href='liuyan.jsp';</script>");
    	}
     %>
  </body>
</html>
