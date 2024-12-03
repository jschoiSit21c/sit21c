<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<style>
    .form-row {
        margin-bottom: 15px;
    }

    .form-row label {
        display: block;
        margin-bottom: 5px;
    }

    .form-row label.required::after {
        content: " *";
        color: red; /* 빨간색으로 표시 */
    }

    .form-row .inline-options {
        display: flex;
        align-items: center;
        gap: 10px; /* 간격 조정 */
    }
</style>
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
            <h2 class="employ-title">채용(${item.recruitJobCategoryValue})</h2>
            <div class="employ-intro">
                <h3>${item.recruitTitle}</h3>
                <c:if test="${item.recruitStatus == '진행중'}">
	                <div class="employ-buttons">
	                <c:if test="${item.recruitExternalUrl != ''}">
	                    <button class="saramin-button" onclick="window.open('${item.recruitExternalUrl}');">saramin 지원하기</button>
	                </c:if>
	                    <button class="saramin-button" onclick="openModal()">채용지원서 작성</button>
	                </div>
				</c:if>
            </div>
			<div class="view_area">
				${item.recruitContent}
<!-- 			<img src="/img/Job_Notice.png"> -->
			
			</div>
			
                <div class="form-buttons">
                    <button type="button" class="form-submit" onclick="location.href='/recruit/recruitmentMain'">목록</button>
                </div>
        </section>

<!-- 모달 구조 추가 -->
<div id="applicationModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <div class="application-title">
            <h2>지원하기</h2>
            <p>소프트아이텍과 함께 하실 인재를 모집합니다.</p>
        </div>
		 <div class="application-form">
		    <form action="/recruit/submitJobApplication" method="post" enctype="multipart/form-data" ${item.recruitStatus == '진행중' ? '' : 'onsubmit="return false;"'}>
		        <input type="hidden" name="recruitId" value="${param.recruitId}">
		
		        <!-- 상단 섹션 -->
		        <div class="form-row">
		            <label class="required">구분</label>
		            <div class="inline-options">
		                <input type="radio" id="experience" name="recruitExperience" value="0002" required>
		                <label for="experience">경력</label>
		                <input type="radio" id="newcomer" name="recruitExperience" value="0001" required>
		                <label for="newcomer">신입</label>
		            </div>
		        </div>
		        <div class="form-row">
		            <label for="jobApplicationName" class="required">성명</label>
		            <input type="text" id="jobApplicationName" name="jobApplicationName" required style="width: 50px;">
		        </div>
		        <div class="form-row">
		            <label for="jobApplicationEmail" class="required">이메일</label>
		            <input type="email" id="jobApplicationEmail" name="jobApplicationEmail" required>
		        </div>
		        <div class="form-row">
		            <label for="jobApplicationPhone" class="required">전화번호</label>
		            <input type="tel" id="jobApplicationPhone" name="jobApplicationPhone" required>
		        </div>
		        <div class="form-row">
		            <label for="resumeFile" class="required">이력서</label>
		            <input type="file" id="resumeFile" name="resumeFile" required>
		        </div>
		        <div class="form-row">
		            <label for="privacy" class="required">개인정보처리방침</label>
		            <textarea id="privacy" readonly>
