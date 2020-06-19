<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head> <%@include file = "../txt/declare.txt" %></head>
    <body>
     <% 
		//设置请求的编码，用于解决中文乱码问题
		request.setCharacterEncoding("UTF-8");
		//获取登陆的用户名、密码、身份
		String RadioButton =(String) request.getParameter("RadioButton");
		String name1 =(String) request.getParameter("userName1");
		String password1 =(String) request.getParameter("userPassword1");
 		//System.out.print(RadioButton);
        			//获取数据库中的用户名
		boolean flag=false;
   		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";  
   		String url = "jdbc:sqlserver://localhost:1433;DatabaseName=DoHost";  
   		String use = "sa";   
   		String password = "";  
   		Class.forName(driver);  
   		Connection conn= DriverManager.getConnection(url,use,password);  
   		    		//statement->出口
   		String sql=String.format("select * from %s where ID=? and Pwd=?",RadioButton);
   		PreparedStatement stmt =conn.prepareStatement(sql);
   		stmt.setString(1,name1);
   		stmt.setString(2,password1);
   		    		//resultset->进口
   		ResultSet rs=stmt.executeQuery();
   		if (rs.next()) {  
   			flag=true;
   		}
   		else {flag=false;}
   			rs.close();
   		 	stmt.close();
   			conn.close();
		%>
   					<!-- 判断是否是正确的登录用户 RadioButton="CUSTOMER" -->
   		<% if (flag==true){ 
   			if(RadioButton.equals("CUSTOMER")){
   		%>	<script type="text/javascript" language="javascript">
				alert("用户<%=name1%> 恭喜您，登陆成功！请单击确定返回主页面！");
				window.document.location.href="index.jsp";
			</script> 
   		<%}
   			else if(RadioButton.equals("MANAGE")){
   				session.setAttribute("userName1",name1);
	   	%>	<script type="text/javascript" language="javascript">
				alert("员工<%=name1%> 恭喜您，登陆成功！请单击确定返回主页面！");
				window.document.location.href="../MANAGE/index.jsp";
			</script> 
   		<%} 
   			session.setAttribute("Session_M_Name", name1);
   		}
   		else if(flag==false){ //System.out.println(RadioButton);
   		%>
   			<script type="text/javascript" language="javascript">
				alert("很抱歉，您的登陆信息有误，请重新输入！");
				window.document.location.href="index5.jsp";
			</script> 
		<%}%>
    </body>
</html>