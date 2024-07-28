package com.sit21c.recruit.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.sit21c.common.CamelCaseMap;

@Mapper
public interface RecruitMapper {
	/**
	 * 테스트*/
	public List<CamelCaseMap> test(Map<String,Object> param);
}
