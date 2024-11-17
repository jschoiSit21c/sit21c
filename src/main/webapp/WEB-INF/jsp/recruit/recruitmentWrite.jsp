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
<!-- summernoteCSS -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css" rel="stylesheet">
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<!-- Summernote JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">채용공고 작성</h2>
		<section id="recruitment-form">
			<form id="recruitmentForm" method="post" class="recruitment-form" onsubmit="return false;">
				<!-- 제목 -->
				<div class="form-group">
					<label for="title">제목</label>
					<input type="text" id="recruitTitle" name=recruitTitle class="form-control" required>
				</div>
				<!-- 내용 -->
				<div class="form-group">
					<label for="recruitContent">내용</label>
					<textarea id="recruitContent" name="recruitContent"></textarea>
				</div>
				<!-- 업무분야 -->
				<div class="form-group">
					<label for="recruitJobCategoryCode">업무분야</label>
					<select id="recruitJobCategoryCode" name="recruitJobCategoryCode" class="form-control" required>
						<c:forEach items="${jobCategory}" var="item">
							<option value="${item.codeNo}">${item.codeValue}</option>
						</c:forEach>
					</select>
				</div>
				<!-- 채용형태 -->
				<div class="form-group">
					<label for="recruitTypeCode">채용형태</label>
					<select id="recruitTypeCode" name="recruitTypeCode" class="form-control" required>
						<c:forEach items="${recruitType}" var="item">
							<option value="${item.codeNo}">${item.codeValue}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label for="recruitPlace">근무지</label>
					<input type="text" id="recruitPlace" name="recruitPlace" class="form-control">
				</div>				
				<!-- 게시 기간 -->
				<div class="form-group">
					<label for="recruitStartTime">게시기간</label>
					<input type="date" id="recruitStartTime" name="recruitStartTime" required> ~ 
					<input type="date" id="recruitEndTime" name="recruitEndTime" required>
				</div>
				
				<!-- 제목 -->
				<div class="form-group">
					<label for="recruitExternalUrl">외부링크(사람인)</label>
					<input type="text" id="recruitExternalUrl" name="recruitExternalUrl" class="form-control">
				</div>
				<!-- 버튼 -->
				<div class="form-buttons">
					<button type="submit" class="btn-submit">등록하기</button>
				</div>
			</form>
		</section>

	</div>

	<!--// 서브 전체내용 1 -->
	
	
<script>
	$(document).ready(function () {
		//summernote 초기화
		$('#recruitContent').summernote({
			height: 300, // 기본 높이 300px
		});
		
		$("#recruitmentForm").on("submit", function(e){
			$.ajax({
				url: "/recruit/saveRecruitment",
				type: "POST",
				dataType: "json",
				contentType: "application/json",
				data: JSON.stringify({
					recruitTitle : $("#recruitTitle").val(),
					recruitContent: $('#recruitContent').summernote('code'),
					recruitJobCategoryCode : $("#recruitJobCategoryCode").val(),
					recruitTypeCode : $("#recruitTypeCode").val(),
					recruitStartTime : $("#recruitStartTime").val(),
					recruitEndTime : $("#recruitEndTime").val(),
					recruitExternalUrl : $("#recruitExternalUrl").val(),
					recruitPlace: $("#recruitPlace").val(),
				}),
			}).done(data => {
				if(data.isSuccess){
					alert("채용 공고가 저장되었습니다.");	
// 					location.href='/company/ceo';
				}else{
					alert("채용 공고 저장에 실패하였습니다.");	
				}
				
			}).fail(data => {
				alert("채용 공고 저장에 실패하였습니다.");
			})
		});
	});
</script>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>