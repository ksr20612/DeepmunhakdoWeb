package com.ku.deepmunhakdo.service;

import java.util.ArrayList;

import com.ku.deepmunhakdo.vo.ProjectVO;

public interface MainService {

	public int getProjectListCount();
	
	public ArrayList<ProjectVO> getProjectList();

	public void increaseReadCount(String projectIdx);
}
