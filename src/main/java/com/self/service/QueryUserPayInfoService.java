package com.self.service;

import java.util.List;

import com.self.model.Pay;

public interface QueryUserPayInfoService {
/**
 * 获取用户username的消费信息
 * @param username 用户名
 * @return
 */
	public List<Pay> queryUserPayInfo(String username);
}
