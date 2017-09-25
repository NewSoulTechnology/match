package com.self.dao.Impl;

import com.self.dao.UserDao;
import com.self.model.User;

public class UserDaoImpl implements UserDao{
	/**
	 * 根据传入的用户名，返回用户的基本数据
	 * @param username 用户名
	 * @return 用户数据对象
	 */
	@Override
	public User queryUserBaseInfo(String username) {
		// TODO Auto-generated method stub
		//模拟数据
		User user=new User();
		return user;
		
		
		
		//从数据库读取数据，封装到User对象中返回
		
		
		
		
	}
	/**
	 * 根据传入的用户名，返回用户的详细数据
	 * @param username 用户名
	 * @return 用户数据对象
	 */
	@Override
	public User queryUserAllInfo(String username) {
		//模拟数据
				User user=new User();
				return user;
				
				
				
				//从数据库读取数据，封装到User对象中返回
				
				
				
				
	}
	/**
	 * 返回输入的原密码与用户密码是否一致
	 * @param password  输入的原密码
	 * @param username  用户名
	 * @return
	 */
	@Override
	public boolean IsSamePassword(String password, String username) {	
		//从数据库读取username用户的密码是否与password一致
		
		
		
		
		return false;
	}
	/**
	 * 修改原密码
	 * @param password 新密码
	 * @param username 用户名
	 */
	@Override
	public void ChangePassword(String password, String username) {
		// TODO Auto-generated method stub
		//修改数据库读取username用户的密码为password
		
		
		
		
	}

}
