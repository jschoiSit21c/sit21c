function regClick(menu){
	// 플래쉬 액션스크립트와 연동되는 메뉴어레이 매칭 펑션.
	// 플래쉬에서 호출하는 menu 기호에 대응하여, URL, OPTION 을 지정하여 3개씩 배열을 선언합니다.
	// OPTION은 별도창으로 띄울때 "open:"으로 시작되어야 하며 그 뒤에 열릴 윈도우의 ID, 슬래시 구분자 뒤로 윈도우 옵션을 넣습니다.
	//"go1_0", "/intro/content.html", "open:_new/width=300,height=400,scrollbars=1,toolbar=1,location=1,menubar=1" 의 형식으로 입력하면 정상작동합니다.
	// 플래쉬 액션스크립트에서는 false가 리턴될 때 변동없이 제자리를 지킬 수 있도록 처리하여야 합니다.
	var  menus = [				 
				  
		//회사소개 
		"go1_0","we/ceo_intro.html", "",
		"go1_1","we/company.html", "",
		"go1_2","we/vision.html", "",
		"go1_3","we/years.html", "",
		"go1_4","we/org.html", "",
		"go1_5","we/location.html", "",
		
		//신규 게시판
		"go1_6","main/mainNewsList.do", "",
		
		//사업영역
		"go2_0","business/si_area.html", "",
		"go2_1","business/sm_area.html", "",
		"go2_2","business/consulting_area.html", "",
		"go2_3","business/bigdata_area.html", "",

		//회사실적
		"go3_0","result/pm_domestic.html", "",
		"go3_1","result/pm_oversea.html", "",


		//채용정보
		"go4_0","recruit/man_info.html", "",
		"go4_1","recruit/recruit_info.html", "",
		"go4_2","recruit/welfare.html", "",

		//온라인홍보 및 문의하기  
		"go5_0","przone/ci_info.html", "",
		"go5_1","przone/ask_info.html", "",



		//사이트맵 및 영문홈페이지 외 메인화면, 고객사현황
		"go6_0","sitemap/sitemap.html", "",
		"go6_1","english/index.html", "",
		"go6_2","index.html", "",
		"go6_3","/customer/introduce.html", "",
		
		];


	var i,len, opt, href;
	for(i=0,len=menus.length;i<len;i+=3){
		if(menu!=menus[i])continue;
		href=menus[i+1];
		opt=menus[i+2];
		if(opt.indexOf('open:')==0){
			var wopt, wtarget;
			// 별도 창으로 열어라...
			var ii=opt.indexOf('/');
			if(ii<0)break;
			wtarget=opt.substring(5,ii);
			// wtarget 에 콜론(:)문자가 있으면 IE에서는 정상작동되지 않는다. 그래서 5번째까지 무시한다.
			wopt     = opt.substring(ii+1);
			window.open(href,wtarget,wopt);
			location.href=location.href;
		}else{
			location.href=href;
		}
		return false;
	}
	return 0;
}