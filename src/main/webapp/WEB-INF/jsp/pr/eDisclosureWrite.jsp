<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - 전자공시 등록</title>
<!-- summernoteCSS -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css" rel="stylesheet">
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>

	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">전자공시 등록</h2>
		<section id="recruitment-form">
			<form id="eDisclosureWriteForm" method="post" class="recruitment-form" onsubmit="return false;">

				<!-- 제목 -->
				<div class="form-group">
					<label for="reportName">제목 / ${eDisclosureResult.reportName } / ${isWrite}</label>
					<input type="text" id="reportName" name=reportName class="form-control" required value="${isWrite ? '' : eDisclosureResult.reportName }">
				</div>

				<!-- 버튼 -->
				<div class="form-buttons">
					<button type="submit" class="btn-submit">등록하기</button>
					<button type="button" class="btn-submit" onclick="history.back();">취소</button>
				</div>
			</form>
		</section>

	</div>

	<!--// 서브 전체내용 1 -->
	
	
<script>
	$(document).ready(function () {
		
		$("#eDisclosureWriteForm").on("submit", function(e){
			if(!confirm("저장하시겠습니까?")) return;
			var url = "${isWrite ? '/pr/saveEDisclosure' : '/pr/modifyEDisclosure'}";
			alert("1 ^^ url : " + url);
			var id = "${isWrite ? '' : eDisclosureResult.id}";
			alert("2 ^^ id : " + id +"\n" +"isWrite : " + ${isWrite});
			$.ajax({
				url: url,
				type: "POST",
				dataType: "json",
				contentType: "application/json",
				data: JSON.stringify({
					reportName : $("#reportName").val(),
					<c:if test="${!isWrite}">
						id : id,
					</c:if>
				}),
			}).done(data => {
				if(data.isSuccess){
					alert("전자공시가 저장되었습니다.");	
					location.href= `/pr/eDisclosureMain/?id=\${data.id}`;
				}else{
					alert("전자공시 저장에 실패하였습니다.");	
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