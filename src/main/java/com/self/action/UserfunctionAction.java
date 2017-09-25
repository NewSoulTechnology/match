package com.self.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.self.service.GetAllUserFunctionService;
import com.self.service.Impl.GetAllUserFunctionServiceImpl;

public class UserfunctionAction extends HttpServlet {
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
        GetAllUserFunctionService gService=new GetAllUserFunctionServiceImpl();
        JSONArray objects=gService.getAllUserFunction();
        PrintWriter out=resp.getWriter();
        out.write(objects.toString());
        out.flush();
        out.close();
	}
}
