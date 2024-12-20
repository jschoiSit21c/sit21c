package com.sit21c.recruit.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sit21c.common.CamelCaseMap;
import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.recruit.mapper.RecruitMapper;
import com.sit21c.recruit.vo.JobApplicationVo;
import com.sit21c.recruit.vo.JobPostingVo;
import com.sit21c.recruit.vo.RecruitmentApplyVo;
import com.sit21c.recruit.vo.RecruitmentVo;

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
//	@Override
//	public void executeRecruitmentApply(RecruitmentApplyVo recruitmentApplyVo, AttchFileVo attchFileVo) throws Exception{
//		// 
//		if(attchFileVo != null) {
//			recruitMapper.insertAttchFile(attchFileVo);
//			recruitmentApplyVo.setAttchFileId(attchFileVo.getFileId());	
//		}
//		recruitMapper.insertRecruitmentApply(recruitmentApplyVo);
//		
//	}
	
	@Override
    public List<JobPostingVo> getJobPostingsByDepartmentId(String departmentId, int page, int pageSize) {
		int offset = (page - 1) * pageSize;
        return recruitMapper.findByDepartmentId(departmentId, offset, pageSize);
    }

    @Override
    public String getDepartmentNameById(String departmentId) {
        return recruitMapper.findDepartmentNameById(departmentId);
    }

    @Override
    public int getTotalJobPostingsCount(String departmentId) {
        return recruitMapper.countByDepartmentId(departmentId);
    }
    
    @Override
    public JobPostingVo getJobPostingById(String jobId) {
        return recruitMapper.findById(jobId);
    }
    
    /**
     * 채용공고 저장
     */
    @Override
    public int saveRecruitment(RecruitmentVo recruitmentVo) throws Exception{
    	return recruitMapper.saveRecruitment(recruitmentVo);
    }
    
    /**
     * 채용공고 목록 조회
     */
    @Override
    public List<RecruitmentVo> selectRecruitmentList(RecruitmentVo recruitmentVo) throws Exception {
    	// TODO Auto-generated method stub
    	return recruitMapper.selectRecruitmentList(recruitmentVo);
    }
    
    /**
     * 채용공고 상세
     */
    @Override
    public RecruitmentVo selectRecruitment(RecruitmentVo recruitmentVo) throws Exception {
    	return recruitMapper.selectRecruitment(recruitmentVo);
    }
    
    /**
     * 채용공고 수정
     */
    @Override
    public int modifyRecruitment(RecruitmentVo recruitmentVo) throws Exception {
    	return recruitMapper.modifyRecruitment(recruitmentVo);
    }
    
    @Override
    public void submitJobApplication(JobApplicationVo applicationVo, AttchFileVo attchFileVo) throws Exception {
    	// TODO Auto-generated method stub
		if(attchFileVo != null) {
			recruitMapper.insertAttchFile(attchFileVo);
			applicationVo.setFileId(attchFileVo.getFileId());
		}
		recruitMapper.submitJobApplication(applicationVo);
    }
    
    /**
     * 입사지원자 목록 조회
     */
    @Override
    public List<JobApplicationVo> selectApplicants(JobApplicationVo jobApplicationVo) throws Exception {
    	return recruitMapper.selectApplicants(jobApplicationVo);
    }

}
