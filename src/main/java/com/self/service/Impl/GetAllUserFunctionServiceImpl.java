package com.self.service.Impl;

import org.json.JSONArray;

import com.self.dao.UserFunctionDao;
import com.self.dao.Impl.UserFunctionDaoImpl;
import com.self.service.GetAllUserFunctionService;

public class GetAllUserFunctionServiceImpl implements GetAllUserFunctionService{

	@Override
	public JSONArray getAllUserFunction() {
		// TODO Auto-generated method stub
		JSONArray objects=null;
		UserFunctionDao functionDao=new UserFunctionDaoImpl();
		objects=functionDao.getAllUserFunction();
		return objects;
	}

}
