<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/order.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="grzxTabBox">
					<div class="tabbable" id="tabs-828898">
						<ul class="nav nav-tabs">
							<li class="active"><a rel="nofollow" href="#panel-938250" data-toggle="tab">全部订单</a></li>
							<li><a rel="nofollow" href="#panel-300759" data-toggle="tab">未支付</a></li>
							<li><a rel="nofollow" href="#panel-300710" data-toggle="tab">已支付</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-938250">
								<p></p>
								<table class="table nofollow">
									<thead style="margin-bottom: 50px;">
										<tr style="background-color: #eaebec; height: 37px;">
											<th>项目信息</th>
											<th>项目状态</th>
											<th>筹资进度</th>
											<th>支付总额</th>
											<th>状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<c:choose>
									<c:when test="${!empty projects }">
									<c:forEach items="${projects}" var="project">
    								<tbody>
										<tr>
											<td colspan="6"></td>
										</tr>
										<tr class="ftTr">
											<td colspan="5">${project.getTime() }<span class="dingdan">订单号码：
													<span style="position: relative;">${project.getOrderid() }</span>
											</span> <span class="dingdan" style="text-indent: 0px;">发起人：
													<span style="position: relative; color: #50abf2;">${project.getPutman() }</span>
											</span>
											</td>
											<td></td>
										</tr>
										<tr class="inforTr">
											<td>
												<div class="ddImgBox">
													<a href="#"> <img src="${project.getProimage() }"
														style="display: block;" width="100%" height="100%" />
													</a>
												</div>
												<div class="ddImgText">
													<a style="text-decoration: none; color: inherit;"
														class="site_ALink ng-binding" href="${project.getProurl() }">${project.getProname() }</a>
												</div>
											</td>
											<td>
												<div>
													<p style="text-align: left; min-height: 20px;">${project.getProstate() }</p>
												</div>
											</td>
											<td>
												<div>
													<p
														style="text-align: left; min-height: 20px; margin-left: 10px;">目标：${project.getProaim() }元</p>
													<div class="inforRationBox">
														<div class="inforRation">
															<div class="inner" style="width: ${project.getProprocess()}%;"></div>
														</div>
														<span>${project.getProprocess()}%</span>
													</div>
												</div>
											</td>
											<td>
												<div>
													<p
														style="text-align: left; min-height: 20px; margin-left: 10px;">${project.getPaydegree() }元</p>
												</div>
											</td>
											<td>
												<p
													style="text-align: left; min-height: 20px; margin-left: 10px;">${project.getPaystate() }</p>
											</td>
											<td style="text-align: center; position: relative;"><a
												href="${project.getProurl() }" class="ddLastbtn_A">${project.getOpeartion() }</a></td>
										</tr>
									</tbody>
 									 </c:forEach>
									</c:when>
									<c:otherwise>
									<div style="text-align: center; padding-top: 20px;">暂无项目详情</div>
									</c:otherwise>
									</c:choose>
									
								</table>
							</div>
							<div class="tab-pane" id="panel-300759">
								<p></p>
								<table class="table nofollow">
									<thead style="margin-bottom: 50px;">
										<tr style="background-color: #eaebec; height: 37px;">
											<th>项目信息</th>
											<th>项目状态</th>
											<th>筹资进度</th>
											<th>支付总额</th>
											<th>状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<c:choose>
									<c:when test="${!empty projects }">
									<c:forEach items="${projects}" var="project">
									<c:if test="${project.getPaystate() eq '未支付' }">
    								<tbody>
										<tr>
											<td colspan="6"></td>
										</tr>
										<tr class="ftTr">
											<td colspan="5">${project.getTime() }<span class="dingdan">订单号码：
													<span style="position: relative;">${project.getOrderid() }</span>
											</span> <span class="dingdan" style="text-indent: 0px;">发起人：
													<span style="position: relative; color: #50abf2;">${project.getPutman() }</span>
											</span>
											</td>
											<td></td>
										</tr>
										<tr class="inforTr">
											<td>
												<div class="ddImgBox">
													<a href="#"> <img src="${project.getProimage() }"
														style="display: block;" width="100%" height="100%" />
													</a>
												</div>
												<div class="ddImgText">
													<a style="text-decoration: none; color: inherit;"
														class="site_ALink ng-binding" href="${project.getProurl() }">${project.getProname() }</a>
												</div>
											</td>
											<td>
												<div>
													<p style="text-align: left; min-height: 20px;">${project.getProstate() }</p>
												</div>
											</td>
											<td>
												<div>
													<p
														style="text-align: left; min-height: 20px; margin-left: 10px;">目标：${project.getProaim() }元</p>
													<div class="inforRationBox">
														<div class="inforRation">
															<div class="inner" style="width: ${project.getProprocess()}%;"></div>
														</div>
														<span>${project.getProprocess()}%</span>
													</div>
												</div>
											</td>
											<td>
												<div>
													<p
														style="text-align: left; min-height: 20px; margin-left: 10px;">${project.getPaydegree() }元</p>
												</div>
											</td>
											<td>
												<p
													style="text-align: left; min-height: 20px; margin-left: 10px;">${project.getPaystate() }</p>
											</td>
											<td style="text-align: center; position: relative;"><a
												href="${project.getProurl() }" class="ddLastbtn_A">${project.getOpeartion() }</a></td>
										</tr>
									</tbody>
									</c:if>
 									 </c:forEach>
									</c:when>
									<c:otherwise>
									<div style="text-align: center; padding-top: 20px;">暂无项目详情</div>
									</c:otherwise>
									</c:choose>
								</table>
							</div>
							<div class="tab-pane" id="panel-300710">
								<p></p>
								<table class="table nofollow">
									<thead style="margin-bottom: 50px;">
										<tr style="background-color: #eaebec; height: 37px;">
											<th>项目信息</th>
											<th>项目状态</th>
											<th>筹资进度</th>
											<th>支付总额</th>
											<th>状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<c:choose>
									<c:when test="${!empty projects }">
									<c:forEach items="${projects}" var="project">
									<c:if test="${project.getPaystate() eq '已支付' }">
    								<tbody>
										<tr>
											<td colspan="6"></td>
										</tr>
										<tr class="ftTr">
											<td colspan="5">${project.getTime() }<span class="dingdan">订单号码：
													<span style="position: relative;">${project.getOrderid() }</span>
											</span> <span class="dingdan" style="text-indent: 0px;">发起人：
													<span style="position: relative; color: #50abf2;">${project.getPutman() }</span>
											</span>
											</td>
											<td></td>
										</tr>
										<tr class="inforTr">
											<td>
												<div class="ddImgBox">
													<a href="#"> <img src="${project.getProimage() }"
														style="display: block;" width="100%" height="100%" />
													</a>
												</div>
												<div class="ddImgText">
													<a style="text-decoration: none; color: inherit;"
														class="site_ALink ng-binding" href="${project.getProurl() }">${project.getProname() }</a>
												</div>
											</td>
											<td>
												<div>
													<p style="text-align: left; min-height: 20px;">${project.getProstate() }</p>
												</div>
											</td>
											<td>
												<div>
													<p
														style="text-align: left; min-height: 20px; margin-left: 10px;">目标：${project.getProaim() }元</p>
													<div class="inforRationBox">
														<div class="inforRation">
															<div class="inner" style="width: ${project.getProprocess()}%;"></div>
														</div>
														<span>${project.getProprocess()}%</span>
													</div>
												</div>
											</td>
											<td>
												<div>
													<p
														style="text-align: left; min-height: 20px; margin-left: 10px;">${project.getPaydegree() }元</p>
												</div>
											</td>
											<td>
												<p
													style="text-align: left; min-height: 20px; margin-left: 10px;">${project.getPaystate() }</p>
											</td>
											<td style="text-align: center; position: relative;"><a
												href="${project.getProurl() }" class="ddLastbtn_A">${project.getOpeartion() }</a></td>
										</tr>
									</tbody>
									</c:if>
 									 </c:forEach>
									</c:when>
									<c:otherwise>
									<div style="text-align: center; padding-top: 20px;">暂无项目详情</div>
									</c:otherwise>
									</c:choose>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>