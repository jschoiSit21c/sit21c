package com.sit21c.recruit.service;

import java.util.List;
import java.util.Map;

import com.sit21c.common.CamelCaseMap;
import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.recruit.vo.JobPostingVo;
import com.sit21c.recruit.vo.RecruitmentApplyVo;
import com.sit21c.recruit.vo.JobApplicationVo;
import com.sit21c.recruit.vo.RecruitmentVo;

public interface RecruitService {
	
	public List<CamelCaseMap> test(Map<String, Object> param);
	
	/**
	 * 입사지원
	 * @param recruitmentApplyVo
	 * @param attchFileVo
	 * @throws Exception 
	 */
//	public void executeRecruitmentApply(RecruitmentApplyVo recruitmentApplyVo, AttchFileVo attchFileVo) throws Exception;
	
	public List<JobPostingVo> getJobPostingsByDepartmentId(String departmentId, int page, int pageSize);
	
	public String getDepartmentNameById(String departmentId);
	
	public int getTotalJobPostingsCount(String departmentId);
	
	public JobPostingVo getJobPostingById(String jobId);
	
	/**
	 * 채용공고 저장
	 * @param recruitmentVo
	 * @return
	 */
	public int saveRecruitment(RecruitmentVo recruitmentVo) throws Exception;
	
	/**
	 * 채용공고 목록 조회
	 * @param recruitmentVo
	 * @return
	 * @throws Exception
	 */
	public List<RecruitmentVo> selectRecruitmentList(RecruitmentVo recruitmentVo) throws Exception;
	
	/**
	 * 채용공고 상세 조회
	 * @param recruitmentVo
	 * @return
	 * @throws Exception
	 */
	public RecruitmentVo selectRecruitment(RecruitmentVo recruitmentVo) throws Exception;
	
	/**
	 * 채용공고 수정
	 * @param recruitmentVo
	 * @return
	 * @throws Exception
	 */
	public int modifyRecruitment(RecruitmentVo recruitmentVo) throws Exception;
	
	/**
	 * 입사지원서 제출
	 * @param applicationVo
	 * @throws Exception
	 */
	public void submitJobApplication(JobApplicationVo applicationVo, AttchFileVo attchFileVo) throws Exception;
	
	/**
	 * 입사지원자 목록 조회
	 * @param recruitId
	 * @return
	 * @throws Exception
	 */
	public List<JobApplicationVo> selectApplicants(JobApplicationVo jobApplicationVo) throws Exception;
}
