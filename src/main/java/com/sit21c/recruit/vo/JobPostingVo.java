package com.sit21c.recruit.vo;


import java.util.Date;
import java.util.Objects;

public class JobPostingVo {
	private String jobPostingId;
    private String jobPostingTitle;
    private String jobPostingDepartment;
    private String jobPostingDescription;
    private String jobPostingRequirements;
    private String jobPostingLocation;
    private String jobPostingEmploymentType;
    private Long jobPostingPostedBy;
    private Date jobPostingStartDate;
    private Date jobPostingEndDate;
    private Date jobPostingCreatedAt;
    private Date jobPostingUpdatedAt;
    
    private String jobPostingKeyword1;
    private String jobPostingKeyword2;
    private String jobPostingKeyword3;
    private String jobPostingKeyword4;
    private String jobPostingKeyword5;
    private String jobPostingPreferredQualifications;
    private String jobPostingAdditionalInfo;
    private Boolean jobPostingIsDeleted;

    // Getters
    public String getJobPostingId() {
        return jobPostingId;
    }

    public String getJobPostingTitle() {
        return jobPostingTitle;
    }

    public String getJobPostingDepartment() {
        return jobPostingDepartment;
    }

    public String getJobPostingDescription() {
        return jobPostingDescription;
    }

    public String getJobPostingRequirements() {
        return jobPostingRequirements;
    }

    public String getJobPostingLocation() {
        return jobPostingLocation;
    }

    public String getJobPostingEmploymentType() {
        return jobPostingEmploymentType;
    }

    public Long getJobPostingPostedBy() {
        return jobPostingPostedBy;
    }

    public Date getJobPostingStartDate() {
        return jobPostingStartDate;
    }

    public Date getJobPostingEndDate() {
        return jobPostingEndDate;
    }

    public Date getJobPostingCreatedAt() {
        return jobPostingCreatedAt;
    }

    public Date getJobPostingUpdatedAt() {
        return jobPostingUpdatedAt;
    }

    public String getJobPostingKeyword1() {
        return jobPostingKeyword1;
    }

    public String getJobPostingKeyword2() {
        return jobPostingKeyword2;
    }

    public String getJobPostingKeyword3() {
        return jobPostingKeyword3;
    }

    public String getJobPostingKeyword4() {
        return jobPostingKeyword4;
    }

    public String getJobPostingKeyword5() {
        return jobPostingKeyword5;
    }

    public String getJobPostingPreferredQualifications() {
        return jobPostingPreferredQualifications;
    }

    public String getJobPostingAdditionalInfo() {
        return jobPostingAdditionalInfo;
    }

    public Boolean getJobPostingIsDeleted() {
        return jobPostingIsDeleted;
    }

    // Setters
    public void setJobPostingId(String jobPostingId) {
        this.jobPostingId = jobPostingId;
    }

    public void setJobPostingTitle(String jobPostingTitle) {
        this.jobPostingTitle = jobPostingTitle;
    }

    public void setJobPostingDepartment(String jobPostingDepartment) {
        this.jobPostingDepartment = jobPostingDepartment;
    }

    public void setJobPostingDescription(String jobPostingDescription) {
        this.jobPostingDescription = jobPostingDescription;
    }

    public void setJobPostingRequirements(String jobPostingRequirements) {
        this.jobPostingRequirements = jobPostingRequirements;
    }

    public void setJobPostingLocation(String jobPostingLocation) {
        this.jobPostingLocation = jobPostingLocation;
    }

    public void setJobPostingEmploymentType(String jobPostingEmploymentType) {
        this.jobPostingEmploymentType = jobPostingEmploymentType;
    }

    public void setJobPostingPostedBy(Long jobPostingPostedBy) {
        this.jobPostingPostedBy = jobPostingPostedBy;
    }

    public void setJobPostingStartDate(Date jobPostingStartDate) {
        this.jobPostingStartDate = jobPostingStartDate;
    }

    public void setJobPostingEndDate(Date jobPostingEndDate) {
        this.jobPostingEndDate = jobPostingEndDate;
    }

    public void setJobPostingCreatedAt(Date jobPostingCreatedAt) {
        this.jobPostingCreatedAt = jobPostingCreatedAt;
    }

    public void setJobPostingUpdatedAt(Date jobPostingUpdatedAt) {
        this.jobPostingUpdatedAt = jobPostingUpdatedAt;
    }

    public void setJobPostingKeyword1(String jobPostingKeyword1) {
        this.jobPostingKeyword1 = jobPostingKeyword1;
    }

    public void setJobPostingKeyword2(String jobPostingKeyword2) {
        this.jobPostingKeyword2 = jobPostingKeyword2;
    }

    public void setJobPostingKeyword3(String jobPostingKeyword3) {
        this.jobPostingKeyword3 = jobPostingKeyword3;
    }

