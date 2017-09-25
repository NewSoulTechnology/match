package com.self.service.Impl;

import com.self.dao.UserDao;
import com.self.dao.Impl.UserDaoImpl;
import com.self.service.GetUserPasswordService;

public class GetUserPasswordServiceImpl implements GetUserPasswordService{
	/**
	 * 返回输入的原密码与用户密码是否一致
	 * @param password  输入的原密码
	 * @param username  用户名
	 * @return
	 */
	@Override
	public boolean IsSamePassword(String password, String username) {
		// TODO Auto-generated method stub
		UserDao userDao=new UserDaoImpl();	
		return userDao.IsSamePassword(password, username);
	}
	/**
	 * 修改原密码
	 * @param password 新密码
	 * @param username 用户名
	 */
	@Override
	public void ChangePassword(String password, String username) {
		// TODO Auto-generated method stub
		UserDao uDao=new UserDaoImpl();
		uDao.ChangePassword(password, username);	
	}

}
