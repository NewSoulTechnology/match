<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/account.css" />
</head>
<body>
	<div class="grzxTabBox moduleItem">
		<ul class="grzxTabUl">
			<li class="grzxTabLi cur">我的余额</li>
		</ul>
		<div>
			<div class="grzxTabCBox">
				<div class="grzxTabItem">
					<div class="wdyeOuterBox">
						<h3 class="siteIlB_box">
							<span class="siteIlB_item">余额</span><b
								class="siteIlB_item ng-binding">¥${list[0].getMoney() }.0</b>
						</h3>
						<!--<input type="button" value="提现">-->
						<p
							style="font-size: 14px; color: red; font-weight: bold; float: right; margin-top: 10px;">为了你的账户安全，请在个人资料绑定手机后，下载众筹网app进行提现
						</p>
					</div>
				</div>
			</div>
			<ul class="grzxTabUl">
				<li class="grzxTabLi wdye">交易记录</li>
			</ul>
			<div class="grzxTabCBox">
				<div class="grzxTabItem">
					<div class="hongbaoBox">
						<table class="hongbaoTable">
							<colgroup>
								<col width="170px">
								<col width="480px">
								<col width="140px">
								<col wdith="auto">
							</colgroup>
							<thead>
								<tr>
									<th>时间</th>
									<th>交易详情</th>
									<!--<th>类别</th>-->
									<th>金额（元）</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${! empty list}">
										<c:forEach items="${list }" var="pay">
											<tr>
												<td>${pay.getTime() }</td>
												<td>${pay.getOperation() }</td>
												<td>+${pay.getMoney() }</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="4">暂无交易记录</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>