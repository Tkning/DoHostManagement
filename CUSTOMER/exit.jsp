<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 反馈 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<body>
		<%session.removeAttribute("Session_M_Name"); %>
		<script type="text/javascript" language="javascript">
				alert("退出成功！");
				window.document.location.href="index5.jsp";
		</script> 
	</body>
</html>

