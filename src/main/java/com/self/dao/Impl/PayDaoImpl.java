package com.self.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import com.self.dao.PayDao;
import com.self.model.Pay;

public class PayDaoImpl implements PayDao{
	/**
	 * 获取用户username的消费信息
	 * @param username 用户名
	 * @return
	 */
	@Override
	public List<Pay> queryUserPayInfo(String username) {
		// TODO Auto-generated method stub
		//从数据库中获取用户username的消费信息
		
		
		
		//测试数据
		List<Pay> list=new ArrayList<Pay>();
		Pay pay=new Pay();
		list.add(pay);
		
		return list;
	}

}
