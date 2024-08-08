package com.sit21c.business.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sit21c.business.service.businessServiceImpl;

@Controller
public class businessController  {
	
	private businessServiceImpl businessServiceImpl;
	
	//business관련 컨트롤러
	
	//공공디지털서비스 화면 호출
	@RequestMapping("/business/publicDigitalService")
	public String publicDigitalService(@RequestParam Map<String,Object> param) {
		System.out.println("/business/publicDigitalService -컨트롤러 호출");
		
		businessServiceImpl.publicDigitalService(param);
		
		return "/business/publicDigitalService";
	}
	
	//ICT인프라서비스 화면 호출
	@RequestMapping("/business/iCTInfraService")
	public String iCTInfraService(@RequestParam Map<String,Object> param) {
		System.out.println("/business/iCTInfraService -컨트롤러 호출");
		
		//businessServiceImpl.iCTInfraService(param);
		
		return "/business/iCTInfraService";
	}
	
	//IT컨설팅서비스
	@RequestMapping("/business/itConsultingService")
	public String itConsultingService(@RequestParam Map<String,Object> param) {
		System.out.println("/business/itConsultingService -컨트롤러 호출");
		
		businessServiceImpl.itConsultingService(param);
		
		return "/business/itConsultingService";
	}
	

	
	

}
