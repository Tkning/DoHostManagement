<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 反馈 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head>
		<%@include file = "../txt/declare.txt" %>
		<script type="text/javascript" src="../scripts/index3.js"></script>
	</head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "../txt/head4.txt" %>
		<!-- 第四页第一画 -->
		<div class="fh5co-hero" style="background-image: url(../images/hero_3.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
							<h1 class="text-center">登 记</h1>
							<p>细 心 体 现 无 限 服 务 <a href="http://freehtml5.co">come from ：D O！</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 第四页第二画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<h2>请输入需要增加的信息</h2>
					</div>
					<div class="col-md-6 col-md-push-1">
						<form action="index3check.jsp" name="check_info" method="post"> 
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Name" name="name">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="sex" name="sex">
							</div>
							
							<div class="form-group">
								<input type="text" class="form-control" placeholder="tel" name="tel">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="RoomNo" name="room">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="deposit" name="deposit">
							</div>
								<div class="form-group">
								<input type="text" class="form-control" placeholder="R_Style" name="R_Style">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="xxxx/xx/xx" name="in">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="xxxx/xx/xx" name="out">
							</div>
							<div class="form-group">
								<input type="submit" value="Send Message" class="btn btn-primary btn-md">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- END fh5co-wrap -->
<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>