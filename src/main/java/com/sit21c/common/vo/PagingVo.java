package com.sit21c.common.vo;

public class PagingVo {
	private int no = 1;
    private int currentPage = 1;  // 현재 페이지
    private int pageSize = 10;    // 한 페이지에 보여줄 데이터 수
    private int totalRecords;     // 전체 레코드 수
    private int totalPages;       // 전체 페이지 수
    private int startRecord;      // 현재 페이지에서 시작하는 레코드 번호
    private int endRecord;        // 현재 페이지에서 끝나는 레코드 번호

    // 기본 계산 로직
    public void calculatePaging() {
        if (pageSize > 0) {
            this.totalPages = (int) Math.ceil((double) totalRecords / pageSize);
            this.startRecord = (currentPage - 1) * pageSize + 1;
            this.endRecord = Math.min(currentPage * pageSize, totalRecords);
        }
    }
    
    
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

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

	public int getStartRecord() {
		return startRecord;
	}

	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}

	public int getEndRecord() {
		return endRecord;
	}

	public void setEndRecord(int endRecord) {
		this.endRecord = endRecord;
	}


}
