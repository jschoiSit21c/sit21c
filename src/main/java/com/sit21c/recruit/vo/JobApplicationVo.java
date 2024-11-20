package com.sit21c.recruit.vo;

import org.springframework.web.multipart.MultipartFile;

import com.sit21c.common.vo.PagingVo;

public class JobApplicationVo extends PagingVo{

	private int jobApplicationId;       // 지원 고유 ID
	private int recruitId;              // 채용 공고 ID
	private String jobApplicationName;  // 지원자 이름
	private String jobApplicationEmail; // 지원자 이메일
	private String jobApplicationPhone; // 지원자 전화번호
	private long fileId;                 // 이력서 파일 ID
	private String jobApplicationDate;  // 지원 날짜 (문자열)
	private MultipartFile resumeFile;   // 업로드된 이력서 파일
	
	public int getJobApplicationId() {
		return jobApplicationId;
	}
	public void setJobApplicationId(int jobApplicationId) {
		this.jobApplicationId = jobApplicationId;
	}
	public int getRecruitId() {
		return recruitId;
	}
	public void setRecruitId(int recruitId) {
		this.recruitId = recruitId;
	}
	public String getJobApplicationName() {
		return jobApplicationName;
	}
	public void setJobApplicationName(String jobApplicationName) {
		this.jobApplicationName = jobApplicationName;
	}
	public String getJobApplicationEmail() {
		return jobApplicationEmail;
	}
	public void setJobApplicationEmail(String jobApplicationEmail) {
		this.jobApplicationEmail = jobApplicationEmail;
	}
	public String getJobApplicationPhone() {
		return jobApplicationPhone;
	}
	public void setJobApplicationPhone(String jobApplicationPhone) {
		this.jobApplicationPhone = jobApplicationPhone;
	}
	public long getFileId() {
		return fileId;
	}
	public void setFileId(long fileId) {
		this.fileId = fileId;
	}
	public String getJobApplicationDate() {
		return jobApplicationDate;
	}
	public void setJobApplicationDate(String jobApplicationDate) {
		this.jobApplicationDate = jobApplicationDate;
	}
	public MultipartFile getResumeFile() {
		return resumeFile;
	}
	public void setResumeFile(MultipartFile resumeFile) {
		this.resumeFile = resumeFile;
	}
	
	
}
