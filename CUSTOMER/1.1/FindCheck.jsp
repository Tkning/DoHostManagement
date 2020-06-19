<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><!-- 查询 -->
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "../txt/head5.txt" %>
		<!-- 修改密码第一画 -->
		<div class="fh5co-hero" style="background-image: url(../images/hero_2.jpg);">
			<div align="center">
				<div class="fh5co-intro fh5co-table-cell">
					<h1 class="text-center">Find Your Password</h1>
					<p><br><small>If you foget your Password or your Username,come here!</small></p>
				</div>
			</div>
		</div>
		<%
			request.setCharacterEncoding("UTF-8");
				//1.加载驱动
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				//2.连接
			String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=DoHost";
			String user="sa";  //超级管理员
			String password="";  //密码
			Connection conn=DriverManager.getConnection(url,user,password);
				//3.接收输入信息
			String F_info =(String)request.getParameter("F_info");
			System.out.println(F_info);
				//4.statement->出口,发送sql
			String sql ="select * from CUSTOMER where ID=? or Pwd=?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1,F_info);
			stmt.setString(2,F_info);
				//5.resultset->进口，接收数据
			ResultSet rs=stmt.executeQuery();  
			while(rs.next()){
		%>
		<!-- 修改密码第二画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="col-md-6">
					Your Username:  <%=rs.getString("ID")%><br>
					Your Password:  <%=rs.getString("Pwd")%><br>
					Your Tel-Phone:  <%=rs.getString("C_Tel")%><br>
				</div>
			</div>
		</div>
        <%}rs.close();stmt.close();conn.close();%> 
	</div><!-- END fh5co-wrap -->
	<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>