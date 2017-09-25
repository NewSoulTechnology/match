package com.self.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.self.model.Project;
import com.self.service.QueryProjectInfoService;
import com.self.service.Impl.QueryProjectInfoServiceImpl;

public class QueryRewardOrderAction extends HttpServlet {
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
	//调用QueryProjectInfoService服务
	QueryProjectInfoService queryProjectInfoService=new QueryProjectInfoServiceImpl();
	List<Project> list=queryProjectInfoService.queryAllProjectInfo();
    req.setAttribute("projects", list);
	req.getRequestDispatcher("reward-order.jsp").forward(req, resp);
	}
}
