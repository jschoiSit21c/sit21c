package com.sit21c.recruit.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sit21c.recruit.mapper.RecruitMapper;

@Service("recruitService")
public class RecruitServiceImpl implements RecruitService {

	@Autowired
	private RecruitMapper recruitMapper;
	
	@Override
	public List<Map<String, Object>> test(Map<String, Object> param) {
		return recruitMapper.test(param);
	}

}
