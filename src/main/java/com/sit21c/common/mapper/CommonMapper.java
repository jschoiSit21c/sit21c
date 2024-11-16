package com.sit21c.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sit21c.common.vo.ComCodeVo;

@Mapper
public interface CommonMapper {
	public List<ComCodeVo> selectComCode(String code);
}
