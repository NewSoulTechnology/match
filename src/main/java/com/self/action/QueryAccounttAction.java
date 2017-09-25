package com.self.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.self.model.Pay;
import com.self.service.QueryUserPayInfoService;
import com.self.service.Impl.QueryUserPayInfoServiceImpl;

public class QueryAccounttAction extends HttpServlet {
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
		// 获取用户名
		// String username=(String) req.getSession().getAttribute("username");
		String username = "123";
		// 获取用户支付记录详情，调用QueryUserPayInfoService
		QueryUserPayInfoService qService = new QueryUserPayInfoServiceImpl();
		List<Pay> list = qService.queryUserPayInfo(username);
		req.setAttribute("list", list);
		// 页面跳转
		req.getRequestDispatcher("account.jsp").forward(req, resp);
	}
}
