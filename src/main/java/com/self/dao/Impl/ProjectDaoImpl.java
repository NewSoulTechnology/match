package com.self.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import com.self.dao.ProjectDao;
import com.self.model.Project;

public class ProjectDaoImpl implements ProjectDao{
	/**
	 * 返回所有的项目的信息的集合
	 * @return
	 */
	@Override
	public List<Project> queryAllProjectInfo() {
		// TODO Auto-generated method stub
		//从数据库中获取所有项目的详细信息
		List<Project> list=new ArrayList<Project>();
		
		
		//模拟数据
		Project project=new Project();
		Project project1=new Project();
		project1.setProname("随便起的，没有什么意思");
		project1.setPaystate("已支付");
		project1.setOpeartion("查看详情");
		list.add(project);
		list.add(project1);		
		return list;
	}

}
