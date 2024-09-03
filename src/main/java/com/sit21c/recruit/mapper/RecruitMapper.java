package com.sit21c.recruit.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sit21c.common.CamelCaseMap;
import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.recruit.vo.JobPostingVo;
import com.sit21c.recruit.vo.RecruitmentApplyVo;

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
	public void insertRecruitmentApply(RecruitmentApplyVo recruitmentApplyVo);
	
	public List<JobPostingVo> findByDepartmentId(@Param("departmentId") String departmentId, @Param("offset") int offset, @Param("pageSize") int pageSize);
	public String findDepartmentNameById(@Param("departmentId") String departmentId);
	public int countByDepartmentId(@Param("departmentId") String departmentId);
}
