package com.self.service.Impl;

import java.util.List;

import com.self.dao.ProjectDao;
import com.self.dao.Impl.ProjectDaoImpl;
import com.self.model.Project;
import com.self.service.QueryProjectInfoService;

public class QueryProjectInfoServiceImpl implements QueryProjectInfoService{
	/**
	 * 返回所有的项目的信息的集合
	 * @return
	 */
	@Override
	public List<Project> queryAllProjectInfo() {
		// TODO Auto-generated method stub
		List<Project> list=null;
		ProjectDao pDao=new ProjectDaoImpl();
		list=pDao.queryAllProjectInfo();
		return list;
	}

}
