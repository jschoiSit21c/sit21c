package com.sit21c.recruit.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sit21c.recruit.service.RecruitService;

@Controller
public class RecruitController {
	
	@Autowired
	private RecruitService recruitService;
	
	//채용관련 컨트롤러
	@RequestMapping("/recruit/test")
	public String test(@RequestParam Map<String, Object> param) {
		System.out.println("뭐지");
		recruitService.test(param).forEach(x -> {
			System.out.println("T1 = " + x.get("t1"));
			System.out.println("T2 = " + x.get("t2"));
		});
		
		return "index";
	}
}
