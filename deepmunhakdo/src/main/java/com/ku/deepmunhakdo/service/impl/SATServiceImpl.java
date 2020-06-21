package com.ku.deepmunhakdo.service.impl;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ku.deepmunhakdo.mapper.SATMapper;
import com.ku.deepmunhakdo.service.SATService;
import com.ku.deepmunhakdo.vo.SATQuestionVO;

@Service
public class SATServiceImpl implements SATService{

	@Autowired
	private SATMapper SATMapper;

	@Override
	public SATQuestionVO getQuestion() {
		
		SATQuestionVO questionVO = new SATQuestionVO();
		
		// 튜플 개수 가져오기
		int questioncount = SATMapper.selectCount();
		
		// 숫자 랜덤 뽑기
		Random random = new Random();
		int randomnum = random.nextInt(questioncount) + 1;
		
		// 문제 가져오기
		questionVO = SATMapper.selectByQIDX(randomnum);
		
		return questionVO;
	}
	
}
