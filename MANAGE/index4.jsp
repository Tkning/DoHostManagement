<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 查询 -->
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "../txt/head2.txt" %>
	<!-- 第二页第一画 -->
	<div class="fh5co-hero" style="background-image: url(../images/hero_2.jpg);">
		<div align="center">
			<div class="fh5co-intro fh5co-table-cell">
				<h1 class="text-center">检索信息</h1>
					<p><br><small>客房信息及客户信息查看</small></p>
					<%
						//1.加载驱动
					Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				    	//2.连接
				    String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=DoHost";
					String user="sa";  //超级管理员
					String password="";  //密码
					Connection conn=DriverManager.getConnection(url,user,password);
					String sql ="select * from Connect";
					PreparedStatement stmt = conn.prepareStatement(sql);
					
					ResultSet rs=stmt.executeQuery(); 
				    while(rs.next()){
				    %>
				    <table><tr>
						<td><%=rs.getString("name") %></td>
						<td><%=rs.getString("Email") %></td>
						<td><%=rs.getString("idea_info") %></td>
					</tr></table>
					<%}%>
					%>
			</div>
		</div>
	</div>
</div>
</body>
</html>