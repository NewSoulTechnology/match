$(function() {
			function overlay() {
				var e1 = document.getElementById('modal-overlay');
				e1.style.visibility = (e1.style.visibility == "visible") ? "hidden"
						: "visible";
			}
			//绑定手机模态框
			$("#cellphone")
					.click(
							function() {
								overlay();
								$(".success-popup").empty();
								$(".success-popup")
										.append(
												"<div class=\"popup-header\">"
														+ "绑定手机<a class=\"close\">X</a>"
														+ "</div>"
														+ "<div class=\"popup-form\">"
														+ "<div>"
														+ "<fieldset>"
														+ "<legend></legend>"
														+ "</fieldset>"
														+ "<div class=\"formitm\">"
														+ "<label class=\"lab\">手机号码：</label>"
														+ "<div class=\"inpt\">"
														+ "<input type=\"text\" class=\"u-ipt\"> <span class=\"error-txt\"></span>"
														+ "</div>"
														+ "</div>"
														+ "<div class=\"formitm\">"
														+ "<label class=\"lab\">手机验证码：</label>"
														+ "<div class=\"inpt img-tel-ver\">"
														+ "<input type=\"text\" class=\"u-ipt\"> <a href=\"#"+
											" class=\"domain btn-orange\">获取</a> <span class=\"error-txt\"></span>"
														+ "</div>"
														+ "</div>"
														+ "<div class=\"formitm\">"
														+ "<div class=\"inpt mt20\">"
														+ "<button class=\"btn btn-blue small mr20\" type=\"button\">提交</button>"
														+ "</div>" + "</div>"
														+ "</div>" + "</div>");
								//为模态框的关闭按钮注册事件
								$(".popup-header a").click(function() {
									overlay();
								})
								//为模态框的提交按钮注册事件
								$(".small")
										.click(
												function() {
													//
													var number = $(".u-ipt");
													var obj = $("#cellphone")
															.parent();
													obj.empty();
													obj
															.append("<input style=\"height:25px\" type=\"text\" value=\""+number[0].value+"\">");
													overlay();
												})
							})
			//绑定邮箱事件
			$("#email")
					.click(
							function() {
								overlay();
								$(".success-popup").empty();
								$(".success-popup")
										.append(
												"<div class=\"popup-header\">绑定邮箱<a class=\"close\">X</a>"
														+ "</div>"
														+ "<div class=\"popup-form\">"
														+ "<div>"
														+ "<fieldset>"
														+ "<legend></legend>"
														+ "</fieldset>"
														+ "<div class=\"formitm\">"
														+ "<label class=\"lab\">电子邮箱：</label>"
														+ "<div class=\"inpt\">"
														+ "<input type=\"text\" class=\"u-ipt\"> <span class=\"error-txt\"></span>"
														+ "</div>"
														+ "</div>"
														+ "<div class=\"formitm\">"
														+ "<div class=\"inpt mt20\">"
														+ "<button class=\"btn btn-blue small mr20\" type=\"button\">提交</button>"
														+ "</div>" + "</div>"
														+ "</div>" + "</div>");
								//为模态框的关闭按钮注册事件
								$(".popup-header a").click(function() {
									overlay();
								})
								////为模态框的提交按钮注册事件
								$(".small")
										.click(
												function() {
													//点击提交按钮后获取数据，异步提交到后台
													var number = $(".u-ipt");
													var obj = $("#email")
															.parent();
													obj.empty();
													obj
															.append("<input style=\"height:25px\" type=\"text\" value=\""+number[0].value+"\">");
													overlay();
												})
							})
		});
		//绑定下拉框数据
		$("#city").hover(function() {
			$.ajax({
				url : "getcitydata",
				type : "post",
				data : "",
				dataType : "json",
				success : function(data) {
					//成功后，将数据添加到select中去
					$.each( data.provinces, function(i, n){
						console.log(data.provinces[i].name);
						$("#city").append("<option value=\""+i+"\">"+data.provinces[i].name+"</option>");
					});
					//配置二级联动
					$("#subcity").hover(function() {
						var temp=$("#city option:selected").val()
						$("#subcity").empty();
						$.each( data.provinces[temp].citys, function(i, n){
						$("#subcity").append("<option value=\""+i+"\">"+data.provinces[temp].citys[i]+"</option>");
					});
						
					});
				}
				})
		});
		//保存按钮，提交基本数据
		
		
		//
		
		
		
		//iframe窗口自适应
		parent.document.getElementById("frame").height = 0;
		parent.document.getElementById("frame").height = document.body.scrollHeight;