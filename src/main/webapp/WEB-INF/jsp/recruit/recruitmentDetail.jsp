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
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content job-detail-page">
		<h2 class="sub-page-title">채용공고 상세</h2>

	<!--//ICT 인프라서비스 -->    	
        <section class="employ-section">
            <h2 class="employ-title">채용</h2>
            <div class="employ-intro">
                <h3>${item.recruitTitle}</h3>
				<!-- 관리자 아닐때만 -->
                <c:if test="${item.recruitStatus == '진행중'}">
	                <div class="employ-buttons">
	                    <button class="saramin-button" onclick="window.open('${item.recruitExternalUrl}');">saramin 지원하기</button>
	                    <button class="saramin-button" onclick="openApplicationModal()">채용지원서 작성</button>
	                </div>
                </c:if>
            </div>
            
            <!-- 채용지원서 모달 다이얼로그 추가 -->
		    <div id="applicationModal" class="modal">
		        <div class="modal-content">
		            <span class="close-button" onclick="closeApplicationModal()">&times;</span>
		            <h2>채용지원서</h2>
		            <form id="applicationForm" class="application-form" onsubmit="submitApplication(event)">
		                <input type="hidden" name="recruitId" value="${param.recruitId}">
		                <div class="form-row">
		                    <label for="name">이름 *</label>
		                    <input type="text" id="name" name="jobApplicationName" required>
		                </div>
		                <div class="form-row">
		                    <label for="email">이메일 *</label>
		                    <input type="email" id="email" name="jobApplicationEmail" required>
		                </div>
		                <div class="form-row">
		                    <label for="phone">전화번호 *</label>
		                    <input type="tel" id="phone" name="jobApplicationPhone" required>
		                </div>
		                <div class="form-row">
		                    <label for="resume">이력서 첨부 *</label>
		                    <input type="file" id="resume" name="resumeFile" accept=".pdf,.doc,.docx" required>
		                </div>
						<!-- 개인정보 동의 -->
						<div class="privacy-agree">
							<input type="checkbox" id="jobApplicationAgree" name="jobApplicationAgree" required>
							<label for="agree">개인정보처리방침에 동의합니다.</label>
						</div>
		                <button type="submit" class="submit-button">지원하기</button>
		            </form>
		        </div>
		    </div>
            
			<div class="view_area">
				${item.recruitContent}
<!-- 			<img src="/img/Job_Notice.png"> -->
			
			</div>
			
                <div class="form-buttons">
                    <button type="button" class="form-submit" onclick="location.href='/recruit/recruitmentMain'">목록</button>
                </div>
        </section>

		<security:authorize access="hasRole('SA')">
			<!-- 관리자만 -->
			<div id="admin-applicants-container">
				<h2 class="admin-applicants-title">지원자 현황</h2>
				<table id="admin-applicants-table">
					<thead>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>지원일</th>
							<th>이력서</th>
						</tr>
					</thead>
					<tbody>
						<!-- Ajax로 데이터를 로드합니다 -->
					</tbody>
				</table>
				<div id="admin-applicants-pagination">
					<!-- 페이징 버튼이 여기 생성됩니다 -->
				</div>
			</div>
		</security:authorize>
		<security:authorize access="hasRole('SA')">
			<!-- 관리자만 수정 가능하게끔 -->
			<div class="job-admin-buttons">
				<button type="button" onclick="location.href='/recruit/recruitmentUpdate/?recruitId=${param.recruitId}'" class="edit-button">공고 수정</button>
			</div>
		</security:authorize>
	</div>
	<!--// 서브 전체내용 1 -->
<script>
<c:if test="${submitJobApplicationMsg != null}">
	alert("${submitJobApplicationMsg}");
</c:if>
</script>
<!-- JavaScript 추가 -->
    <script>
        function openApplicationModal() {
            document.getElementById('applicationModal').style.display = 'block';
        }

        function closeApplicationModal() {
            document.getElementById('applicationModal').style.display = 'none';
        }

        // 모달 외부 클릭 시 닫기
        window.onclick = function(event) {
            var modal = document.getElementById('applicationModal');
            if (event.target == modal) {
                modal.style.display = 'none';
            }
        }

        function submitApplication(event) {
            event.preventDefault();
            
            const formData = new FormData(document.getElementById('applicationForm'));
            
            fetch('/recruit/submitJobApplication', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('지원이 완료되었습니다.');
                    closeApplicationModal();
                } else {
                    alert(data.message || '지원 중 오류가 발생했습니다.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('지원 중 오류가 발생했습니다.');
            });
        }
    </script>
<security:authorize access="hasRole('SA')">
<script>
	$(document).ready(function () {
		const recruitId = '<c:out value="${param.recruitId}" />'; // JSP 변수 출력

		// 데이터 로드
		function loadApplicants(page = 1) {
			$.ajax({
				url: "/recruit/selectApplicants", // 서버 URL
				type: "GET",
				data: { recruitId: recruitId, currentPage: page },
				dataType: "json",
				success: function (response) {
					const tableBody = $("#admin-applicants-table tbody");
					tableBody.empty();

					const applicants = response.list; // 실제 데이터 리스트
					const paging = response.paging;  // 페이징 정보

					if (applicants && applicants.length > 0) {
						applicants.forEach(function (applicant, index) {
							const row = 
								"<tr>" +
									"<td>" + (paging.startRecord + index) + "</td>" + // 동적 번호
									"<td>" + (applicant.jobApplicationName || "-") + "</td>" +
									"<td>" + (applicant.jobApplicationEmail || "-") + "</td>" +
									"<td>" + (applicant.jobApplicationPhone || "-") + "</td>" +
									"<td>" + 
										(applicant.jobApplicationDate ? applicant.jobApplicationDate.split(' ')[0] : "-") + 
									"</td>" +
									"<td>" +
										(applicant.fileId 
											? "<a href='/file/download?fileId=" + applicant.fileId + "' target='_blank' class='download-link'>파일 다운로드</a>"
											: "없음") +
									"</td>" +
								"</tr>";
							tableBody.append(row);
						});
					} else {
						tableBody.append(
							'<tr><td colspan="6">지원자가 없습니다.</td></tr>'
						);
					}

					setupPagination(paging.totalPages, paging.currentPage);
				},
				error: function () {
					alert("데이터를 불러오는 중 오류가 발생했습니다.");
				}
			});
		}

		// 페이징 버튼 생성
		function setupPagination(totalPages, currentPage) {
			const paginationContainer = $("#admin-applicants-pagination");
			paginationContainer.empty();

			for (let i = 1; i <= totalPages; i++) {
				const button = 
					"<a href='#' class='pagination-link " + 
					(i === currentPage ? "active" : "") + 
					"' data-page='" + i + "'>" + i + "</a>";
				paginationContainer.append(button);
			}

			$(".pagination-link").off("click").on("click", function (e) {
				e.preventDefault();
				const page = $(this).data("page");
				loadApplicants(page);
			});
		}

		// 초기 로드
		loadApplicants();
	});
</script>
</security:authorize>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>