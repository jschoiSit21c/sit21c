if(document.querySelectorAll("#s_header").length != 0){
	window.addEventListener('scroll', function() {
	    const header = document.getElementById('s_header');
	    if (window.scrollY > 100) { // 스크롤 100px 이상 내려갈 경우
	        header.style.top = '-100px'; // 헤더 숨기기
	    } else {
	        header.style.top = '0'; // 헤더 보이기
	    }
	});
}

function showImage(index) {
    const tabs = document.querySelectorAll('.tab');
    const images = document.querySelectorAll('.service-image');

    tabs.forEach((tab, i) => {
        tab.classList.toggle('active', i === index - 1);
    });

    images.forEach((image, i) => {
        image.classList.toggle('active', i === index - 1);
    });
}

// Set the first tab and image as active when the page loads
document.addEventListener('DOMContentLoaded', () => {
    showImage(1);
});


function toggleMenu() {
    const fullscreenMenu = document.getElementById("fullscreen-menu");
    const hamburger = document.querySelector(".hamburger");
    
    console.log("Fullscreen Menu:", fullscreenMenu); // 선택 확인
    console.log("Hamburger:", hamburger); // 선택 확인
    
    fullscreenMenu.classList.toggle("active");
    hamburger.classList.toggle("active");
}


window.addEventListener("beforeunload", function () {
    window.scrollTo(0, 0); // 페이지 새로고침 시 스크롤 위치를 맨 위로 초기화
});


if(document.querySelectorAll("#index-container").length != 0){
	document.addEventListener("DOMContentLoaded", function() {
	    const sections = document.querySelectorAll(".section");
	    let currentSectionIndex = 0;
	    let isScrolling = false;
	
	    function smoothScrollTo(targetPosition) {
	        const startPosition = window.scrollY;
	        const distance = targetPosition - startPosition;
	        const duration = 600;
	        let startTime = null;
	
	        function animation(currentTime) {
	            if (!startTime) startTime = currentTime;
	            const timeElapsed = currentTime - startTime;
	            const progress = Math.min(timeElapsed / duration, 1);
	            const ease = progress * (2 - progress);
	
	            window.scrollTo(0, startPosition + distance * ease);
	
	            if (timeElapsed < duration) {
	                requestAnimationFrame(animation);
	            } else {
	                isScrolling = false;
	            }
	        }
	
	        requestAnimationFrame(animation);
	    }
	
	    function handleScroll(event) {
	        if (isScrolling) return;
	
	        // 마지막 섹션이면 스크롤 제한을 해제하여 자연스럽게 아래로 스크롤 가능하게 함
	        if (currentSectionIndex === sections.length - 1 && event.deltaY > 0) {
	            return;
	        }
	
	        isScrolling = true;
	
	        if (event.deltaY > 0 && currentSectionIndex < sections.length - 1) {
	            currentSectionIndex++;
	        } else if (event.deltaY < 0 && currentSectionIndex > 0) {
	            currentSectionIndex--;
	        }
	
	        smoothScrollTo(sections[currentSectionIndex].offsetTop);
	    }
	
	    window.addEventListener("wheel", handleScroll);
	});
}


//인덱스 페이지 함수이기 때문에 분기처리함.
if(document.querySelectorAll("#index-container").length != 0){
	// 메인화면 비쥬얼 //
	document.addEventListener("DOMContentLoaded", function() {
		const video = document.getElementById('background-video');
		let videoEnded = false;
		
		video.addEventListener('ended', function() {
			video.style.opacity = 0;
			videoEnded = true;
			// 첫 이미지와 텍스트 바로 표시
			showImageAndText();
		});
		
	    const images = document.querySelectorAll(".background-image");
	    const texts = document.querySelectorAll(".hero-text");
	    let currentIndex = 0;
	
	    function showImageAndText() {
	        // 모든 이미지와 텍스트 숨기기
	        images.forEach((img) => {
	            img.style.opacity = 0;
	            img.style.transform = 'translate(-50%, -50%) scale(1.5)'; // 초기 확대 상태
	            img.style.transition = 'none'; // 트랜지션 초기화
	        });
	
	        texts.forEach((text) => {
	            text.style.opacity = 0;
	        });

			//video 종료 후 이미지 노출
			if(videoEnded){
		        // 현재 이미지와 텍스트 보여주기
		        const currentImage = images[currentIndex];
		        const currentText = texts[currentIndex];
		        currentImage.style.opacity = 1;
		        currentImage.style.transform = 'translate(-50%, -50%) scale(1)'; // 화면에 맞게 줄어듦
		        currentImage.style.transition = 'transform 2s ease, opacity 2s ease'; // 트랜지션 설정
		
		        // 현재 텍스트 표시
		        currentText.style.opacity = 1;
		
		        // 3초 동안 고정된 상태 유지
		        setTimeout(() => {
		            currentImage.style.opacity = 0; // 이미지 서서히 사라짐
		            currentText.style.opacity = 0; // 텍스트도 함께 사라짐
		        }, 8000); // 3초 동안 유지 후 페이드 아웃 시작
		
		        // 다음 인덱스로 변경
		        currentIndex = (currentIndex + 1) % images.length;
			}
	    }
		
	    // 이후 9초마다 showImageAndText 함수 실행
	    setInterval(showImageAndText, 9000); // 9초마다 다음 이미지로 전환
	});
}