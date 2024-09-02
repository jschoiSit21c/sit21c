<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/layout.css" type="text/css">
<!-- 메뉴링크 -->	
<script type="text/javascript" src="/js/m_menu.js"></script>
<!-- //메뉴링크 -->
<!-- 팝업jq  -->	
<script type="text/javascript" src="/js/jquery-1.7.js" ></script>
<!-- //팝업jq  -->		
<script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/js/jquery.bxslider.min.js"></script>
<!-- 팝업jq+style  -->	
<script type="text/javascript" src="/js/jquery.bpopup.min.js"></script>
<style type="text/css">
	.Mpop_style { display:none;  position:relative;  width:0 auto; margin-top:60px; padding:20px; text-align:left;  }
	.b-close2 { color:#3784dc; position :absolute; right:0; top:0; padding:0px;  display:inline-block; cursor:pointer;}
	* { box-sizing: content-box !important; }
	        /* 히어로 섹션 */
        .hero {
            background-image: url('/img/mv03.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #FFF;
            text-align: center;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 24px;
            margin-bottom: 40px;
        }

        .hero a {
            display: inline-block;
            padding: 15px 30px;
            background-color: #FFA500;
            color: #FFF;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
        }

        .hero a:hover {
            background-color: #FF8C00;
        }

        /* 서비스 섹션 */
        .services {
            background-color: #F7FAFC;
            padding: 60px 20px;
            text-align: center;
        }

        .services h2 {
            font-size: 36px;
            margin-bottom: 40px;
        }

        .services .cards {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .services .card {
            background-color: #FFFFFF;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
            width: 300px;
        }

        .services .card img {
            width: 100%;
            margin-bottom: 20px;
        }

        .services .card h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .services .card p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .services .card a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #1F2937;
            color: #FFF;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .services .card a:hover {
            background-color: #333;
        }

        /* 비전 섹션 */
        .vision {
            background-image: url('/img/companyView.png');
            background-size: cover;
            background-position: center;
            padding: 100px 20px;
            color: #000;
            text-align: center;
        }

        .vision h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .vision p {
            font-size: 20px;
            max-width: 800px;
            margin: 0 auto;
        }
        
        /* 홍보 & 채용 정보 섹션 */
.promotion {
    background-color: #F7FAFC;
    padding: 60px 20px;
    text-align: center;
}

.promotion h2 {
    font-size: 36px;
    margin-bottom: 40px;
}

.promotion .cards {
    display: flex;
    justify-content: center;
    gap: 20px;
}

.promotion .card {
    background-color: #FFFFFF;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    padding: 20px;
    width: 300px;
    text-align: center;
}

.promotion .card img {
    width: 100%;
    margin-bottom: 20px;
    border-radius: 10px;
}

.promotion .card h3 {
    font-size: 24px;
    margin-bottom: 10px;
}

.promotion .card p {
    font-size: 16px;
    margin-bottom: 20px;
}

.promotion .card a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #1F2937;
    color: #FFF;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
}

.promotion .card a:hover {
    background-color: #333;
}

/* YouTube 비디오 컨테이너 */
.video-container {
    position: relative;
    width: 100%;
    padding-bottom: 56.25%; /* 16:9 비율을 유지하기 위한 패딩 */
    height: 0;
    overflow: hidden;
    border-radius: 10px; /* 카드의 나머지 부분과 일치하는 둥근 모서리 */
}

.video-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: 0;
    border-radius: 10px; /* 모서리 반경을 iframe에 적용 */
}
</style>
<script type="text/javascript">
function goPopup() {
   $("#popup").bPopup(); // 열기
   //$("#popup").bPopup().close(); // 닫기
};
</script>
<!-- //팝업jq+style  -->	
<!--top 바로가기 스크립트-->	
<script>
	$(function() {
  $(window).scroll(function() {
    if ($(this).scrollTop() > 250) {
      $('#topBtn').fadeIn();
    } else {
      $('#topBtn').fadeOut();
    }
  });

  $("#topBtn").click(function() {
    $('html, body').animate({
      scrollTop : 0
    }, 400);
    return false;
  });
});
</script>	
<!--//top 바로가기 스크립트-->		
	
<!--이미지롤링스크립트-->	
<script>
$(document).ready(function(){
	var video = $('video').get(0);
	$(document).delegate('#close', 'click', function() {
		video.pause();
		$("#popup").bPopup().close();
	});
	/*
	var video = $('video').get(0);
	$(document).delegate('#stopBtn', 'click', function() {
		video.pause();
		$('#popup').hide();
	});
	*/
	var slider = $('.bxslider').bxSlider({
			auto: true, mode:'fade',
		});
	var slider_01 =	$('.bxslider_01').bxSlider({
			auto: true,autoControls: true, mode:'horizontal',
		});

});
</script>
<script type="text/javascript">
    var images = ["mv01.jpg", "mv02.jpg", "mv03.jpg"];
    $(function () {
        var i = 0;
        $("#dvImage").css("background-image", "url(/img/" + images[i] + ")");
        setInterval(function () {
            i++;
            if (i == images.length) {
                i = 0;
            }
            $("#dvImage").fadeOut("slow", function () {
                $(this).css("background-image", "url(/img/" + images[i] + ")");
                $(this).fadeIn("slow");
            });
        }, 5000);
    });
</script>	
<!--//이미지롤링스크립트-->
	
