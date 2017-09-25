<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>火柴网-众人拾柴火焰高</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css" />
</head>
<body>
	<!-- 主体内容 -->
	<div class="grzxOuterBox">
		<div class="mainInnerBox">
			<!-- 功能导航区 -->
			<div class="ulView sidebar">
				<br /> <br />
				<ul class="nav nav-sidebar">

				</ul>
			</div>
			<!-- 内容展示区 -->
			<div class="contentView">
				<!-- 内容展示区    头部 -->
				<div class="contentViewtitle">
					<div class="one">
						<div class="img">
							<img alt="头像" src="images/test.jpg">
						</div>
						<div class="show">
							<a href="userinfo" target="contentshow">昵称：<br />
								<h2>${user.getName() }</h2></a>
						</div>
					</div>
					<div class="two">
						<a href="account" target="contentshow">
							<p></p>
							<p>￥${user.getMoney() }</p>
							<p>我的余额</p>
							<p></p>
						</a>
					</div>
					<div class="two">
						<a href="#">
							<p></p>
							<p>${user.getMulmoney() }</p>
							<p>我的抵用券</p>
							<p></p>
						</a>
					</div>
					<div class="two">
						<a href="comment" target="contentshow">
							<p></p>
							<p>${user.getMessage() }</p>
							<p>我的消息</p>
							<p></p>
						</a>
					</div>
				</div>
				<div class="blank"></div>
				<!-- 内容展示区    主体 -->
				<div class="contentViewdata">
					<iframe id="frame" frameborder="0" name="contentshow"
						scrolling="no" src="launch" style="width: 100%;"></iframe>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/usercenter.js"></script>
</body>
</html>