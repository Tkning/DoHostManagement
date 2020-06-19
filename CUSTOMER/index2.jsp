<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8"%><!-- 查询 -->
<!DOCTYPE html>
<html> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<!-- 验证是否为空 -->
	<script type="text/javascript" src="../scripts/index2.js"></script>
	<body>
	<div id="fh5co-wrap">
	<!-- 顶部功能栏 --><%@include file = "../txt/head2.txt" %>
	<!-- 第二页第一画 查询 -->
	<div class="fh5co-hero" style="background-image: url(../images/hero_2.jpg);">
		<div align="center">
			<div class="fh5co-intro fh5co-table-cell">
				<h1 class="text-center">SELECT YOUR INFO</h1><br>
            	<form name="search" action="" class="col-md-12">
            		<input type="text" id="s1" name="info" value="" size="30" onClick="search_nope()"> 
					<input type="submit" name="submit1" onClick="search();">
				</form>
				<br><span id="search_n" style="font-size:10px;color:white"></span>
				<p><br><%@include file = "txt/index2.txt" %></p>
			</div>
		</div>
	</div>
	<!-- 第二页第二画 -->
	<div class="fh5co-section">
		<div class="col-md-6">
			<h2 align="center">阿渡为你搜索到如下结果：</h2>
		</div>
		<table border=2 align="center" width="80%">
          	<tr>
          		<td> C_Name &nbsp;</td><td> C_Sex &nbsp;</td><td> C_Tel &nbsp;</td>
				<td> R_No &nbsp;</td><td> R_Deposit &nbsp;</td><td> R_Style &nbsp;</td>
				<td> CHECK_IN_TIME &nbsp;</td><td> CHECK_OUT_TIME &nbsp;</td>
            </tr>
           <%
           if(Session_M_Name==null){
           %>
				<script type="text/javascript" language="javascript">
					alert("请先登陆后再试！");
					window.document.location.href="../CUSTOMER/index5.jsp";
				</script> 
           <%}
           else{
          			//1.加载驱动
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    			//2.连接
	    		String url = "jdbc:sqlserver://localhost:1433;databaseName=DoHost";
				String user="sa";  //超级管理员
				String password="";  //密码
				Connection conn=DriverManager.getConnection(url,user,password);
					//3.接收输入信息
				String info =(String)request.getParameter("info");
					//测试接收数据
					//System.out.println(info);
					//4.statement->出口,发送sql
				String sql ="select * from CUSTOMER_INFO where C_Name=? or C_Tel=? or R_No=?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setString(1,info);
				stmt.setString(2,info);
				stmt.setString(3,info);
					//5.resultset->进口，接收数据
	   	 		ResultSet rs=stmt.executeQuery();
	   			while(rs.next()){
	   		%>
				<tr align="center">
            	   <td><%=rs.getString("C_Name")%> </td><td><%=rs.getString("C_Sex")%> </td>
            	   <td><%=rs.getString("C_Tel")%> </td><td><%=rs.getString("R_No")%> </td>
            	   <td><%=rs.getString("R_Deposit")%> </td><td><%=rs.getString("R_Style")%> </td>
            	   <td><%=rs.getString("CHECK_IN_TIME")%> </td><td><%=rs.getString("CHECK_OUT_TIME")%> </td>
            	</tr>
        	<%
         		}
				rs.close();stmt.close();conn.close();
			%>
			<%} %>
        </table>
	</div><!-- END 第二画 -->
</div><!-- END fh5co-wrap -->
	<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>