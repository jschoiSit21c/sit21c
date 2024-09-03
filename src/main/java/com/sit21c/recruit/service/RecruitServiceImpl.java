package com.sit21c.recruit.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sit21c.common.CamelCaseMap;
import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.recruit.mapper.RecruitMapper;
import com.sit21c.recruit.vo.RecruitmentApplyVo;

@Service("recruitService")
public class RecruitServiceImpl implements RecruitService {

	@Autowired
	private RecruitMapper recruitMapper;
	
	@Override
	public List<CamelCaseMap> test(Map<String, Object> param) {
		return recruitMapper.test(param);
	}
	
	/**
	 *입사지원
	 */
	@Override
	public void executeRecruitmentApply(RecruitmentApplyVo recruitmentApplyVo, AttchFileVo attchFileVo) throws Exception{
		// 
		if(attchFileVo != null) {
			recruitMapper.insertAttchFile(attchFileVo);
			recruitmentApplyVo.setAttchFileId(attchFileVo.getFileId());	
		}
		recruitMapper.insertRecruitmentApply(recruitmentApplyVo);
		
	}

}