    public void setJobPostingKeyword4(String jobPostingKeyword4) {
        this.jobPostingKeyword4 = jobPostingKeyword4;
    }

    public void setJobPostingKeyword5(String jobPostingKeyword5) {
        this.jobPostingKeyword5 = jobPostingKeyword5;
    }

    public void setJobPostingPreferredQualifications(String jobPostingPreferredQualifications) {
        this.jobPostingPreferredQualifications = jobPostingPreferredQualifications;
    }

    public void setJobPostingAdditionalInfo(String jobPostingAdditionalInfo) {
        this.jobPostingAdditionalInfo = jobPostingAdditionalInfo;
    }

    public void setJobPostingIsDeleted(Boolean jobPostingIsDeleted) {
        this.jobPostingIsDeleted = jobPostingIsDeleted;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        JobPostingVo that = (JobPostingVo) o;
        return Objects.equals(jobPostingId, that.jobPostingId) &&
                Objects.equals(jobPostingTitle, that.jobPostingTitle) &&
                Objects.equals(jobPostingDepartment, that.jobPostingDepartment) &&
                Objects.equals(jobPostingDescription, that.jobPostingDescription) &&
                Objects.equals(jobPostingRequirements, that.jobPostingRequirements) &&
                Objects.equals(jobPostingLocation, that.jobPostingLocation) &&
                Objects.equals(jobPostingEmploymentType, that.jobPostingEmploymentType) &&
                Objects.equals(jobPostingPostedBy, that.jobPostingPostedBy) &&
                Objects.equals(jobPostingStartDate, that.jobPostingStartDate) &&
                Objects.equals(jobPostingEndDate, that.jobPostingEndDate) &&
                Objects.equals(jobPostingCreatedAt, that.jobPostingCreatedAt) &&
                Objects.equals(jobPostingUpdatedAt, that.jobPostingUpdatedAt) &&
                Objects.equals(jobPostingKeyword1, that.jobPostingKeyword1) &&
                Objects.equals(jobPostingKeyword2, that.jobPostingKeyword2) &&
                Objects.equals(jobPostingKeyword3, that.jobPostingKeyword3) &&
                Objects.equals(jobPostingKeyword4, that.jobPostingKeyword4) &&
                Objects.equals(jobPostingKeyword5, that.jobPostingKeyword5) &&
                Objects.equals(jobPostingPreferredQualifications, that.jobPostingPreferredQualifications) &&
                Objects.equals(jobPostingAdditionalInfo, that.jobPostingAdditionalInfo) &&
                Objects.equals(jobPostingIsDeleted, that.jobPostingIsDeleted);
    }

    @Override
    public int hashCode() {
        return Objects.hash(jobPostingId, jobPostingTitle, jobPostingDepartment, jobPostingDescription,
                jobPostingRequirements, jobPostingLocation, jobPostingEmploymentType, jobPostingPostedBy,
                jobPostingStartDate, jobPostingEndDate, jobPostingCreatedAt, jobPostingUpdatedAt,
                jobPostingKeyword1, jobPostingKeyword2, jobPostingKeyword3, jobPostingKeyword4,
                jobPostingKeyword5, jobPostingPreferredQualifications, jobPostingAdditionalInfo,
                jobPostingIsDeleted);
    }

    @Override
    public String toString() {
        return "JobPostingVO{" +
                "jobPostingId=" + jobPostingId +
                ", jobPostingTitle='" + jobPostingTitle + '\'' +
                ", jobPostingDepartment='" + jobPostingDepartment + '\'' +
                ", jobPostingDescription='" + jobPostingDescription + '\'' +
                ", jobPostingRequirements='" + jobPostingRequirements + '\'' +
                ", jobPostingLocation='" + jobPostingLocation + '\'' +
                ", jobPostingEmploymentType='" + jobPostingEmploymentType + '\'' +
                ", jobPostingPostedBy=" + jobPostingPostedBy +
                ", jobPostingStartDate=" + jobPostingStartDate +
                ", jobPostingEndDate=" + jobPostingEndDate +
                ", jobPostingCreatedAt=" + jobPostingCreatedAt +
                ", jobPostingUpdatedAt=" + jobPostingUpdatedAt +
                ", jobPostingKeyword1='" + jobPostingKeyword1 + '\'' +
                ", jobPostingKeyword2='" + jobPostingKeyword2 + '\'' +
                ", jobPostingKeyword3='" + jobPostingKeyword3 + '\'' +
                ", jobPostingKeyword4='" + jobPostingKeyword4 + '\'' +
                ", jobPostingKeyword5='" + jobPostingKeyword5 + '\'' +
                ", jobPostingPreferredQualifications='" + jobPostingPreferredQualifications + '\'' +
                ", jobPostingAdditionalInfo='" + jobPostingAdditionalInfo + '\'' +
                ", jobPostingIsDeleted=" + jobPostingIsDeleted +
                '}';
    }
}
