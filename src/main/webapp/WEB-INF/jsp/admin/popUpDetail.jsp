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
<title>소프트아이텍 - 팝업 상세</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<script>
	function openPopUp(){
		var lRatio = ${result.popLeftRatio};
		var tRatio = ${result.popTopRatio}
		var fWidth = window.screen.width;
		var fHeight = window.screen.height;
		var leftOpenPostion = fWidth * lRatio;
		var topOpenPostion = fHeight * tRatio;
		
		window.open("/admin/popUpDetailForUser?popUpId=${result.popUpId}" , "", "status=no, titlebar=no,toolbar=no,  menubar=no, scrollbars=yes,height=${result.popHeight },width=${result.popWidth },left="+leftOpenPostion +",top="+topOpenPostion+";");
		
	}
	
	
	function deletePop(){
		if(confirm("작성된 팝업을 삭제하시겠습니까?")){
			$.ajax({
				url: "/admin/deletePopUp",
				type: "POST",
				dataType: "json",
				contentType: "application/json",
				data: JSON.stringify({
					popUpId : ${result.popUpId}
				}),
			}).done(data => {
				if(data.isSuccess){
					alert("팝업 정보가 삭제되었습니다.");	
					location.href='/admin/popUpList';
				}else{
					alert("팝업 정보 삭제에 실패하였습니다.");	
				}
				
			}).fail(data => {
				alert("팝업 정보 삭제에 실패하였습니다.");
			})
			
		}
	}
	</script>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content job-detail-page">
		<h2 class="sub-page-title">팝업 상세</h2>

		<!-- 채용 공고 상세 정보 -->
		<section class="job-detail-section">
			<div class="job-detail-header">
				<h1 class="job-title">제목 : ${result.title }</h1>
				<fmt:parseDate value="${result.createAt }" pattern="yyyy-MM-dd" var='tempCrDate'/>
				<fmt:parseDate value="${result.updateAt }" pattern="yyyy-MM-dd" var='tempChgDate'/>
				
				<p>작성일자(수정일자): <fmt:formatDate value="${tempCrDate }" pattern="yyyy-MM-dd" />&nbsp;<c:if test="${result.updateAt != null }">(<fmt:formatDate value="${tempChgDate }" pattern="yyyy-MM-dd" />)</c:if> </p>
				<p>팝업 기간: ${result.popStart }&nbsp;~&nbsp;${result.popEnd }</p>
				
			</div>
			<div class="job-detail-info">
				<div class="job-detail-row">
					<h4>내용</h4>
					<p>${result.content }</p>
				</div>
			</div>
		</section>
		<!-- 뒤로가기 버튼 -->
		<div class="job-admin-buttons">
			<button class="back-button" onclick="history.go(-1);">목록</button>
			<button type="button" onclick='javascript:openPopUp();' class="edit-button">팝업위치조정</button>
			<button type="button" onclick="location.href='/admin/popUpUpdate?popUpId=${result.popUpId}'" class="edit-button">수정</button>
			<button type="button" onclick="javascript:deletePop();" class="edit-button">삭제</button>
		</div>
	</div>

	<!--// 서브 전체내용 1 -->

<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>