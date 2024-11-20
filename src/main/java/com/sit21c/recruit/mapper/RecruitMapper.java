package com.sit21c.recruit.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sit21c.common.CamelCaseMap;
import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.recruit.vo.JobPostingVo;
import com.sit21c.recruit.vo.RecruitmentApplyVo;
import com.sit21c.recruit.vo.JobApplicationVo;
import com.sit21c.recruit.vo.RecruitmentVo;

@Mapper
public interface RecruitMapper {
	/**
	 * 테스트*/
	public List<CamelCaseMap> test(Map<String,Object> param);
	
	/**
	 * 첨부파일
	 * @param attchFileVo
	 */
	public void insertAttchFile(AttchFileVo attchFileVo);
	
	/**
	 * 입사지원정보
	 * @param recruitmentApplyVo
	 */
//	public void insertRecruitmentApply(RecruitmentApplyVo recruitmentApplyVo);
	
	public List<JobPostingVo> findByDepartmentId(@Param("departmentId") String departmentId, @Param("offset") int offset, @Param("pageSize") int pageSize);
	public String findDepartmentNameById(@Param("departmentId") String departmentId);
	public int countByDepartmentId(@Param("departmentId") String departmentId);
	public JobPostingVo findById(@Param("jobId") String jobId);
	
	/**
	 * 채용공고 저장
	 * @param recruitmentVo
	 * @return
	 */
	public int saveRecruitment(RecruitmentVo recruitmentVo);
	
	/**
	 * 채용공고 목록 조회
	 * @param recruitmentVo
	 * @return
	 */
	public List<RecruitmentVo> selectRecruitmentList(RecruitmentVo recruitmentVo);
	
	/**채용공고 상세
	 * @param recruitmentVo
	 * @return
	 */
	public RecruitmentVo selectRecruitment(RecruitmentVo recruitmentVo);
	
	/**
	 * 채용공고 수정
	 * @param recruitmentVo
	 * @return
	 */
	public int modifyRecruitment(RecruitmentVo recruitmentVo);
	
	/**
	 * 입사지원서 제출
	 * @param jobApplicationVo
	 */
	public void submitJobApplication(JobApplicationVo jobApplicationVo);
	
	/**
	 * 입사지원자 목록조회
	 * @param recruitId
	 * @return
	 */
	public List<JobApplicationVo> selectApplicants(JobApplicationVo jobApplicationVo);
}
