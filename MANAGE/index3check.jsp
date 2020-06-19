<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head><%@include file = "../txt/declare.txt" %></head>
    <body bgcolor="#0081a6">
    <div align=center>
    <h1>录 入 结 果 </h1><br>
        <% 
            request.setCharacterEncoding("UTF-8");	
   			String name =(String) request.getParameter("name");
			String sex =(String) request.getParameter("sex");
			String tel =(String) request.getParameter("tel");
			String room =(String) request.getParameter("room");
			String deposit =(String) request.getParameter("deposit");
			String R_Style =(String) request.getParameter("R_Style");
			String in =(String) request.getParameter("in");
			String out1 =(String) request.getParameter("out");
         %>	
         <div align="center" >
         <% 
            out.println("录 入 信 息 如 下：");
			out.println(name);
			out.println(sex);
			out.println(tel);
			out.println(room);
			out.println(deposit);
			out.println(R_Style);
			out.println(in);
			out.println(out1);
         %>	
         </div>
         <%
            //把用户名保存到数据库中
            	String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=DoHost";
            	String user = "sa";
            	String pwd = "";
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection conn=DriverManager.getConnection(url,user,pwd);
                PreparedStatement stmt=conn.prepareStatement("INSERT INTO CUSTOMER_INFO(C_name,C_sex,C_tel,R_No,R_Deposit,R_Style,Check_in_time,Check_out_time) VALUES(?,?,?,?,?,?,?,?)");
                stmt.setString(1,name);
                stmt.setString(2,sex);     
                stmt.setString(3,tel); 
                stmt.setString(4,room);
                stmt.setString(5,deposit); 
                stmt.setString(6,R_Style);
                stmt.setString(7,in);
                stmt.setString(8,out1); 
                stmt.executeUpdate();
                stmt.close();
                conn.close();
           %>
       <br><br><br><br>
       <input type="button" value="返回" onclick="window.location.href=('index3.jsp')">
       </div>
	</body>
</html>	
       