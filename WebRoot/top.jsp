<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>导航页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
		#top{
			width:1396px;
			height:250px;
		}
		ul{
			width:1396px;
			list-style-type: none;
    		margin: 0;
    		padding: 0;
    		overflow: hidden;
    		background-color: #333;
		}
		li {
    		float: left;
    		border-right: 1px solid #bbb;
			}
		.active {
    		background-color: #4CAF50;
				}
		li a {
    		display: block;
    		color: white;
    		text-align: center;
    		padding: 14px 16px;
    		text-decoration: none;
			}

		li a:hover {
    		background-color: #111;
			}
	</style>
  </head>
  
  <body>
  <img id="top" src="images/top_01.jpg" >
    <ul>
  	<li><a class="active" href="index.jsp">主页</a></li>
  	<li><a href="">用户中心</a></li>
  	<li><a href="liuyan.jsp">给我留言</a></li>
    </ul>
  </body>
</html>
