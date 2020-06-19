<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 登陆 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html > 
	<head>
		<%@include file = "../txt/declare.txt" %>
		<script type="text/javascript" src="../scripts/login.js"></script>
    </head>
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
							<h1 class="text-center"> L O G I N </h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 第三页第二画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="row" align="center">
					<div class="row" align="center">
					<Form action="${pageContext.request.contextPath}/DoServlet/LoginCheck" name="login">
						<input type="radio" name="RadioButton" value="MANAGE" id="radio1"> <label for="radio1">MANAGE</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="RadioButton" value="CUSTOMER" id="radio2"><label for="radio2">CUSTOMER</label>
						<br><br>
						UserName：&nbsp;
						<input type="text" name="LoginName" size="16" placeholder="请输入用户名"><br><br>&nbsp;&nbsp;&nbsp;
           				PassWord：&nbsp;
           				<input  type="password" name="LoginPassword" size="18" placeholder="请输入密码"><br><br>
						ValidationCode：&nbsp;<input  type="text" name="validationCode" placeholder="请输入验证码"
						onKeyDown="if(event.keyCode==13){login.submit.focus();}" size="6">
            			&nbsp;&nbsp;&nbsp;&nbsp;
            			<%
            				//获取随机数字图片
                		int intmethod1 = (int) ((((Math.random()) * 11)) - 1);
						int intmethod2 = (int) ((((Math.random()) * 11)) - 1);
						int intmethod3 = (int) ((((Math.random()) * 11)) - 1);
						int intmethod4 = (int) ((((Math.random()) * 11)) - 1);
               				//将得到的随机数进行连接
						String intsum = intmethod1 +""+ intmethod2+intmethod3+intmethod4;	
            			%>
           	 				<!-- 设置隐藏域,验证比较时使用-->
            			<span>
            			 <input type="hidden" name="validationCode1" value="<%=intsum%>">	
            				<!-- 将图片名称与得到的随机数相同的图片显示在页面上 --> 
	   					 <img src="../images/<%=intmethod1%>.gif"> <img src="../images/<%=intmethod2%>.gif"> 
           				 <img src="../images/<%=intmethod3%>.gif"><img src="../images/<%=intmethod4%>.gif">  
	   		 			</span><br><br><br>
	   		 			<input type="submit" name="submit1" value="Login" onClick="login()">
           				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           				<input type="reset"  value="Reset">
           				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           				<input type="submit" name="submit1" value="regist" onClick="window.open('index6.jsp')">
						<br><br>
					</Form>
						<input type="button" value="Forget-Password" onclick="window.open('FindPassword.jsp')">
					</div>
				</div>
			</div>
		</div>
		<!-- 第三页第三画 -->
		<div class="fh5co-parallax" style="background-image: url(../images/hero_3.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
							<h1 class="text-center">Do You Want Join Us ?</h1><br><br>
							<p> Let`s go <a href="index6.jsp"> R E G I S T O R </a></p>
						</div>
					</div>
				</div>
			</div>
		</div><!-- END 第三画 -->
	</div> <!-- END fh5co-wrap -->
	<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>