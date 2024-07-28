package com.sit21c.admin.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sit21c.recruit.service.RecruitService;

@Controller
public class AdminController {
	
	//관리자콘솔 컨트롤러
	@RequestMapping("/adminConsole")
	public String test(@RequestParam Map<String, Object> param) {
		return "admin/adminConsole";
	}
}
