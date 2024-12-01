<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - 팝업 목록</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<style>
.page{
	text-align: center;
	width : 50%;
}
.pagination {
list-style: none;
display : inline-block;
padding : 0;
margin-top : 20px;
}
.pagination li{
display : inline;
text-align : center;
}

.pagination a {
float : left;
display : black;
font-size : 14px;
text-decoration: none;
padding: 5px 12px;
color : #96a0ad;
line-height:1.5;
}
.prev:hover ,.next:hover{
	color:#2e9cdf;
}
.pagination a:actvie{
cursor: default;
color: #ffffff;
}
.pagination a:actvie{
outline: none;
}
.modal .num{
margin-left: 3px;
padding: 0;
width: 30px;
height: 30px;
line-height: 30px;
-moz-border-radius : 100%;
-webkit-border-radius : 100%;
border-radius: 100%;
}
.modal .num:hover {
	background-color: #2e9cdf;
	color:#ffffff;
}
.modal .num.active, .modal .num:active{
background-color: #2e9cdf;
cursor: pointer;
}
</style>
	<!-- 서브 페이지 1 -->
	<div class="sub-page-content">
	<!-- 인사말 -->
<!-- 		<div class="sub-page1-area"> -->
		<!-- 슬로건 및 설명 -->
			<!-- 이미지와 CEO 인사말 내용 -->
<!-- 			<div class="ceo-message-content"> -->
<!-- 			</div>	 -->
<!-- 		</div>	 -->
		<section class="employ-section">
			<br/>
			<h2 class="employ-title">팝업목록</h2>
			<div class="job-table-wrapper">
				<!-- 채용 목록 테이블 -->
				<table class="employ-table">
					<thead>
						<tr>
							<th>제목</th>
							<th>팝업시작일 &nbsp;~&nbsp;팝업종료일</th>
							<th>작성일</th>
							<th>상세보기</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${list }">
							<tr>
								<td>${p.title }</td>
								<td>${p.popStart }&nbsp;~&nbsp;${p.popEnd }</td>
								<td>
								<fmt:parseDate value="${p.createAt }" pattern="yyyy-MM-dd" var='tempDate'/>
								<fmt:formatDate value="${tempDate }" pattern="yyyy-MM-dd" />
								</td>
								<td><button class="detail-button" onclick="location.href='/admin/popUpDetail?popUpId=${p.popUpId }'">></button></td>
							</tr>
						
						</c:forEach>

					</tbody>
				</table>
				<div class="page-wrapper">
				    <div class="page">
				        <ul class="pagination modal">
				            <!-- 이전 버튼 -->
				            <c:if test="${prev}">
				                <li>
				                    <a class="prev" onclick="location.href='/admin/popUpList?currentPage=${startPage - 1 }'">이전</a>
				                </li>
				            </c:if>
				            
				            <!-- 페이지 번호 -->
				            <c:forEach begin="${startPage}" end="${endPage}" var="index">
				                <li <c:out value="${currentPage == index ? 'class=active' : '' }"/>>
				                    <a class="num" onclick="location.href='/admin/popUpList?currentPage=${index }'">${index}</a>
				                </li>
				            </c:forEach>
				            
				            <!-- 다음 버튼 -->
				            <c:if test="${next && endPage > 0}">
				                <li>
				                    <a class="next" onclick="location.href='/admin/popUpList?currentPage=${endPage + 1 }'">다음</a>
				                </li>
				            </c:if>
				        </ul>
				    </div>
				</div>

				<button class="write-button" onclick="location.href='/admin/popUpWrite'">글쓰기</button>
			</div>
		</section>

	</div>
	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>