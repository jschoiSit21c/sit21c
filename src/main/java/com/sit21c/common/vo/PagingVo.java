package com.sit21c.common.vo;

public class PagingVo {
    private int currentPage = 1;  // 기본값: 현재 페이지는 1
    private int pageSize = 10;    // 기본값: 페이지당 게시글 수는 10
    private int totalRecords;     // 전체 게시글 수
    private int totalPages;       // 전체 페이지 수

    // Getters and Setters
    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRecords() {
        return totalRecords;
    }

    public void setTotalRecords(int totalRecords) {
        this.totalRecords = totalRecords;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    // 총 페이지 수 계산 메서드
    public void calculateTotalPages() {
        if (pageSize > 0) {
            this.totalPages = (int) Math.ceil((double) totalRecords / pageSize);
        }
    }
}
