package com.self.service.Impl;

import java.util.List;

import com.self.dao.PayDao;
import com.self.dao.Impl.PayDaoImpl;
import com.self.model.Pay;
import com.self.service.QueryUserPayInfoService;

public class QueryUserPayInfoServiceImpl implements QueryUserPayInfoService{
	/**
	 * 获取用户username的消费信息
	 * @param username 用户名
	 * @return
	 */
	@Override
	public List<Pay> queryUserPayInfo(String username) {
		// TODO Auto-generated method stub
		List<Pay> list=null;
		PayDao pDao=new PayDaoImpl();
		list=pDao.queryUserPayInfo(username);
		return list;
	}

}
