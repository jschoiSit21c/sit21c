<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>소프트아이텍 - IT 컨설팅서비스</title>
    <style>
        body {
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .header {
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 3rem;
            font-weight: bold;
        }

        .header nav {
            margin-top: 10px;
            display: flex;
            justify-content: space-between;
            font-size: 1.2rem;
        }

        .header nav div {
            cursor: pointer;
            padding: 10px;
        }

        .header nav div.active {
            border-bottom: 2px solid #e53e3e;
            font-weight: bold;
        }

        .feature-section {
            display: none;
            opacity: 0;
            transition: opacity 0.5s ease, transform 0.5s ease;
            transform: translateX(100%);
        }

        .feature-section.active {
            display: flex;
            align-items: flex-start;
            opacity: 1;
            transform: translateX(0);
        }

        .feature-text {
            flex: 1;
        }

        .feature-text h3 {
            font-size: 1.5rem;
            margin-top: 0;
        }

        .feature-text p {
            margin-bottom: 20px;
            line-height: 1.6;
        }

        .feature-image {
            flex: 1;
            text-align: right;
        }

        .feature-image img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }
    </style>
</head>
<body>
	<section>
		<div class="container">
	    	<div id="main_img">
	    		<img alt="IT-컨설팅서비스" src="/img/Sit_IT-컨설팅서비스_.png">
	    	</div>
		    <div id="Features">
		        <div class="header">
		            <h1>Features</h1>
		            <nav>
		                <div id="infra-tab" class="active">통신/미디어 인프라 구축</div>
		                <div id="service-tab">고객 채널 서비스 지원</div>
		                <div id="solution-tab">특화 솔루션</div>
		            </nav>
		        </div>
		
		        <!-- 통신/미디어 인프라 구축 섹션 -->
		        <div id="infra-section" class="feature-section active">
		            <div class="feature-text">
		                <h3>Network Management</h3>
		                <p>
		                    증가하는 데이터 트래픽에 대비하기 위해 고효율, 저비용의 네트워크 구조로 전환을 지원합니다.
		                    클라우드, 빅데이터 등 최신 IT 기술을 접목하여 소프트웨어 중심의 가상화 된 통신 네트워크를 구축하여
		                    최첨단 스마트 네트워크 운영환경을 구현하여 차세대 네트워크의 신속한 전환을 지원합니다.
		                </p>
		                <h3>Oracle DB 운영 특화 시스템 (Oran-C)</h3>
		                <p>
		                    대형 시스템 운영 환경에 특화된 Oracle DB 솔루션입니다. DB 접속, SQL 수행, 결과 조회, DB Schema 조회
		                    등의 기본 기능과, Rule Server로 사용될 경우 추가적으로 사용자 별 DB 접근 제어, Heavy SQL 통제,
		                    개인정보 사용 감시 기능을 수행할 수 있습니다.
		                </p>
		                <h3>Mobile Virtual Network Operation (MVNO) Solution</h3>
		                <p>
		                    국내 최고의 MVNO 서비스 운영 경험을 바탕으로 하여, 텔넷 등 다양한 MVNO 서비스 모델에 대한 비즈니스 지원을
		                    위해 최적화된 솔루션을 제공합니다. 사용자 기반의 채널 및 서비스 최적화를 보장함으로써 MVNO 사업자의 운영
		                    비용을 최소화하고, 효율적인 네트워크 운용을 가능하게 합니다.
		                </p>
		            </div>
		            <div class="feature-image">
		                <img src="/img/itConsultingService1.png" alt="itConsultingService">
		            </div>
		        </div>
		
		        <!-- 고객 채널 서비스 지원 섹션 -->
		        <div id="service-section" class="feature-section">
		            <div class="feature-text">
		                <h3>Business Support System</h3>
		                <p>
		                    가입부터 해지에 이르기까지 모든 고객 여정에서 최고의 만족을 이끌어 낼 수 있도록 최적화된 표준 프로세스를
		                    제공합니다. 또한 급변하는 소비자의 기대와 시장환경의 변화에 능동적으로 대응하기 위한 고객 맞춤형 상품 및
		                    유연한 요구사항 실현 등 Time-to-Market 서비스를 지원합니다.
		                    <br>(고객 관리, 상품 관리, 파트너 관리, 고객센터, 청구, 납부, 미납 관리)
		                </p>
		                <h3>고객 채널 서비스</h3>
		                <p>
		                    필요한 서비스를 온라인을 통해 쉽고 편하게 언제 어디서나 제공 받을 수 있는 셀프 채널 서비스입니다.
		                    온라인을 통해 고객이 스스로 원하는 상품을 탐색하고 구매하는 등 가입, 조회, 해지의 전반 과정에서 고객이
		                    원하는 문제를 쉽게 해결할 수 있으며, 데이터 기반의 고객 맞춤형 상품을 제공합니다.
		                    <br>(온라인샵, 멤버십서비스, CS센터, 법인 고객 대상 서비스)
		                </p>
		            </div>
		            <div class="feature-image">
		                <img src="/img/itConsultingService2.png" alt="Business Support System Image">
		            </div>
		        </div>
		
		        <!-- 특화 솔루션 섹션 -->
		        <div id="solution-section" class="feature-section">
		            <div class="feature-text">
		                <h3>Data Based Marketing Solution</h3>
		                <p>
		                    전략적으로 수집한 빅데이터를 분석하고 차별적인 인사이트를 도출함으로써 비즈니스 이슈에 대한 원인과
		                    해결책을 찾을 수 있습니다. 사용자 행동 분석과 정동 예측을 통해 데이터 기반의 의사결정을 가능하게 하며,
		                    비즈니스 Risk에 효율적으로 대응할 수 있도록 지원합니다.
		                </p>
		                <h3>Data Meta Platform (NEXCORE ER-C)</h3>
		                <p>
		                    SaaS 기반의 Data Meta Platform으로 데이터 모델의 일관성과 품질 관리를 위한 데이터모델링 솔루션입니다.
		                    대규모 데이터의 ERD 작성, 데이터 모델과 표준 용어 사전 통합 관리, 실시간 데이터 모델/매핑이 가능해집니다.
		                </p>
		                <h3>텔레콤 과금 솔루션 (TOMARS)</h3>
		                <p>
		                    통합 과금 및 실시간 과금 기능, 서브/프로세스 모니터링, 배치 스케줄 관리 기능을 포함한 텔레콤 과금 솔루션입니다.
		                    SKT의 C&C 운영 경험과 노하우를 활용한 솔루션으로, 다양한 특성의 상품 구성과 실시간 대용량 과금 처리,
		                    리포팅, 데이터/Rule 연계를 통한 운영 편리성을 제공합니다.
		                </p>
		                <h3>보안 데이터 저장 처리 기술 (Smart Card)</h3>
		                <p>
		                    반도체 소자를 통한 보안 데이터를 안전하게 저장하고 처리하는 기술로써 금융, 통신, 공공 등 다양한 분야에
		                    적용 가능합니다. 주요 통신과 금융사에서 사용하며, 미래의 보안 기술 개발에 의해 미래 대비 서비스로써
		                    방어형 서비스를 제공할 것입니다.
		                </p>
		            </div>
		            <div class="feature-image">
		                <img src="/img/itConsultingService3.png" alt="Data Based Marketing Solution Image">
		            </div>
		        </div>
		    </div>
	    </div>
	</section>
</body>
<script>
    document.getElementById('infra-tab').addEventListener('click', function() {
        showSection('infra-section', this);
    });

    document.getElementById('service-tab').addEventListener('click', function() {
        showSection('service-section', this);
    });

    document.getElementById('solution-tab').addEventListener('click', function() {
        showSection('solution-section', this);
    });

    function showSection(sectionId, element) {
        const sections = document.querySelectorAll('.feature-section');
        const tabs = document.querySelectorAll('.header nav div');

        sections.forEach(section => {
            section.classList.remove('active');
        });

        tabs.forEach(tab => {
            tab.classList.remove('active');
        });

        document.getElementById(sectionId).classList.add('active');
        element.classList.add('active');
    }
</script>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>
