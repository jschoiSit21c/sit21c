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
    <!-- 메인 배너 -->
    <section id="main-banner">
		<!-- 비쥬얼영역-->
		<div class="visual_area">
			<div id="dvImage" class="img_s" >		
			</div>
		</div>
		<!-- //비쥬얼영역-->
	
						
		<!-- // 사업영역 -->
		<div class="main_area">
		<div class="main_section">
			<div class="bu_area">
			  <div class="text_area" id="mcontainer">
				<p class="t1">우리가 하는일</p>
				<p class="t2">What</p>
				<span class="t3">We Do</span>
				<p><img src="/img/we_go.png" width="162" height="23" alt=""/></p>
				<p class="t4">소프트아이텍의 다양한 <br/>사업 영역을 소개합니다.</p>
				<p class="bu_more"><a href="/business/publicDigitalService"><img src="/img/btn_more.png" width="28" height="26" alt=""/></a></p>
			  </div>
			</div>
			<div class="main_se01" style="border:0;">
				<div class="se_title">System Integration</div>
				<div class="se_img"><img src="/img/m_si_img.png" width="244" height="110" alt=""/></div>
				<div class="b_text">국내 주요 공공기관 및 지자체, 기업 등<br/>다양한 업무환경의 요구에 맞는<br/>최적의 IT시스템을 진단, 설계, 구축,<br/>통합하여 최상의 서비스를 제공합니다. </div>
				<div class="btn_more"><a href="/business/publicDigitalService"><img src="/img/bu_btn_normal.png" width="64" height="30" alt=""/></a></div>
	
			</div>
			<div class="main_se01">
				<div class="se_title">ICT Infra Service</div>
				<div class="se_img"><img src="/img/m_sm_img.png" width="244" height="110" alt=""/></div>
				<div class="b_text">고객 요구에 맞는 전문적인 아웃소싱<br/>서비스를 제공받아 정보시스템을 효율적으로<br/>활용할 수 있습니다 </div>
				<div class="btn_more"><a href="/business/ictInfraService"><img src="/img/bu_btn_normal.png" width="64" height="30" alt=""/></a></div>
	
			</div>
			<div class="main_se01" >
				<div class="se_title">I · T Consulting</div>
				<div class="se_img"><img src="/img/m_it_img.png" width="244" height="110" alt=""/></div>
				<div class="b_text">정보화 전략수립(ISP), 정보시스템 현황 조사,<br/>비즈니스 전략 수립, 프로세스 혁신 등 축적<br/>된 노하우와 컨설팅 역량을 바탕으로 최적의 정보시스템을 제공합니다. </div>
				<div class="btn_more"><a href="/business/publicDigitalService"><img src="/img/bu_btn_normal.png" width="64" height="30" alt=""/></a></div>
	
			 </div>
			<div class="move"><a href="#mtop"><img src="/img/main_more.png" width="72" height="35" alt=""/></a></div>
		</div>	
		</div>
		<!-- // 사업영역 -->						
		
		<!-- 섹션빈영역-->	
		<div class="main_section_bg">
		</div>
		<!-- //섹션빈영역-->		
		
		<!-- 비전미션-->	
		<div class="main_vision" id="mtop">
			<h2>미션&비전</h2>
			<p>ICMS (Innovation, Creative, Man, Social) 통한  지역사회 초 일류기업으로서의 성장 </p>
			<div class="all_img"><a href="/company/vision"><img src="/img/mission_img.png" width="594" height="231" alt="미션"/></a><a href="/company/vision" ><img src="/img/vision_img.png" width="594" height="231" alt="비"/></a></div>
		</div>
		<!-- //비전미션-->	
		<!-- 홍보영역-->
		<div class="main_pr_zone">
			<div class="main_pr">
				<h2>홍보&채용정보</h2>
				<p>소프트아이텍의 홍보와 인재채용안내입니다. </p>
				<div class="pr_area">
				<a href="http://www.sit21c.com/we/company.html" ><div class="pr_a">
				<p>소프트아이텍 <span>PR</span></p>
				</div></a>
				<div class="pr_b">
					<a href="/pr/ci"><p>브로슈어</p></a>
				</div>
				<div class="re_a">
				<p class="re_title">인재채용</p>
				<p>소프트아이텍은 미래를 선도하는<br /> 글로벌 리더로 함께 성장해 나갈 인재를<br /> 모집합니다.</p>
				<a href="/recruit/recruitmentInformation"><img src="/img/bu_btn_normal.png" width="64" height="30" alt=""/></a> 
				</div>
				
				</div>
			</div>
		</div>
		<!-- //홍보영역-->		
		
		<!-- 오시는길 -->	
		<div class="m_location">
			<h2>오시는 길</h2>
			<p>소프트아이텍 오시는 길 안입니다. </p>
			<p><span>주소</span>대전광역시 유성구 죽동로 69 (죽동, 소프트아이텍빌딩)   /  Tel. 042-485-8551 /  Fax. 042-486-8551 </p>
			<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5031.031732894268!2d127.33242245211333!3d36.37231037906764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35654966d0422a7b%3A0xec8d9475c42513cb!2z7IaM7ZSE7Yq47JWE7J207YWN!5e0!3m2!1sko!2skr!4v1544963342159" width="1200px" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		</div>
		<!-- //오시는길-->
    </section>
</body>
<!-- 하단 -->
<jsp:include page="footer.jsp"></jsp:include>
</html>