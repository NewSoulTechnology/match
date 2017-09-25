$(function() {
	$.ajax({
		url : "userfunction",
		type : "post",
		data : "",
		dataType : "json",
		success : function(data) {
			//展示用户功能
			$.each( data, function(i, n){
				if(i==3){
					$(".ulView ul").append("<h5>我的</h5>");
				}
				if(i==5){
					$(".ulView ul").append("<h5>消息</h5>");
				}
				if(i==6){
					$(".ulView ul").append("<h5>设置</h5>");
				}
				$(".ulView ul").append("<li><a href=\""+data[i].url+"\" target=\"contentshow\">"+data[i].name+"</a></li>");
			});
			//为每个li配置点击事件
			$(".nav-sidebar li").click(function() {
				var url=$(this).attr("href");		
			})
			
			//禁用第二个链接
			console.log();
			$("ul li:nth-child(2)").children().attr("href","javascript:void(0);");
		}
		})
		
		
});