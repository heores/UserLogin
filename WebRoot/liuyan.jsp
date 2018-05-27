<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dao.StayDao" %>
<%@ page import="bean.Stay" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>添加留言</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	#table1{

			border:1px solid gray;
			border-collapse:collapse;
	}
	#table1 th{
		width: 60px;
	}
	#table1 td{
		text-align: center;
	}
</style>
  </head>
  <body>
  <jsp:include page="top.jsp" />
  <font color="red">当前位置>>给我留言</font>
  <%
  			StayDao staydao=new StayDao();
  			ArrayList<Stay> list=staydao.getAllStays();
  			if(list!=null&&list.size()>0){
  			for(int i=0;i<list.size();i++)
	        {
	             Stay stay = list.get(i);	 
  			%>
  				<table id="table1" align="center" width="450" height="50" cellpadding="0" cellspacing="0" border="1">
  					 <tr>
  					 	<th>id:</th>  
  					 	<td><%=stay.getId() %></td>					 												
  					 </tr>
  					 <tr>
  					 	<th>标题:</th>	
  					 	<td><%=stay.getTitle()%></td>
  					 </tr>
  					 <tr>
  					 	<th>姓名:</th>
  					 	<td><%=stay.getName() %></td>
  					 </tr>
  					 <tr>
  					 	<th>内容:</th>
  					 	<td><%=stay.getContent() %></td>
  					 </tr>
  				</table><br>
  			<%	
  			}					 	
  					 	}
  				 %>
  	<form action="liuyan_do.jsp" method="post">
  		 <table align="center">
    	<tr>
    		<td>留言人:</td>
    		<td><input type="text" name="name"></td>
    	</tr>
    	<tr>
    		<td>标题:</td>
    		<td><input type="text" name="title"></td>
    	</tr>
    	<tr>
    		<td>内容:</td>
    		<td><textarea name="content" rows="6" cols="53"></textarea></td>
    	</tr>
    	<tr>
    		<td></td>
    		<td><input type="submit" value="发布"></td>
    	</tr>
    </table>
  	</form>
  	<jsp:include page="copyright.jsp" />
  </body>
</html>
