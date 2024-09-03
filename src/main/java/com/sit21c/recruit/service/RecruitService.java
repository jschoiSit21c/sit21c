package com.sit21c.recruit.service;

import java.util.List;
import java.util.Map;

import com.sit21c.common.CamelCaseMap;
import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.recruit.vo.JobPostingVo;
import com.sit21c.recruit.vo.RecruitmentApplyVo;

public interface RecruitService {
	
	public List<CamelCaseMap> test(Map<String, Object> param);
	
	/**
	 * 입사지원
	 * @param recruitmentApplyVo
	 * @param attchFileVo
	 * @throws Exception 
	 */
	public void executeRecruitmentApply(RecruitmentApplyVo recruitmentApplyVo, AttchFileVo attchFileVo) throws Exception;
	
	public List<JobPostingVo> getJobPostingsByDepartmentId(String departmentId, int page, int pageSize);
	
	public String getDepartmentNameById(String departmentId);
	
	public int getTotalJobPostingsCount(String departmentId);
}
