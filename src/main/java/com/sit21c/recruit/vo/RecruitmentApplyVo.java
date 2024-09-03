package com.sit21c.recruit.vo;

import org.springframework.web.multipart.MultipartFile;

public class RecruitmentApplyVo {
	
	//지원 id(pk)
	private int applicationId;
	//부모키
	private int applicationJobPostingId;
	//지원자명
	private String applicationUserNm;
	//지원자이메일
	private String applicationEmail;
	//지원자연락처
	private String applicationTel;
	//첨부파일
	private MultipartFile attchFile;
	//첨부파일아이디
	private long attchFileId;
	//지원내용
	private String applicationCoverLetter;
	public int getApplicationId() {
		return applicationId;
	}
	public void setApplicationId(int applicationId) {
		this.applicationId = applicationId;
	}
	public int getApplicationJobPostingId() {
		return applicationJobPostingId;
	}
	public void setApplicationJobPostingId(int applicationJobPostingId) {
		this.applicationJobPostingId = applicationJobPostingId;
	}
	public String getApplicationUserNm() {
		return applicationUserNm;
	}
	public void setApplicationUserNm(String applicationUserNm) {
		this.applicationUserNm = applicationUserNm;
	}
	public String getApplicationEmail() {
		return applicationEmail;
	}
	public void setApplicationEmail(String applicationEmail) {
		this.applicationEmail = applicationEmail;
	}
	public String getApplicationTel() {
		return applicationTel;
	}
	public void setApplicationTel(String applicationTel) {
		this.applicationTel = applicationTel;
	}
	public MultipartFile getAttchFile() {
		return attchFile;
	}
	public void setAttchFile(MultipartFile attchFile) {
		this.attchFile = attchFile;
	}
	public long getAttchFileId() {
		return attchFileId;
	}
	public void setAttchFileId(long attchFileId) {
		this.attchFileId = attchFileId;
	}
	public String getApplicationCoverLetter() {
		return applicationCoverLetter;
	}
	public void setApplicationCoverLetter(String applicationCoverLetter) {
		this.applicationCoverLetter = applicationCoverLetter;
	}
	@Override
	public String toString() {
		return "RecruitmentApplyVo [applicationId=" + applicationId + ", applicationJobPostingId="
				+ applicationJobPostingId + ", applicationUserNm=" + applicationUserNm + ", applicationEmail="
				+ applicationEmail + ", applicationTel=" + applicationTel + ", attchFile=" + attchFile
				+ ", attchFileId=" + attchFileId + ", applicationCoverLetter=" + applicationCoverLetter + "]";
	}

	
}
