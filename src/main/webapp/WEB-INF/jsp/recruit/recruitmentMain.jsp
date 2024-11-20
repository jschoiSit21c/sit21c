<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - 채용정보</title>
</head>
<body class="sub-page" id="recruitmentMain">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">채용정보</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
		
			<h3 class="slogan">소프트아이텍은 정기/수시 채용제도를 통해, 능력 있는 인재들이 지원할 수 있도록 가능성을 열어두고 있습니다.</h3>

			<!-- 이미지와 CEO 인사말 내용 -->
			<div class="employ-message-content">

			</div>	
		</div>	
		<section class="job-list-section">
			<div class="job-table-wrapper">
				<!-- 채용 목록 테이블 -->
				<table class="job-table">
					<thead>
						<tr>
							<th>no</th>
							<th>진행상태</th>
							<th>업무분야</th>
							<th>채용 제목</th>
							<th>근무지</th>
							<th>지원기간</th>
							<th>상세보기</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item">
							<tr>
								<td>${item.no}</td>
								<td>${item.recruitStatus}</td>
								<td>${item.recruitJobCategoryValue}</td>
								<td>${item.recruitTitle}</td>
								<td>${item.recruitPlace}</td>
								<td>${item.recruitStartTime} ~ ${item.recruitEndTime}</td>
								<td><button class="job-apply-button" onclick="location.href='/recruit/recruitmentDetail?recruitId=${item.recruitId}'">자세히 보기</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		
<!-- 페이징 영역 -->
<div class="pagination">
    <!-- 폼 시작 -->
    <form id="paginationForm" action="/recruit/recruitmentMain" method="get">
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
					<button class="write-button" onclick="location.href='/recruit/recruitmentWrite'">글쓰기</button>
				</security:authorize>
			</div>
		</section>


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