<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - 전자공시</title>
</head>
<body class="sub-page" id="eDisclosureMain">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content" style="position: relative;">
	
		<h2 class="sub-page-title">전자공시 게시판</h2>
        
		
<section class="employ-section">
    <h2 class="employ-title">test구현</h2>
    
    <table class="employ-table">
        <thead>
            <tr>
                <th>No</th>
                <!-- <th>공시대상회사</th> -->
                <th>보고서명</th>
                <!-- <th>제출인</th> -->
                <th>접수일자</th>
                <security:authorize access="hasRole('SA')">
                <th>수정</th>
                </security:authorize>
            </tr>
        </thead>
        <tbody>
		<c:forEach items="${list}" var="item">
			<tr>
				<td>${item.id}</td>
				<%-- <td>${item.companyName}</td> --%>
				<td>${item.reportName}</td>
				<%-- <td>${item.submitter}</td> --%>
				<td>${item.submissionDate}</td>
				<security:authorize access="hasRole('SA')">
				<td><button class="detail-button" onclick="location.href='/pr/eDisclosureUpdate?id=${item.id}'">></button></td>
				</security:authorize>
			</tr>
		</c:forEach>
        </tbody>
    </table>
</section>
		
<!-- 페이징 영역 -->
<div class="pagination">
    <!-- 폼 시작 -->
    <form id="paginationForm" action="/pr/eDisclosureMain" method="get">
        <!-- 현재 페이지 -->
        <input type="hidden" name="currentPage" id="currentPage" value="${paging.currentPage}">
        
        <!-- 추가 파라미터 (예: 검색어) -->
        <input type="hidden" name="searchKeyword" value="${searchKeyword}">
    </form>

    <!-- 이전 페이지 -->
    <c:if test="${paging.currentPage > 1}">
        <button type="button" class="prev-page" onclick="submitPage(${paging.currentPage - 1})">&laquo;</button>
    </c:if>

    <!-- 페이지 번호 링크 -->
    <c:forEach begin="1" end="${paging.totalPages}" var="page">
        <button type="button" class="page-button ${page == paging.currentPage ? 'active' : ''}" onclick="submitPage(${page})">
            ${page}
        </button>
    </c:forEach>

    <!-- 다음 페이지 -->
    <c:if test="${paging.currentPage < paging.totalPages}">
        <button type="button" class="next-page" onclick="submitPage(${paging.currentPage + 1})">&raquo;</button>
    </c:if>
</div>

<script>
    // 페이지 전환 함수
    function submitPage(page) {
        document.getElementById("currentPage").value = page;
        document.getElementById("paginationForm").submit();
    }
</script>

				<security:authorize access="hasRole('SA')">
					<!-- 글쓰기 버튼, 관리자 로그인시에만 보임 -->
					<button class="write-button" onclick="location.href='/pr/eDisclosureWrite'">전자공시등록</button>
				</security:authorize>
			</div>

<script>
// 자바스크립트로 페이지 변경
function submitPage(page) {
	document.getElementById("currentPage").value = page;
	document.getElementById("paginationForm").submit();
}
</script>
	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>