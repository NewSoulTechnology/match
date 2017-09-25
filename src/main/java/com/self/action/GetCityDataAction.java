package com.self.action;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class GetCityDataAction extends HttpServlet {
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
		// 读取city.json数据
		try {
			BufferedReader br = new BufferedReader(
					new FileReader("C:\\Users\\54061\\workspace\\match\\src\\main\\webapp\\files\\city.json"));// 读取原始json文件
			String s = null;
			StringBuffer data=new StringBuffer();
			while ((s = br.readLine()) != null) {
				// System.out.println(s);
                   data.append(s);
			}
			JSONObject object=new JSONObject(data.toString());
			// 回送city数据
            PrintWriter out=resp.getWriter();
            out.write(object.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
