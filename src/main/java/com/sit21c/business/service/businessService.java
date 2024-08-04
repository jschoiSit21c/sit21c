package com.sit21c.business.service;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

public interface businessService {
	
	public String publicDigitalService(@RequestParam Map<String,Object> param);
	
	public String iCTInfraService(@RequestParam Map<String,Object> param);
	
	public String itConsultingService(@RequestParam Map<String,Object> param);
}
