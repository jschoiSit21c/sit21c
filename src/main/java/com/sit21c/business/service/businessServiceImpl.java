package com.sit21c.business.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service("businessService")
public class businessServiceImpl implements businessService {

	@Override
	public String publicDigitalService(Map<String, Object> param) {
		System.out.println("/business/publicDigitalService -서비스 호출");
		return null;
	}

	@Override
	public String iCTInfraService(Map<String, Object> param) {
		System.out.println("/business/iCTInfraService -서비스 호출");
		return null;
	}

	@Override
	public String itConsultingService(Map<String, Object> param) {
		System.out.println("/business/itConsultingService -서비스 호출");
		return null;
	}

}
