package com.self.dao;

import java.util.List;

import com.self.model.Pay;

public interface PayDao {
	/**
	 * 获取用户username的消费信息
	 * @param username 用户名
	 * @return
	 */
	public List<Pay> queryUserPayInfo(String username);
}
