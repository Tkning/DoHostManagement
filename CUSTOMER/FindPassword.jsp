<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><!-- 查询 -->
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html> 
	<head>
		<%@include file = "../txt/declare.txt" %>
		<script type="text/javascript" src="../scripts/F_input.js"></script>
	</head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 -->
		<%@include file = "../txt/head5.txt" %>
		<!-- 修改密码第一画 -->
	<div class="fh5co-hero" style="background-image: url(../images/hero_2.jpg);">
		<div align="center">
			<div class="fh5co-intro fh5co-table-cell">
				<h1 class="text-center">Find Your Password</h1>
				<p><%@include file = "txt/FindPassword.txt" %></p>
			</div>
		</div>
	</div>
	<!-- 修改密码第二画 -->
	<div class="fh5co-section">
		<div class="container">
			<div class="col-md-6">
				<h3 align="center">Input Tel-Phone Number or UserName when you were registered.</h3>
				<div  align="center">
           		<form name="Find_pwd" action="${pageContext.request.contextPath}/Servlet/FindPassword" method="post">
            		<input type="text" value="" name="F_info">&nbsp; &nbsp; 
              	  <input type="submit" name="submit1" value=" G O " onclick="FindCheck()">
           	 	</form>
           	 	</div>
			</div>
		</div>
	</div>
</div><!-- END fh5co-wrap -->
	<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>