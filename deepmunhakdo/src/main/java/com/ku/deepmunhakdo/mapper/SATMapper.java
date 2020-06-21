package com.ku.deepmunhakdo.mapper;

import org.apache.ibatis.annotations.Select;

import com.ku.deepmunhakdo.vo.SATQuestionVO;

public interface SATMapper {

	@Select("SELECT COUNT(*) FROM SATQUESTION")
	public int selectCount();

	@Select("SELECT * FROM SATQUESTION WHERE QUESTIONIDX = #{randomnum}")
	public SATQuestionVO selectByQIDX(int randomnum);
	
}
