package com.sit21c.company.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CompanyController {
	
	//@Autowired
	//private RecruitService recruitService;
	
	//company 관련 컨트롤러
	@RequestMapping("/company/aboutSIT")
	public String openAboutSIT(@RequestParam Map<String, Object> param) {
		System.out.println("company/aboutSIT");
		
		return "/company/aboutSIT";
	}
	
	//CEO 메시지 화면 호출
	@RequestMapping("/company/ceo")
	public String openCEOMessage(@RequestParam Map<String, Object> param) {
		return "/company/ceo_message";
	}
	
	//CEO 메시지 수정 화면 호출
	@RequestMapping("/company/openWriteCeo")
	public String openWriteCEOMessage(@RequestParam Map<String, Object> param) {
		return "/company/ceo_message_write";
	}
	
	@RequestMapping("/company/location")
	public String location(@RequestParam Map<String, Object> param) {
		System.out.println("company/location");
		
		return "/company/location";
	}
	
	@RequestMapping("/company/history")
	public String openHistory(@RequestParam Map<String, Object> param) {
		System.out.println("company/SIT_History");
		
		return "/company/SIT_History";
	}
}
