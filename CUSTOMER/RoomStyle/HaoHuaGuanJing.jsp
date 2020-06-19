<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 豪华景观房 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "txt/declare.txt" %></head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "txt/head.txt" %>
		<!-- 豪华景观房第一画 -->
		<div class="fh5co-hero" style="background-image: url(images/HaoHuaGuanJing1.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
							<h1 class="text-center"> &nbsp&nbsp豪  &nbsp&nbsp华  &nbsp&nbsp景  &nbsp&nbsp观  &nbsp&nbsp房  </h1>
							<br><p>价格：￥806	40m&sup2	大床/双床	有窗 </p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 豪华景观房第二画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="row">
				<!-- 第一图 -->
					<div class="col-md-3 fh5co-staff">
						<h1 align="center">详细信息</h1><br><br>
						<img src="images/HaoHuaGuanJing2.jpg" ><br>
						<br><h4>价格：￥806</h4>
						<p>40m&sup2	大床/双床	有窗</p>
						<img src="images/HaoHuaGuanJing3.jpg" >
						<form action="Sumbit.jsp">
							<input type="submit" name="HHDC"  value="Choose it!">
							<input type="hidden" name="number"  value="2">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- END fh5co-wrap -->
	<!-- 底部 --><%@include file = "txt/footer.txt" %>
	</body>
</html>