<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 修改信息 -->
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<body>
	<%			//1.加载驱动
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		 	//2.连接
		String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=DoHost";
		String user="sa";  //超级管理员
		String password="";  //密码
		Connection conn=DriverManager.getConnection(url,user,password);
			//3.接收输入信息
		String M_WorkNo =(String) request.getParameter("M_WorkNo");
		String M_Name =(String) request.getParameter("M_Name");
		String M_Sex =(String) request.getParameter("M_Sex");
		String M_Idno =(String) request.getParameter("M_Idno");
		String M_BankNo =(String) request.getParameter("M_BankNo");
		String M_Identity =(String) request.getParameter("M_Identity");
		String M_WorkTime =(String) request.getParameter("M_WorkTime");
			//4.statement->出口,发送sql
		String sql="Update CUSTOMER_INFO set M_WorkNo=? M_Name=? M_Sex=? M_Idno=? M_BankNo=? M_Identity=? M_WorkTime=? where M_Name=%s";
		PreparedStatement stmt = conn.prepareStatement(sql);
			//设置更新值
		stmt.setString(1,M_WorkNo);stmt.setString(2,M_Name);
		stmt.setString(3,M_Sex);stmt.setString(4,M_Idno);
		stmt.setString(5,M_BankNo);stmt.setString(6,M_Identity);stmt.setString(7,M_WorkTime);
			//5.执行更新
		stmt.executeUpdate();
			//6.关闭链接
   	 	stmt.close();conn.close();
	%>
	</body>
</html>