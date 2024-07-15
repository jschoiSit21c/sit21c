package com.sit21c.main.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	public String index(@RequestParam Map<String, Object> map) {
		return "index";
	}
}
