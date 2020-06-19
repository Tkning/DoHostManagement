<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8"%><!-- 首页 -->
<!DOCTYPE html>
<html> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<body>
         <% 
            request.setCharacterEncoding("UTF-8");	
   			String userName2 =(String) request.getParameter("userName2");
			String userPassword3 =(String) request.getParameter("userPassword3");
			String userTel =(String) request.getParameter("userTel");
            		//把用户名保存到数据库中1.链接数据库
            String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=DoHost";
            String user = "sa";
            String pwd = "";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conn=DriverManager.getConnection(url,user,pwd);
               //2.发送sql语句
            String sql=String.format("INSERT INTO CUSTOMER(ID,Pwd,C_Tel) VALUES(?,?,?)");
            PreparedStatement stmt=conn.prepareStatement(sql);
            stmt.setString(1,userName2);
            stmt.setString(2,userPassword3); 
            stmt.setString(3,userTel); 
                //3.执行更新
            stmt.executeUpdate();
                //4.关闭链接
            stmt.close();conn.close();
           %>
		<script type="text/javascript" language="javascript">
			alert("客户<%=userName2%> 恭喜您，注册成功！请单击确定返回主页面！");
			window.document.location.href="index.jsp";
		</script>
	</body>
</html>