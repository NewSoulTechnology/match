<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/userinfo.css" />
</head>
<body>
	<div id="modal-overlay">
		<div class="success-popup"></div>
	</div>
	<div class="userinfocontent">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active"><a href="#base" data-toggle="tab"> 基本资料 </a>
			</li>
			<li><a href="#identify" data-toggle="tab">实名认证</a></li>
			<li><a href="#creatcard" data-toggle="tab">银行卡绑定</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="base">
				<!-- 基本资料的模块 -->
				<div class="grzxFGCBox clearfix">
					<label class="grzxFGLabel">手机:</label>
					<c:choose>
						<c:when test="${!empty user.getCellphone() }">
							<div class="grzxFGCBox">
								<div class="binding">
									<p>${user.getCellphone() }</p>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="grzxFGCBox">
								<div class="binding">
									<a id="cellphone" href="#" style="text-align: center;">绑定手机</a>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="grzxFGCBox clearfix">
					<label class="grzxFGLabel">邮箱:</label>
					<c:choose>
						<c:when test="${!empty user.getEmail() }">
							<div class="grzxFGCBox">
								<div class="binding">
									<p>${user.getEmail() }</p>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="grzxFGCBox">
								<div class="binding">
									<a id="email" href="#" style="text-align: center;">绑定邮箱</a><span
										class="mail-tag">绑定邮箱，优质项目优先推送</span>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="grzxFGCBox clearfix">
					<label class="grzxFGLabel">头像:</label>
					<div class="grzxFGCBox">
						<div class="grzlCountPic">
							<div class="grzlCountPicBox siteCircleBox">
								<img alt="头像" src="images/test.jpg">
							</div>
							<div class="grzlCountPicText">
								<input type="file" value="选择图片"
									style="height: 20px; line-height: 20px; width: 70px;">
								<p class="textP">支持JPG,JPEG,GIF,PNG,BMP格式，且不超过5M</p>
							</div>
						</div>
					</div>
				</div>
				<div class="grzxFGCBox clearfix">
					<label class="grzxFGLabel">用户名:</label>
					<div class="grzxFGCBox sitePHBox">
						<span><input type="text" value="${user.getName() }"
							style="height: 30px;"></span><span class="error"></span>
					</div>
				</div>
				<div class="grzxFGCBox clearfix">
					<label class="grzxFGLabel">性别:</label>
					<c:choose>
						<c:when test="${!empty user.getGender() }">
							<c:if test="${user.getGender() eq 'man' }">
								<div class="grzxFGCBox">
									<div class="binding">
										<label><input type="radio" name="gender" value="man"
											checked="checked">男</label> <label><input
											type="radio" name="gender" value="womanman">女</label>
									</div>
								</div>
							</c:if>
							<c:if test="${user.getGender() eq 'woman' }">
								<div class="grzxFGCBox">
									<div class="binding">
										<label><input type="radio" name="gender" value="man">男</label>
										<label><input type="radio" name="gender"
											value="womanman" checked="checked">女</label>
									</div>
								</div>
							</c:if>
						</c:when>
						<c:otherwise>
							<div class="grzxFGCBox">
								<div class="binding">
									<label><input type="radio" name="gender" value="man">男</label>
									<label><input type="radio" name="gender"
										value="womanman">女</label>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="grzxFGCBox clearfix">
					<label class="grzxFGLabel">城市:</label>
					<div class="grzxFGCBox">
						<div class="grzxFGCBox" style="width: 80px;">
							<select id="city" style="width: 100%; height: 30px;"><option
									value="volvo">请选择</option></select>
						</div>
						<div class="grzxFGCBox" style="width: 80px;">
							<select id="subcity" style="width: 100%; height: 30px;"><option
									value="volvo">请选择</option></select>
						</div>
						<span class="error"></span>
					</div>
				</div>
				<div class="grzxFGCBox clearfix">
					<label class="grzxFGLabel">简介:</label>
					<c:choose>
						<c:when test="${!empty user.getDescript() }">
							<div class="grzxFGCBox sitePHBox">
								<span> <textarea rows="5" cols="7" style="width: 400px;">${user.getDescript() }</textarea>
								</span>
							</div>
						</c:when>
						<c:otherwise>
							<div class="grzxFGCBox sitePHBox">
								<span> <textarea rows="5" cols="7" style="width: 400px;"
										placeholder="写几句个人介绍，让大家很快了解你吧～"></textarea>
								</span>
							</div>
						</c:otherwise>
					</c:choose>

				</div>
				<div class="grzxFGCBox clearfix">
					<label class="grzxFGLabel"></label>
					<div class="grzxFGCBox">
						<p class="errorTips" style="height: 25px;"></p>
						<input id="put_1" type="submit" value="保存"
							style="width: 80px; height: 40px; background-color: #50ABF2;">
					</div>
				</div>
			</div>
			<!-- 实名认证的模块 -->
			<div class="tab-pane fade" id="identify">
				<div class="smrzTabBox siteIlB_box">
					<a href="#" class="btn_ALink siteIlB_item cur">大陆身份验证</a>
				</div>
				<c:choose>
					<c:when test="${!empty user.getIdentify() }">
						<div class="grzxFGCBox clearfix">
							<br /> <label class="grzxFGLabel">真实姓名：</label>
							<div class="grzxFGCBox">
								<div class="binding">
									<p>${user.getRealname() }</p>
								</div>
							</div>
						</div>
						<div class="grzxFGCBox clearfix">
							<label class="grzxFGLabel">身份证号：</label>
							<div class="grzxFGCBox">
								<div class="binding">
									<p>${user.getIdentify() }</p>
								</div>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="grzxFGCBox clearfix">
							<br /> <label class="grzxFGLabel">真实姓名：</label>
							<div class="grzxFGCBox">
								<input type="text" name="name" style="height: 30px;"
									placeholder="请输入您的姓名">
							</div>
						</div>
						<div class="grzxFGCBox clearfix">
							<label class="grzxFGLabel">身份证号：</label>
							<div class="grzxFGCBox">
								<input type="text" name="idnumber" style="height: 30px;"
									placeholder="请输入您的身份证号">
							</div>
						</div>
						<div class="grzxFGCBox clearfix">
							<label class="grzxFGLabel"></label>
							<div class="grzxFGCBox">
								<p class="errorTips" style="height: 5px;"></p>
								<input id="put_2" type="submit" value="确定"
									style="width: 173px; height: 40px; background-color: #50ABF2;">
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- 银行卡绑定的模块 -->
			<div class="tab-pane fade" id="creatcard">
				<div class="xiugaimimaBox">
					<c:choose>
						<c:when test="${!empty user.getCreatcard() }">
							<div class="grzxFGCBox clearfix">
								<label class="grzxFGLabel">开户名：</label>
								<div class="grzxFGCBox">
									<div class="binding">
										<p>${user.getRealname() }</p>
									</div>
								</div>
							</div>
							<div class="grzxFGCBox clearfix">
								<label class="grzxFGLabel">银行卡号：</label>
								<div class="grzxFGCBox">
									<div class="binding">
										<p>${user.getCreatcard() }</p>
									</div>
								</div>
							</div>
							<div class="grzxFGCBox clearfix">
								<label class="grzxFGLabel">开户城市:</label>
								<div class="grzxFGCBox">
									<div class="grzxFGCBox">
										<div class="binding">
											<p>${user.getCity() }</p>
										</div>
									</div>
									<div class="grzxFGCBox">
										<div class="binding">
											<p>${user.getSubcity() }</p>
										</div>
									</div>
									<span class="error"></span>
								</div>
							</div>
							<div class="grzxFGCBox clearfix">
								<label class="grzxFGLabel">开户支行：</label>
								<div class="grzxFGCBox">
									<div class="binding">
										<p>${user.getBank() }</p>
									</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="grzxFGCBox clearfix">
								<label class="grzxFGLabel">开户名：</label>
								<div class="grzxFGCBox">
									<input type="text" name="idnumber" style="height: 30px;">
								</div>
							</div>
							<div class="grzxFGCBox clearfix">
								<label class="grzxFGLabel">银行卡号：</label>
								<div class="grzxFGCBox">
									<input type="text" name="idnumber" style="height: 30px;">
								</div>
							</div>
							<div class="grzxFGCBox clearfix">
								<label class="grzxFGLabel">开户城市:</label>
								<div class="grzxFGCBox">
									<div class="grzxFGCBox" style="width: 100px;">
										<select id="city" style="width: 100%; height: 30px;"><option
												value="volvo">请选择</option></select>
									</div>
									<div class="grzxFGCBox" style="width: 100px;">
										<select id="subcity" style="width: 100%; height: 30px;"><option
												value="volvo">请选择</option></select>
									</div>
									<span class="error"></span>
								</div>
							</div>
							<div class="grzxFGCBox clearfix">
								<label class="grzxFGLabel">开户支行：</label>
								<div class="grzxFGCBox">
									<input type="text" name="idnumber" style="height: 30px;">
								</div>
							</div>
							<div class="grzxFGCBox clearfix">
								<label class="grzxFGLabel"></label>
								<div class="grzxFGCBox">
									<p class="errorTips" style="height: 5px;"></p>
									<input id="put_3" type="submit" value="确定"
										style="width: 80px; height: 40px; background-color: #50ABF2;">
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/userinfo.js"></script>
</body>
</html>