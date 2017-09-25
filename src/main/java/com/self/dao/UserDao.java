package com.self.dao;

import com.self.model.User;

public interface UserDao {
	/**
	 * 根据传入的用户名，返回用户的基本数据
	 * @param username 用户名
	 * @return 用户数据对象
	 */
	public User queryUserBaseInfo(String username);
	/**
	 * 根据传入的用户名，返回用户的详细数据
	 * @param username 用户名
	 * @return 用户数据对象
	 */
	public User queryUserAllInfo(String username);
	/**
	 * 返回输入的原密码与用户密码是否一致
	 * @param password  输入的原密码
	 * @param username  用户名
	 * @return
	 */
	public boolean IsSamePassword(String password, String username);
	/**
	 * 修改原密码
	 * @param password 新密码
	 * @param username 用户名
	 */
	public void ChangePassword(String password, String username);
	
}
