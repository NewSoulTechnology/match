package com.self.dao;

import org.json.JSONArray;

/**
 * 获取普通用户的所有功能
 * 
 * @author HUANG
 *
 */
public interface UserFunctionDao {

	/**
	 * 返回普通用户的所有功能，以json格式
	 * 
	 * @return
	 */
	public JSONArray getAllUserFunction();
}