개인정보처리방침
제1조(개인정보의 처리 목적)
(주)소프트아이텍(이하 "회사")은 개인정보를 다음의 목적을 위해 처리하며, 이 외의 용도로는 사용하지 않습니다. 회원 가입 및 관리: 회원 가입의사 확인, 본인 식별·인증, 회원자격 유지·관리, 서비스 부정 이용 방지 등을 목적으로 개인정보를 처리합니다. 서비스 제공: 서비스 제공과 관련된 콘텐츠 제공, 맞춤 서비스 제공, 본인 인증 등을 목적으로 개인정보를 처리합니다. 고객 문의 처리: 고객의 문의·불만 처리, 공지사항 전달 등을 목적으로 개인정보를 처리합니다. 마케팅 및 광고 활용: 신규 서비스 개발, 이벤트 정보 및 참여 기회 제공, 접속 빈도 분석 또는 회원의 서비스 이용 분석 등을 목적으로 개인정보를 처리합니다.
제2조(개인정보의 처리 및 보유 기간)
회사는 법령에 따른 개인정보 보유·이용 기간 또는 정보주체로부터 개인정보를 수집 시 동의받은 보유·이용 기간 내에서 개인정보를 처리·보유합니다. 회원 가입 및 관리: 회원 탈퇴 시까지 보유합니다. 다만, 관계 법령에 따라 보관이 필요한 경우 해당 법령에 따릅니다. 서비스 제공: 서비스 제공 완료 후까지 보유합니다. 다만, 관계 법령에 따라 보관이 필요한 경우 해당 법령에 따릅니다.
제3조(처리하는 개인정보 항목)
회사는 다음의 개인정보 항목을 처리하고 있습니다. 홈페이지 회원가입 및 관리: 필수항목은 이름, 이메일, 비밀번호, 휴대전화번호이며, 선택항목은 주소, 생년월일입니다. 서비스 제공: 필수항목은 이름, 이메일, 결제정보입니다. 고객 문의 처리: 필수항목은 이름, 이메일, 문의 내용입니다.
제4조(개인정보의 제3자 제공)
회사는 원칙적으로 이용자의 개인정보를 외부에 제공하지 않습니다. 다만, 다음의 경우에는 예외로 합니다. 이용자가 사전에 동의한 경우 법령의 규정에 의하거나, 수사 목적으로 법령에 따라 관계기관의 요구가 있는 경우
제5조(개인정보의 처리위탁)
회사는 서비스 이행을 위해 필요한 범위 내에서 개인정보 처리업무를 위탁할 수 있습니다. 위탁받는 자(수탁자): [수탁업체명] 위탁하는 업무의 내용: 고객 상담 지원, 서비스 제공 관련 운영
제6조(정보주체의 권리·의무 및 행사 방법)
정보주체는 회사에 대해 언제든지 다음과 같은 권리를 행사할 수 있습니다. 개인정보 열람 요구 오류 등이 있을 경우 정정 요구 삭제 요구 처리 정지 요구 위 권리 행사는 서면, 전화, 이메일 등을 통해 하실 수 있으며, 회사는 이에 대해 지체 없이 조치하겠습니다.
제7조(개인정보의 파기)
회사는 개인정보 보유기간의 경과, 처리 목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체 없이 해당 개인정보를 파기합니다. 파기 절차: 불필요한 개인정보는 내부 방침 및 관련 법령에 따라 파기합니다. 파기 방법: 전자적 파일 형태의 정보는 복구 불가능한 방법으로 삭제하며, 종이 문서는 분쇄하거나 소각합니다.
제8조(개인정보 보호책임자)
회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제를 위해 개인정보 보호책임자를 지정하고 있습니다. 개인정보 보호책임자: 성명: [이름] 직책: [직책] 연락처: [연락처]
제9조(개인정보 처리방침 변경)
이 개인정보 처리방침은 2024년 11월 15일부터 적용됩니다. 개인정보처리방침 내용의 추가, 삭제, 수정이 있을 경우 변경사항의 시행 7일 전부터 홈페이지 공지사항을 통해 알릴 것입니다.
		            </textarea>
		        </div>
		
		        <!-- 하단 섹션 -->
		        <div class="form-row privacy-agree">
		            <label for="agree">
		                <input type="checkbox" id="agree" name="agree" required>
		                개인정보처리방침에 동의
		            </label>
		        </div>
		        <div class="form-buttons">
		            <button type="button" class="form-cancel" onclick="closeModal()">닫기</button>
		            <button type="submit" class="form-submit">지원하기</button>
		        </div>
		    </form>
		</div>
    </div>
</div>

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

<script>
function openModal() {
    document.getElementById('applicationModal').style.display = 'block';
}

function closeModal() {
    document.getElementById('applicationModal').style.display = 'none';
}

// 클릭 시 모달 닫기
window.onclick = function (event) {
    const modal = document.getElementById('applicationModal');
    if (event.target === modal) {
        modal.style.display = 'none';
    }
};
</script>

<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>