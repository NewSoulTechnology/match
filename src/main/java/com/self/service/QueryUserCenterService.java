package com.self.service;

import com.self.model.User;

public interface QueryUserCenterService {
/**
 * 根据传入的用户名，返回用户的数据
 * @param username 用户名
 * @return 用户数据对象
 */
	public User queryUserInfo(String username);
	
}
