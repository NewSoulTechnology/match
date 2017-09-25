package com.self.dao;

import java.util.List;

import com.self.model.Project;

public interface ProjectDao {
	/**
	 * 返回所有的项目的信息的集合
	 * @return
	 */
    public List<Project> queryAllProjectInfo();
}
