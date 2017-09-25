package com.self.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.self.service.GetUserPasswordService;
import com.self.service.Impl.GetUserPasswordServiceImpl;

public class GetPassWordChangeAction extends HttpServlet {
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
		// 获取原密码
		String oldpassword = req.getParameter("oldpassword");
		//获取当前用户
		//String username=(String) req.getSession().getAttribute("username");
		String username="123";
		// 获取新密码
		String newpassword = req.getParameter("newpassword");
		// 判断原密码是否吻合,调用GetUserPasswordService
		GetUserPasswordService gService=new GetUserPasswordServiceImpl();
		boolean flag=gService.IsSamePassword(oldpassword, username);
		// 以json格式返回结果
		JSONObject object=new JSONObject();
		object.put("success", flag);
        if(flag==false) {
        	//输入的原密码错误
        	object.put("message", "原密码输入不正确!");
        }else {
			//输入的原密码正确,则修改原密码
        	gService.ChangePassword(newpassword, username);
        	object.put("message", "原密码修改成功!");	
		}
        PrintWriter out=resp.getWriter();
        out.write(object.toString());
	}
}
