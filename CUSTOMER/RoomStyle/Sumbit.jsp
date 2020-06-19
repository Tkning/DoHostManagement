<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 预定 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "txt/declare.txt" %></head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "txt/head.txt" %>
		<!-- 第八页第一画 -->
		<div class="fh5co-hero" style="background-image: url(../../images/hero_4.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
							<h1 class="text-center">SUBMIT YOUR CHOOSE</h1>
							<p>DO YOU CHOOSE YOUR FAVORITE,LET ME SEE.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
			<!-- 第三页第二画 -->
	<div class="fh5co-section">
		<div class="container">
			<div class="row" align="center">
				<form name="login_info" action="SumbitCheck.jsp" method="post">
    				<div>姓名 ：
    					<input type="text" value="" name="C_Name" placeholder="请输入姓名">
    				</div><br>
    				<div>性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    					<input type="radio" value="男" name="C_Sex">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    					<input type="radio" value="女" name="C_Sex">女&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				</div><br>
    				<div>电话 ：
    					<input type="text" value="" name="C_Tel" placeholder="请输入电话号">
    				</div><br>
    				<div>房间类型：
    				<Select name="R_Style" style="width:250px;">
						<option value="1">豪华观景房
						<option value="2">豪华大床房
						<option value="3">行政豪华房
						<option value="4">行政豪华观景房
						<option value="5">商务豪华房
						<option value="6">行政套房
					</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div><br>
    				<div>时间 ：
    					<input type="date" value="" name="CHECK_IN_TIME" > - 
    					<input type="date" value="" name="CHECK_OUT_TIME" >
    				</div><br><br>
   		  			<div>
   		  				<input type="submit" class="button1" name="submit2" onClick="registorCheck()" value="提交">
   		  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		  				<input type="reset" class="button1" name="reset2" value="重置">
   		  			</div>
    			</form>
			</div>
		</div>
	</div>
</div> <!-- END fh5co-wrap -->
<!-- 底部 --><%@include file = "txt/footer.txt" %>
	</body>
</html>