<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/changepassword.css" />
</head>
<body>
	<div class="grzxTabBox moduleItem">
		<ul class="grzxTabUl">
			<li class="grzxTabLi cur">修改密码</li>
		</ul>
		<div class="grzxTabCBox">
			<div class="grzxTabItem">
				<div class="xiugaimimaBox">
					<div class="grzxFGBox clearfix">
						<label class="grzxFGLabel">原始密码：</label>
						<div class="grzxFGCBox sitePHBox">
							<span><input id="old" type="password"
								class="grzxInput sitePHInput" placeholder="请输入原始密码"><span
								class="sitePHTip"></span></span></span>
						</div>
					</div>
					<div class="grzxFGBox clearfix">
						<label class="grzxFGLabel">新密码：</label>
						<div class="grzxFGCBox sitePHBox">
							<span><input id="new_1" type="password"
								class="grzxInput sitePHInput" placeholder="请输入新密码"><span
								class="sitePHTip"></span></span></span>
						</div>
					</div>
					<div class="grzxFGBox clearfix">
						<label class="grzxFGLabel">确认密码：</label>
						<div class="grzxFGCBox sitePHBox">
							<span><input id="new_2" type="password"
								class="grzxInput sitePHInput" placeholder="请再次输入新密码"><span
								class="sitePHTip"></span></span></span>
						</div>
					</div>
					<div class="grzlBtnBox">
						<p class="grzlErrorTip"></p>
						<div class="grzlBtnInner clearfix">
							<input type="button" value="确认" class="grzlSubmitBtn">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
	$(function() {
		//点击确认按钮，异步数据提交
		$(".grzlSubmitBtn").click(function() {
			//获取输入数据
			var itp_1=$("#old").val();
			var itp_2=$("#new_1").val();
			var itp_3=$("#new_2").val();
			if(itp_1==""||itp_2==""||itp_3==""){
				$(".grzlErrorTip").text("请填写所有的数据!");
			}else if (itp_2!=itp_3) {
				$(".grzlErrorTip").text("两次输入的密码不一致!");
			}else if (itp_1==itp_2) {
				$(".grzlErrorTip").text("新密码不能与原密码不一致!");
			}else {		
				$.ajax({
					url : "passwordchange",
					type : "post",
					data : "oldpassword="+itp_1+"&newpassword="+itp_2,
					dataType : "json",
					success : function(data) {
						//原密码错误
						if(data.success){
							$(".grzlErrorTip").text(data.message);
						}else {
							$(".grzlErrorTip").text(data.message);
							//跳转到主页面或者登录页面
							location.href="#";
						}
					}
					})
			}	
		});
		
		
		
		
	});
	</script>
</body>
</html>