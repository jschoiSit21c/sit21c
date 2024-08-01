package com.sit21c.prcenter.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PRCenterController {

	/**
	 * ci화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/pr/ci")
	public String openCi(@RequestParam Map<String, Object> map) {
		System.out.println("CI 호출");
		return "index";
	}
	
	/**
	 * 파트너쉽 화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/pr/partnership")
	public String openPartnership(@RequestParam Map<String, Object> map) {
		System.out.println("partnership 호출");
		return "/pr/partnership";
	}
}
