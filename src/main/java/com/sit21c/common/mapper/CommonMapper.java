package com.sit21c.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.common.vo.ComCodeVo;

@Mapper
public interface CommonMapper {
	public List<ComCodeVo> selectComCode(String code);
	
	/**
	 * 파일정보 조회
	 * @param fileId
	 * @return
	 */
	public AttchFileVo selectFileInfo(int fileId);
}
