package com.ku.deepmunhakdo.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ku.deepmunhakdo.mapper.MainMapper;
import com.ku.deepmunhakdo.service.MainService;
import com.ku.deepmunhakdo.vo.ProjectVO;

@Service
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainMapper mainMapper;
	
	@Override
	public int getProjectListCount() {
		// TODO Auto-generated method stub
		
		int projectNumber = mainMapper.selectCount();
		
		return projectNumber;
	}	
	
	@Override
	public ArrayList<ProjectVO> getProjectList() {
		// TODO Auto-generated method stub

		ArrayList<ProjectVO> projectList = new ArrayList<ProjectVO>();
		
		projectList = mainMapper.selectAll();
		
		return projectList;
	}

	@Override
	public void increaseReadCount(String projectIdx) {
		// TODO Auto-generated method stub
		
		mainMapper.updateReadCount(projectIdx);
		
	}
}
