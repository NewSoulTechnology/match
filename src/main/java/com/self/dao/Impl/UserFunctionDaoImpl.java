package com.self.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONArray;
import org.json.JSONObject;

import com.self.dao.UserFunctionDao;
import com.self.util.DBHelper;

public class UserFunctionDaoImpl implements UserFunctionDao{

	@Override
	public JSONArray getAllUserFunction() {
		// TODO Auto-generated method stub
		Connection connection=DBHelper.getConnection();
		StringBuffer sql=new StringBuffer();
		sql.append("select name,url from userfunction");
		try {
			PreparedStatement pStatement=connection.prepareStatement(sql.toString());
			ResultSet rSet=pStatement.executeQuery();
			JSONArray array=new JSONArray();
			while(rSet.next()) {
				JSONObject object=new JSONObject();
				object.put("name", rSet.getString("name"));
				object.put("url", rSet.getString("url"));
				array.put(object);
			}
			return array;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
