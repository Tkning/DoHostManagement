<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 反馈 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "../txt/head4.txt" %>
		<!-- 第四页第一画 -->
		<div class="fh5co-hero" style="background-image: url(../images/hero_3.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
					<div class="fh5co-intro fh5co-table-cell">
						<h1 class="text-center">Contact us</h1>
						<p>Made with love by the Do Host at there.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- 第四页第二画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="col-md-5">
					<br><br><h2>聆听 | 您的意见就是我们努力的方向</h2><br>
					<p><%@include file = "txt/index3.txt" %></p>
				</div>
				<div class="col-md-5 col-md-push-1">
					<form action="ContentCheck.jsp" method="post">
						<input type="text" class="form-control" name="name" placeholder="Name"><br>
						<input type="text" class="form-control" name="Email" placeholder="Email"><br>
						<textarea class="form-control" name="idea_info" cols="30" rows="10" placeholder="Idea_Info"></textarea><br>
						<input type="submit" value="Send Idea" class="btn btn-primary btn-md">
					</form>
				</div>
			</div>
		</div>
	</div> <!-- END fh5co-wrap -->
	<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>

