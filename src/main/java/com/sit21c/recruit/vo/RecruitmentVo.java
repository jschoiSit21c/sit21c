package com.sit21c.recruit.vo;

import com.sit21c.common.vo.PagingVo;

public class RecruitmentVo extends PagingVo {

	private int recruitId;
	private String recruitTitle;
	private String recruitContent;
	private String recruitJobCategoryCode;
	private String recruitAuthor;
	private String recruitCreated_at;
	private String recruitUpdated_by;
	private String recruitUpdated_at;
	private String recruitStartTime;
	private String recruitEndTime;
	private String recruitTypeCode;
	private String recruitExternalUrl;
	private String recruitPlace;
	
	public int getRecruitId() {
		return recruitId;
	}
	public void setRecruitId(int recruitId) {
		this.recruitId = recruitId;
	}
	public String getRecruitTitle() {
		return recruitTitle;
	}
	public void setRecruitTitle(String recruitTitle) {
		this.recruitTitle = recruitTitle;
	}
	public String getRecruitContent() {
		return recruitContent;
	}
	public void setRecruitContent(String recruitContent) {
		this.recruitContent = recruitContent;
	}
	public String getRecruitJobCategoryCode() {
		return recruitJobCategoryCode;
	}
	public void setRecruitJobCategoryCode(String recruitJobCategoryCode) {
		this.recruitJobCategoryCode = recruitJobCategoryCode;
	}
	public String getRecruitAuthor() {
		return recruitAuthor;
	}
	public void setRecruitAuthor(String recruitAuthor) {
		this.recruitAuthor = recruitAuthor;
	}
	public String getRecruitCreated_at() {
		return recruitCreated_at;
	}
	public void setRecruitCreated_at(String recruitCreated_at) {
		this.recruitCreated_at = recruitCreated_at;
	}
	public String getRecruitUpdated_by() {
		return recruitUpdated_by;
	}
	public void setRecruitUpdated_by(String recruitUpdated_by) {
		this.recruitUpdated_by = recruitUpdated_by;
	}
	public String getRecruitUpdated_at() {
		return recruitUpdated_at;
	}
	public void setRecruitUpdated_at(String recruitUpdated_at) {
		this.recruitUpdated_at = recruitUpdated_at;
	}
	public String getRecruitStartTime() {
		return recruitStartTime;
	}
	public void setRecruitStartTime(String recruitStartTime) {
		this.recruitStartTime = recruitStartTime;
	}
	public String getRecruitEndTime() {
		return recruitEndTime;
	}
	public void setRecruitEndTime(String recruitEndTime) {
		this.recruitEndTime = recruitEndTime;
	}
	public String getRecruitTypeCode() {
		return recruitTypeCode;
	}
	public void setRecruitTypeCode(String recruitTypeCode) {
		this.recruitTypeCode = recruitTypeCode;
	}
	public String getRecruitExternalUrl() {
		return recruitExternalUrl;
	}
	public void setRecruitExternalUrl(String recruitExternalUrl) {
		this.recruitExternalUrl = recruitExternalUrl;
	}
	public String getRecruitPlace() {
		return recruitPlace;
	}
	public void setRecruitPlace(String recruitPlace) {
		this.recruitPlace = recruitPlace;
	}
}
