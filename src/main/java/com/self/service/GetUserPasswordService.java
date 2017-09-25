package com.self.service;


public interface GetUserPasswordService {
/**
 * 返回输入的原密码与用户密码是否一致
 * @param password  输入的原密码
 * @param username  用户名
 * @return
 */
	public boolean IsSamePassword(String password,String username);
	/**
	 * 修改原密码
	 * @param password 新密码
	 * @param username 用户名
	 */
	public void  ChangePassword(String password,String username);
}
