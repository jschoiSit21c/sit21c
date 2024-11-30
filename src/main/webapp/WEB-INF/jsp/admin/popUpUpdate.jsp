<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - 팝업수정</title>
<!-- summernoteCSS -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css" rel="stylesheet">
<style>
.btn-cancel{
 padding: 10px 20px; font-size: 16px; background-color: #105cbf; color: #fff; border: none; border-radius: 4px; cursor: pointer; 
}
.btn-cancel:hover{
 background-color: #1471e7; 
}
</style>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<!-- Summernote JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">팝업 수정</h2>
		<section id="popUp-form">
			<form id="popUpForm" method="post" class="popUp-form" onsubmit="return false;">
				<!-- 제목 -->
				<div class="form-group">
					<label for="title">제목</label>
					<input type="text" id="popUpTitle" name=popUpTitle class="form-control" value="${result.title }" required >
					
				</div>
				<!-- 내용 -->
				<div class="form-group">
					<label for="popUpContent">내용</label>
					<textarea id="popUpContent" name="popUpContent">${result.content }</textarea>
				</div>
				<!-- 팝업 기간 -->
				<div class="form-group">
					<label for="popUpStartTime">팝업기간</label>
					<fmt:parseDate value="${result.popStart }" pattern="yyyy-MM-dd" var='tempStart'/>
					<fmt:parseDate value="${result.popEnd }" pattern="yyyy-MM-dd" var='tempEnd'/>
					
					<input type="date" id="popUpStartTime" name="popUpStartTime" value="<fmt:formatDate value='${tempStart }' pattern='yyyy-MM-dd' />" required> ~ 
					<input type="date" id="popUpEndTime" name="popUpEndTime" value="<fmt:formatDate value='${tempEnd }' pattern='yyyy-MM-dd' />" required>
				</div>
				
				<!-- 버튼 -->
				<div class="form-buttons">
					<button type="submit" class="btn-submit">수정하기</button>
					<button type="button" class="btn-cancel" onclick="location.href='/admin/popUpDetail?popUpId=${result.popUpId }'">취소</button>
				</div>
			</form>
		</section>

	</div>
	<!--// 서브 전체내용 1 -->
	
	
<script>
	$(document).ready(function () {
		//summernote 초기화
		$('#popUpContent').summernote({
			height: 600, // 기본 높이 300px
		});
		
		
		
		$("#popUpForm").on("submit", function(e){
			
			$.ajax({
				url: "/admin/updatePopUp",
				type: "POST",
				dataType: "json",
				contentType: "application/json",
				data: JSON.stringify({
					popUpId : ${result.popUpId},
					title : $("#popUpTitle").val(),
					content: $('#popUpContent').summernote('code'),
					popStart : $("#popUpStartTime").val(),
					popEnd : $("#popUpEndTime").val(),
				}),
			}).done(data => {
				if(data.isSuccess){
					alert("팝업 정보가 수정되었습니다.");	
					location.href='/admin/popUpList';
				}else{
					alert("팝업 정보 수정에 실패하였습니다.");	
				}
				
			}).fail(data => {
				alert("팝업 정보 수정에 실패하였습니다.");
			})
		});
		

		
		
	});
</script>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>