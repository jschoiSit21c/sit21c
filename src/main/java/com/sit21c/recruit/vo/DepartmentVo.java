package com.sit21c.recruit.vo;

import java.time.LocalDateTime;

public class DepartmentVo {
	private Long departmentId;
	private String departmentName;
	private String departmentDescription;
	private Long departmentParentId;
	private LocalDateTime departmentCreatedAt;
	private LocalDateTime departmentUpdatedAt;
	
	// Getters and Setters
	public Long getDepartmentId() {
	    return departmentId;
	}
	
	public void setDepartmentId(Long departmentId) {
	    this.departmentId = departmentId;
	}
	
	public String getDepartmentName() {
	    return departmentName;
	}
	
	public void setDepartmentName(String departmentName) {
	    this.departmentName = departmentName;
	}
	
	public String getDepartmentDescription() {
	    return departmentDescription;
	}
	
	public void setDepartmentDescription(String departmentDescription) {
	    this.departmentDescription = departmentDescription;
	}
	
	public Long getDepartmentParentId() {
	    return departmentParentId;
	}
	
	public void setDepartmentParentId(Long departmentParentId) {
	    this.departmentParentId = departmentParentId;
	}
	
	public LocalDateTime getDepartmentCreatedAt() {
	    return departmentCreatedAt;
	}
	
	public void setDepartmentCreatedAt(LocalDateTime departmentCreatedAt) {
	    this.departmentCreatedAt = departmentCreatedAt;
	}
	
	public LocalDateTime getDepartmentUpdatedAt() {
	    return departmentUpdatedAt;
	}
	
	public void setDepartmentUpdatedAt(LocalDateTime departmentUpdatedAt) {
	    this.departmentUpdatedAt = departmentUpdatedAt;
	}
}
