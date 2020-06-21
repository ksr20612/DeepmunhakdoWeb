package com.ku.deepmunhakdo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ku.deepmunhakdo.service.MainService;
import com.ku.deepmunhakdo.vo.ProjectVO;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	
	@RequestMapping("/")
	public String home() {
		
		return "redirect:mainPage";
	}
	
	@RequestMapping("/mainPage")
	public String mainPage() {
		
		return "mainPage";
	}
	
	@RequestMapping("/readProjectPage")
	public String readProjectPage(Model model, String projectIdx) {
		
		// 조회수 카운트
		// 게시글을 눌렀을 때 실행시켜야하는 페이지가 다른 점..?
		mainService.increaseReadCount(projectIdx);
		
		if(projectIdx.equals("1")){
			return "testInstructionPage";
			
		}else if(projectIdx.equals("2")) {
			return "2_play";
					
		}else {
			
			return null;
		}
	}
	
	@RequestMapping("/aboutUsPage")
	public String aboutUsPage(Model model) {
		
		return "aboutUsPage";
	}
	
	@RequestMapping("/projectPage")
	public String projectPage(Model model) {
		
		// 프로젝트 총 개수 확인
		int projectNumber = mainService.getProjectListCount() ;
		model.addAttribute("projectNumber", projectNumber);
		
		// 프로젝트 자료표 생성
		ArrayList<ProjectVO> projectList = new ArrayList<ProjectVO>();
		projectList = mainService.getProjectList();
		model.addAttribute("projectList", projectList);
		
		return "projectPage";
	}
	
	@RequestMapping("/contactUsPage")
	public String contactUsPage(Model model) {
		
		return "contactUsPage";
	}
}
