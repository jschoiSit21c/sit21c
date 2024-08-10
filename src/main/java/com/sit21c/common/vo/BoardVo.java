package com.sit21c.common.vo;

public class BoardVo extends PagingVo {
    private int boardNo;         // 게시물 번호
    private String boardType;    // 게시판 타입
    private String title;        // 게시물 제목
    private String content;      // 게시물 내용
    private String createUser;   // 작성자
    private String createDate;   // 작성일시 (String으로 처리)
    private String updateUser;   // 수정자
    private String updateDate;   // 수정일시 (String으로 처리)

    // Getters and Setters
    public int getBoardNo() {
        return boardNo;
    }

    public void setBoardNo(int boardNo) {
        this.boardNo = boardNo;
    }

    public String getBoardType() {
        return boardType;
    }

    public void setBoardType(String boardType) {
        this.boardType = boardType;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }
}
