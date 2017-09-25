package com.self.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.self.model.User;
import com.self.service.QueryUserCenterService;
import com.self.service.Impl.QueryUserCenterServiceImpl;

public class QueryUserCenterAction extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doPost(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	req.setCharacterEncoding("utf-8");
	resp.setCharacterEncoding("utf-8");
		//传送数据对象，对象包含数据(昵称，金额，抵用券数量，消息数量)
	   //调用QueryUserCenterService服务
	    QueryUserCenterService qService=new QueryUserCenterServiceImpl();
	    HttpSession session=req.getSession();
	    //获取存储在session中的用户名
	    //String username=(String)session.getAttribute("username");
	    //测试数据
	    String username="123";
	    User user=qService.queryUserInfo(username);
	    req.setAttribute("user", user);
	    //跳转到user-center.jsp页面
	    req.getRequestDispatcher("user-center.jsp").forward(req, resp);
	}
}
