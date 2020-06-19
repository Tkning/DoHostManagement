<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 反馈 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<body>
		<% request.setCharacterEncoding("UTF-8");	
   			String name =(String) request.getParameter("name");
			String Email =(String) request.getParameter("Email");
			String idea_info =(String) request.getParameter("idea_info");
			//System.out.println(userName2+userPassword3+userTel);
            //把用户名保存到数据库中
            	//1.链接数据库
            	String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=JSPdb";
            	String user = "sa";
            	String pwd = "";
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection conn=DriverManager.getConnection(url,user,pwd);
                //2.发送sql语句
                String sql=String.format("INSERT INTO Content(name,Email,idea_info) VALUES(?,?,?)");
                PreparedStatement stmt=conn.prepareStatement(sql);
                stmt.setString(1,name);
                stmt.setString(2,Email); 
                stmt.setString(3,idea_info); 
                //3.执行更新
                stmt.executeUpdate();
                //4.关闭链接
                stmt.close();
                conn.close();
           %>
           <script type="text/javascript" language="javascript">
				alert("反馈成功！");
				window.document.location.href="index3.jsp";
		</script> 
	</body>
</html>

