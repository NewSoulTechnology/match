package com.self.service.Impl;

import com.self.dao.UserDao;
import com.self.dao.Impl.UserDaoImpl;
import com.self.model.User;
import com.self.service.QueryUserInfoService;

public class QueryUserInfoServiceImpl implements QueryUserInfoService{
	/**
	 * 根据传入的用户名，返回用户的数据
	 * @param username 用户名
	 * @return 用户数据对象
	 */
	@Override
	public User queryUserInfo(String username) {
		// TODO Auto-generated method stub
		//调用dao层服务，获取数据并返回
		User user=null;
		UserDao uDao=new UserDaoImpl();
		user=uDao.queryUserBaseInfo(username);
		return user;
	}
}
