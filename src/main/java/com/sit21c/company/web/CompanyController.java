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
	public String test(@RequestParam Map<String, Object> param) {
		System.out.println("company/aboutSIT");
		
		return "/company/aboutSIT";
	}
}
