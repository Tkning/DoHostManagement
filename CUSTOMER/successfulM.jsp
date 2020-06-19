<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><%@include file = "../txt/declare.txt" %></head>
<body>
	<%String name1=this.getServletContext().getAttribute("name1");%>
	<script type="text/javascript" language="javascript">
		alert("员工<%=name1%> 恭喜您，登陆成功！请单击确定返回主页面！");
		window.document.location.href="../MANAGE/index.jsp";
	</script> 
</body>
</html>