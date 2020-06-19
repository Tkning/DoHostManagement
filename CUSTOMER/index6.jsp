<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 注册 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<script type="text/javascript" src="../scripts/register.js"></script>
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
							<h1 class="text-center"> R E G I S T O R </h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 第三页第二画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="row" align="center">
					<form name="login_info" action="${pageContext.request.contextPath}/DoServlet/RegistCheck" method="post">
    					<div>用户名 ：
    					<input type="text" value="" name="RegistName" onblur="checkuserName2();"
    						id="userName2" placeholder="请设置用户名">
    						<span id="checkuserName2Result" style="font-size=5px;color: red "></span>
    					</div><br><br><br>
    					<div>手机号 ：
    					<input type="text" value="" name="Registel" onblur="checkTel();" 
    						id="userTel"	placeholder="可用于登录和找回密码">
    						<span id="checkUserTelResult" style="font-size=5px;color: red "></span>
    					</div><br><br><br>
    					<div>&nbsp;密&nbsp;码 ：
   		    			<input type="password" value="" name="RegisPassword1" onblur="checkuserPassword2();"
   		    				id="pwd1" placeholder="请设置登录密码">
   		    		 		<span id="checkuserPassword2Result" style="font-size=1px;color: red "></span>
   		  				</div><br><br><br>
    					<div>确认密码 :
    					<input type="password" value="" name="RegisPassword2" onblur="checkpwd3Result();"
    						id="pwd2" placeholder="请再次输入密码">
    						<span id="checkpwd3Result" style="font-size=10px;color: red "></span>
      					</div><br><br><br>
   		  				<div><input type="submit" class="button1" id="submit" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		  				<input type="reset" class="button1" name="reset2" value="重置">
   		  			</div>
    				</form>
				</div>
			</div>
		</div>
		<!-- 第三页第三画 -->
		<div class="fh5co-parallax" style="background-image: url(../images/hero_3.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
							<h1 class="text-center">DO YOU WANT ANYMORE</h1>
							<p> Let`s go <a href="">MoreRoom</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 第三页第四画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="col-md-12">
					<div class="col-md-6"><h2>Start A Project With Us Now!</h2></div>
				</div>
				<div class="col-md-6"><p><%@include file = "txt/index6_1.txt" %></p></div>
				<div class="col-md-6"><p><%@include file = "txt/index6_2.txt" %></p>
					<p><a href="#" class="btn btn-primary">Get started now!</a></p>
				</div>
			</div>
		</div>
	</div> <!-- END fh5co-wrap -->
	
	<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>

