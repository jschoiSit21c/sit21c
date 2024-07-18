package com.sit21c.main.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	@RequestMapping("/")
	public String index(@RequestParam Map<String, Object> map) {
		System.out.println("index 호출");
		return "index";
	}
}
