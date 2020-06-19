<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 修改信息 -->
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<!-- 验证是否为空 -->
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "../txt/head5.txt" %>
		<!-- 第三页第一画 -->
		<div class="fh5co-hero" style="background-image: url(../images/hero_4.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
							<h1 class="text-center"> M O D I F Y-Y O U-I N F O </h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 第三页第二画 -->
		<div class="fh5co-section">
			<div class="container">
			<div class="row" align="center"><h1>Information of Manage</h1><br>			
				<%//1.加载驱动
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			    	//2.连接
			    String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=DoHost";
				String user="sa";  //超级管理员
				String password="";  //密码
				Connection conn=DriverManager.getConnection(url,user,password);
					//3.接收输入信息
        		//System.out.println("2.M_index5_session:"+Session_M_Name);
					//4.statement->出口,发送sql
				String sql="select * from MANAGE_INFO where M_Name=?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setString(1,Session_M_Name);
					//5.resultset->进口，接收数据
			    ResultSet rs=stmt.executeQuery(); 
			    while(rs.next()){
			    %>
			    <Form action="index5check.jsp" name="login">
					WorkNo: 
					<input type="text" name="M_WorkNo" value="<%=rs.getString("M_WorkNo") %>" readonly="readonly"><br><br><br>
					Name: 
					<input type="text" name="M_Name" value="<%=rs.getString("M_Name") %>"><br><br><br>
					Sex: 
					<input type="text" name="M_Sex" value="<%=rs.getString("M_Sex") %>"><br><br><br>
					Idno:
					<input type="text" name="M_Idno" value="<%=rs.getString("M_Idno") %>"> <br><br><br>
					BankNo: 
					<input type="text" name="M_BankNo" value="<%=rs.getString("M_BankNo") %>"><br><br><br>
					Identity:
					<input type="text" name="M_Identity" value="<%=rs.getString("M_Identity") %>"><br><br><br>
					WorkTime:
					<input type="text" name="M_WorkTime" value="<%=rs.getString("M_WorkTime") %>"><br><br><br>
				</Form>
				<%}%>
				</div>
			</div>
		</div>
	</div> <!-- END fh5co-wrap -->
	<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>

