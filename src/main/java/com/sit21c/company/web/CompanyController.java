package com.sit21c.company.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sit21c.common.CommonUtils;
import com.sit21c.common.vo.BoardVo;
import com.sit21c.company.service.CompanyService;
import com.sit21c.login.vo.LoginVo;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	//company 관련 컨트롤러
	@RequestMapping("/company/aboutSIT")
	public String openAboutSIT(@RequestParam Map<String, Object> param) {
		System.out.println("company/aboutSIT");
		
		return "/company/aboutSIT";
	}
	
	//CEO 메시지 화면 호출
	@RequestMapping("/company/ceo")
	public String openCEOMessage(@RequestParam Map<String, Object> param, ModelMap model) throws Exception{
		BoardVo boardVo = new BoardVo();
		//CEO메시지 조회 
		model.addAttribute("item", companyService.selectCEOMessage(boardVo));
		return "/company/ceo_message";
	}
	
	//CEO 메시지 수정 화면 호출
	@RequestMapping("/company/openWriteCeo")
	public String openWriteCEOMessage(@RequestParam Map<String, Object> param, ModelMap model,HttpSession session) throws Exception{
		BoardVo boardVo = new BoardVo();
		model.addAttribute("item", companyService.selectCEOMessage(boardVo));
		return "/company/ceo_message_write";
	}
	
	//CEO메시지 저장
	@SuppressWarnings("finally")
	@ResponseBody
	@PostMapping("/company/writeCEO")
	public HashMap<String, Object> writeCEOMessage(@RequestBody BoardVo boardVo, ModelMap model,HttpSession session){
		HashMap<String, Object> successMap = new HashMap<>();
		try {
			if(boardVo != null && session.getAttribute("loginInfo") != null) {
				LoginVo loginInfo =  (LoginVo) session.getAttribute("loginInfo");
				boardVo.setCreateUser(loginInfo.getId());
				boardVo.setUpdateUser(loginInfo.getId());
				companyService.writeCEOMessage(boardVo);
				successMap.put("isSuccess", true);
			}else {
				successMap.put("isSuccess", false);
			}
			
		}catch(Exception e) {
			successMap.put("isSuccess", false);
		}finally {
			return successMap;
		}
		
		
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
	
	@RequestMapping("/company/vision")
	public String openVision(@RequestParam Map<String, Object> param) {
		System.out.println("company/vision");
		
		return "/company/vision";
	}
}
