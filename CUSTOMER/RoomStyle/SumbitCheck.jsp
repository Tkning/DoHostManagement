<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 查询 -->
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head><%@include file = "txt/declare.txt" %></head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");	
			//1.加载驱动
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    	//2.连接
	    String url = "jdbc:sqlserver://localhost:1433;databaseName=DoHost";
		String user="sa";  //超级管理员
		String password="";  //密码
		Connection conn=DriverManager.getConnection(url,user,password);
			//3.接收输入信息
		String C_Name =(String)request.getParameter("C_Name");
		String C_Tel =(String)request.getParameter("C_Tel");
		String C_Sex =(String)request.getParameter("C_Sex");
		String R_No =(String)request.getParameter("R_No");
		String R_Deposit =(String)request.getParameter("R_Deposit");
		String R_Style =(String)request.getParameter("R_Style"); 
		if(R_Style.equals("1")) R_Style = "HHDCF";
		if(R_Style.equals("2")) R_Style = "HHGJF";
		if(R_Style.equals("3")) R_Style = "SWHHF";
		if(R_Style.equals("4")) R_Style = "XZHHF";
		if(R_Style.equals("5")) R_Style = "XZHHGJF";
		if(R_Style.equals("6")) R_Style = "XZTF";
		//var CHECK_IN_TIME = document.getElementById("CHECK_IN_TIME");
		String CHECK_IN_TIME =(String)request.getParameter("CHECK_IN_TIME");
		String CHECK_OUT_TIME =(String)request.getParameter("CHECK_OUT_TIME");
			//测试接收数据System.out.println(CHECK_IN_TIME);
			//4.statement->出口,发送sql
		String sql =String.format("INSERT INTO CUSTOMER_INFO(C_Name,C_Sex,C_Tel,R_No,R_Deposit,R_Style,CHECK_IN_TIME,CHECK_OUT_TIME) VALUES(?,?,?,?,?,?,?,?)");
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1,C_Name);
		stmt.setString(2,C_Sex);
		stmt.setString(3,C_Tel);
		stmt.setString(4,R_No);
		stmt.setString(5,R_Deposit);
		stmt.setString(6,R_Style);
		stmt.setString(7,CHECK_IN_TIME);
		stmt.setString(8,CHECK_OUT_TIME);
		stmt.executeUpdate();
		stmt.close();
        conn.close();
	%>
	<script type="text/javascript" language="javascript">
		alert("客户<%=C_Name%> 恭喜您，您的预定已经提交成功，请等待后台确认！");
		window.document.location.href="../index.jsp";
	</script>
</body>
</html>