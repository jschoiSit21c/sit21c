package com.sit21c.main.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	@RequestMapping({"/", "/index"})
	public String index(@RequestParam Map<String, Object> map) {
		System.out.println("index 호출");
		return "index";
	}
	
	@RequestMapping({"/testIndex"})
	public String testIndex(@RequestParam Map<String, Object> map) {
		System.out.println("testIndex 호출");
		return "testIndex";
	}
	
	@RequestMapping("/about")
	public String about(@RequestParam Map<String, Object> map) {
		System.out.println("about 호출");
		return "about";
	}
	
	@RequestMapping("/business")
	public String business(@RequestParam Map<String, Object> map) {
		System.out.println("business 호출");
		return "business";
	}
	
	@RequestMapping("/solution")
	public String solution(@RequestParam Map<String, Object> map) {
		System.out.println("solution 호출");
		return "solution";
	}
	
	@RequestMapping("/contact")
	public String contact(@RequestParam Map<String, Object> map) {
		System.out.println("contact 호출");
		return "contact";
	}
}
