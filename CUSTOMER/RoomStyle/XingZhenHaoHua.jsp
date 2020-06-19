<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 行政豪华房 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "txt/declare.txt" %></head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "txt/head.txt" %>
		<!-- 行政豪华房第一画 -->
		<div class="fh5co-hero" style="background-image: url(images/XingZhenHaoHua1.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
							<h1 class="text-center"> &nbsp&nbsp行  &nbsp&nbsp政  &nbsp&nbsp豪  &nbsp&nbsp华  &nbsp&nbsp房  </h1>
							<br><p>价格：￥806	40m&sup2	大床/双床	有窗 </p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 行政豪华房第二画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="row">
				<!-- 第一图 -->
					<div class="col-md-3 fh5co-staff">
						<img src="images/XingZhenHaoHua2.png" class="img-responsive" >
						<h3>行政豪华房</h3>
						<h4>价格：￥806</h4>
						<p>40m&sup2	大床/双床	有窗</p>
						<form action="Sumbit.jsp">
							<input type="submit" name="HHDC"  value="Choose it!">
							<input type="hidden" name="number"  value="4">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- END fh5co-wrap -->
<!-- 底部 --><%@include file = "txt/footer.txt" %>
	</body>
</html>