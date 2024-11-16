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
			<form action="/recruit/saveRecruitment" method="post" class="recruitment-form">
				<!-- 제목 -->
				<div class="form-group">
					<label for="title">제목</label>
					<input type="text" id="title" name="title" class="form-control" required>
				</div>
				<!-- 내용 -->
				<div class="form-group">
					<label for="content">내용</label>
					<textarea id="content" name="content"></textarea>
				</div>
				<!-- 업무분야 -->
				<div class="form-group">
					<label for="field">업무분야</label>
					<select id="field" name="recruitJobCategoryCode" class="form-control" required>
						<c:forEach items="${jobCategory}" var="item">
							<option value="${item.codeNo}">${item.codeValue}</option>
						</c:forEach>
					</select>
				</div>
				<!-- 채용공고상태 -->
				<div class="form-group">
					<label for="field">채용공고상태</label>
					<select id="field" name="recruitStatusCode" class="form-control" required>
						<c:forEach items="${recruitStatus}" var="item">
							<option value="${item.codeNo}" ${item.codeNo == '0002' ? 'selected' : ''}>${item.codeValue}</option>
						</c:forEach>
					</select>
				</div>
				<!-- 채용형태 -->
				<div class="form-group">
					<label for="field">채용형태</label>
					<select id="field" name="recruit_type_code" class="form-control" required>
						<c:forEach items="${recruitType}" var="item">
							<option value="${item.codeNo}">${item.codeValue}</option>
						</c:forEach>
					</select>
				</div>
				<!-- 게시 기간 -->
				<div class="form-group">
					<label for="posting-period">게시기간</label>
					<input type="date" id="start-date" name="startDate" required> ~ 
					<input type="date" id="end-date" name="endDate" required>
				</div>
				
				<!-- 제목 -->
				<div class="form-group">
					<label for="title">외부링크(사람인)</label>
					<input type="text" name="recruitExternalUrl" class="form-control">
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
		$('#content').summernote({
			height: 300, // 기본 높이 300px
		});
	});
</script>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>