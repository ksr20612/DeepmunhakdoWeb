package com.ku.deepmunhakdo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ku.deepmunhakdo.service.SATService;
import com.ku.deepmunhakdo.vo.SATQuestionVO;

@Controller
public class SATController {

	@Autowired
	private SATService SATservice;
	
	@RequestMapping("/startTestPage")
	public String startTestPage(Model model, HttpSession session) {
		
		SATQuestionVO SATQuestion = new SATQuestionVO();
		
		SATQuestion = SATservice.getQuestion();
		
		//model.addAttribute("SATQuestion", SATQuestion);
		session.setAttribute("SATQuestion", SATQuestion);
		
		return "questionPage";
	}
	
	@RequestMapping("/showResultPage")
	public String showResultPage(Model model, String choice) {
		
		//model.addAttribute("choice", choice);
		
		return "resultPage";
	}
	
	@RequestMapping("/showProcessPage1")
	public String showProcessPage1() {
		
		return "processPage1";
	}
	
	@RequestMapping("/showProcessPage2")
	public String showProcessPage2() {
		
		return "processPage2";
	}
	
	@RequestMapping("/showProcessPage3")
	public String showProcessPage3() {
		
		return "processPage3";
	}
	
}
