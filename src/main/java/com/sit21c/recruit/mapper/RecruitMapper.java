package com.sit21c.recruit.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RecruitMapper {
	/**
	 * 테스트*/
	public List<Map<String, Object>> test(Map<String,Object> param);
}
