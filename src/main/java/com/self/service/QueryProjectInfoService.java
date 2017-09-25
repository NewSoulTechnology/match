package com.self.service;

import java.util.List;

import com.self.model.Project;

public interface QueryProjectInfoService {
/**
 * 返回所有项目的详细信息
 * @return
 */
	public List<Project> queryAllProjectInfo();
}
