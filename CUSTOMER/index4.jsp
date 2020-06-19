<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 预定 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "../txt/declare.txt" %></head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "../txt/head3.txt" %>
		<!-- 第三页第一画 -->
		<div class="fh5co-hero" style="background-image: url(../images/hero_4.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
							<h1 class="text-center">Choose Your Love</h1>
							<p>Choose one of your favorite room, told me.I`ll give you info!</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 第三页第二画 -->
		<div class="fh5co-section">
			<div class="container">
				<h1 align="center">--->你点图片试试看<---</h1>
				<div class="row">
				<!-- 第一图 -->
					<div class="col-md-4 fh5co-staff">
						<a href="RoomStyle/HaoHuaGuanJing.jsp"><img src="images/HaoHuaGuanJing.jpg" width=300 height=600 class="img-responsive" ></a>
						<h3>豪华景观房</h3>
						<h4>价格：￥806</h4>
						<p>40m&sup2	大床/双床	有窗</p>
					</div>
				<!-- 第二图 -->
					<div class="col-md-4 fh5co-staff">
						<a href="RoomStyle/HaoHuaDaChuang.jsp"><img src="images/HaoHuaDaChuang.jpg" width=300 height=600 class="img-responsive" ></a>
						<h3>豪华大床房</h3>
						<h4>价格：￥901</h4>
						<p>40m&sup2	大床		有窗</p>
					</div>
					<!-- 第三图 -->
					<div class="col-md-3 fh5co-staff">
						<a href="RoomStyle/XingZhenHaoHua.jsp"><img src="images/XingZhenHaoHua.jpg" width=300 height=600 class="img-responsive" ></a>
						<h3>行政豪华房</h3>
						<h4>价格：￥933</h4>
						<p>40m&sup2	大床/双床	有窗</p>
					</div>
					<!--END 图六 后可加入更多 -->
				</div>
			</div>
		</div>
		<!-- 第三页第三画 -->
		<div class="fh5co-parallax" style="background-image: url(../images/hero_3.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
						<!-- 更多房型 -->
							<h1 class="text-center">DO YOU WANT ANYMORE</h1>
							<p> Let`s go <a href="index4_1.jsp">MoreRoom</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 第三页第四画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="col-md-12">
					<div class="col-md-6"><h2>hallo everyone!yo~yo~yo~</h2></div>
				</div>
				<div class="col-md-6">
					<p><%@include file = "txt/index4_1.txt" %></p>
					</div>
				<div class="col-md-6">
					<p><%@include file = "txt/index4_2.txt" %></p>
					<p><a href="index4_1.jsp" class="btn btn-primary">Get started now!</a></p>
				</div>
			</div>
		</div>
	</div> <!-- END fh5co-wrap -->
	
	<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>