<!-- 상단 글로벌 메뉴 스크립트 -->
<script type="text/javascript">
$(document).ready(function(){
	/* gnb */
	$('.gnb > li , .gnb_bg').mouseenter(function(){
		$('.gnb_bg').stop().show().animate({height:'260px'});
		$('.sub').stop().show().animate({height:'250px'});
	});
	$('.gnb, .gnb_bg').mouseleave(function(){
		$('.gnb_bg').stop().animate({height:'0px'},400,function(){
			$('.gnb_bg').hide();
		});

		$('.sub').stop().animate({height:'0px'},function(){
			$('.sub').hide();
		});
	});
	$('.gnb > li').mouseenter(function(){
		$(this).addClass('on').siblings().removeClass('on');
	});
	$('.gnb > li').mouseleave(function(){
		$(this).removeClass('on');
	});


	/* 모바일 메뉴 */
	$('.m_gnb_btn').click(function(){
		var t_height = $(document).height();
		$('.m_gnb_wrap').animate({right:'0'});
		$('.m_gnb_bg').css({opacity:'0.5',display:'block'});
		$('html,body').css('overflow','hidden');
		$('.footer').css({'z-index':0});
	});

	$('.m_cancel_btn').click(function(){
		$('.m_gnb_wrap').animate({right :'-380px'}, function(){
			$('.footer').css({'z-index':1});
		});
		$('.m_gnb_bg').css({opacity:'0',display:'none'});
		$('html,body').css('overflow','visible');
	});


	/* 아코디언 */
	$('.m_gnb_wrap .m_navi > li > a , .m_gnb_wrap .arrow').click(function(){
		$(this).parent().toggleClass('on').find('.m_sub').slideToggle().end().siblings().removeClass('on').end().siblings().find('.m_sub').slideUp();
		return false;
	});

	var hei = $('#header').outerHeight();
	var scroll = $(document).scrollTop();
	$(window).scroll(function(){
		scroll = $(document).scrollTop();
		if (scroll >= hei) {
			$('#header').addClass('fixed');
			$('#real_contents').css('padding-top','140px');


		}
		else {
			$('#header').removeClass('fixed');
			$('#real_contents').css('padding-top','0px');

		}
	});	
});
</script>
<title>나라장터 멘토링 연습 - index</title>
</head>
<body>
    <!-- 히어로 섹션 -->
    <section class="hero">
        <div>
<!--             <h1>혁신적인 IT 솔루션</h1> -->
<!--             <p>미래를 선도하는 IT 서비스를 제공합니다</p> -->
            <a href="#services">더 알아보기</a>
        </div>
    </section>

    <!-- 서비스 섹션 -->
    <section id="services" class="services">
        <h2>우리가 제공하는 서비스</h2>
        <div class="cards">
            <div class="card">
                <img src="/img/m_si_img.png" alt="System Integration">
                <h3>시스템 통합</h3>
                <p>공공기관 및 다양한 기업 환경에 맞춘 최적의 IT 시스템을 제공합니다.</p>
                <a href="/business/publicDigitalService">더 알아보기</a>
            </div>
            <div class="card">
                <img src="/img/m_sm_img.png" alt="ICT Infra Service">
                <h3>ICT 인프라 서비스</h3>
                <p>전문적인 아웃소싱 서비스를 통해 정보시스템의 효율적 활용을 돕습니다.</p>
                <a href="/business/ictInfraService">더 알아보기</a>
            </div>
            <div class="card">
                <img src="/img/m_it_img.png" alt="IT Consulting">
                <h3>IT 컨설팅</h3>
                <p>정보화 전략 및 비즈니스 전략 수립을 위한 최적의 컨설팅 서비스를 제공합니다.</p>
                <a href="/business/itConsultingService">더 알아보기</a>
            </div>
        </div>
    </section>

    <!-- 비전 섹션 -->
    <section id="vision" class="vision">
        <h2>우리의 비전</h2>
        <p>ICMS (Innovation, Creative, Man, Social)를 통해 지역사회 초 일류기업으로 성장하는 것이 우리의 비전입니다.</p>
    </section>
    
	<!-- 홍보 & 채용 정보 섹션 -->
	<section id="promotion" class="promotion">
	    <h2>PR &amp; 채용 정보</h2>
	    <div class="cards">
	        <div class="card">
	                <div class="video-container">
				        <iframe 
				            src="https://www.youtube.com/embed/I8MbDbxxmOs" 
				            frameborder="0"
				            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				            allowfullscreen>
				        </iframe>
				    </div>
	            <h3>소프트아이텍 About</h3>
	            <p>소프트아이텍의 회사 정보를 확인하세요.</p>
	            <a href="/company/aboutSIT">자세히 보기</a>
	        </div>
	        <div class="card">
	            <img src="/img/bsh_img.png" alt="브로슈어">
	            <h3>브로슈어</h3>
	            <p>우리가 제공하는 서비스에 대한 자세한 정보를 확인하세요.</p>
	            <a href="/pr/ci">자세히 보기</a>
	        </div>
	        <div class="card">
	            <img src="/img/recru_bg.png" alt="채용 정보">
	            <h3>채용 정보</h3>
	            <p>소프트아이텍과 함께할 인재를 모집합니다.</p>
	            <a href="/recruit/recruitmentInformation">자세히 보기</a>
	        </div>
	    </div>
	</section>
</body>
<!-- 하단 -->
<jsp:include page="footer.jsp"></jsp:include>
</html>