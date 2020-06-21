package com.ku.deepmunhakdo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.ku.deepmunhakdo.vo.ProjectVO;

public interface MainMapper {

	@Select("SELECT COUNT(*) FROM PROJECT")
	public int selectCount();
	
	@Select("SELECT * FROM PROJECT ORDER BY PROJECTIDX DESC")
	public ArrayList<ProjectVO> selectAll();
	
	@Update("UPDATE PROJECT SET READCOUNT = READCOUNT + 1 WHERE PROJECTIDX = #{projectIdx}")
	public void updateReadCount(String projectIdx);
}
