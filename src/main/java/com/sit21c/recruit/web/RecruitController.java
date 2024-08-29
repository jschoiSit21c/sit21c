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
	
	//recruits관련 컨트롤러
	
	/**
	 * 채용정보 & (채용신청서)화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/recruitmentInformation")
	public String recruitmentInformation(@RequestParam Map<String, Object> map) {
		System.out.println("recruitmentInformation 호출");
		return "/recruit/recruitmentInformation";
	}
	
	/**
	 * 채용정보 & (채용신청서 작성)화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/recruitmentMain")
	public String recruitmentMain(@RequestParam Map<String, Object> map) {
		System.out.println("recruitmentMain 호출");
		return "/recruit/recruitmentMain";
	}
	
	/**
	 * 직무 채용정보
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/recruinmentPost")
	public String recruinmentPost(@RequestParam Map<String, Object> map) {
		System.out.println("recruinmentPost 호출");
		return "/recruit/recruinmentPost";
	}
	
	/**
	 * 인사제도 화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/personnelSystem")
	public String personnelSystem(@RequestParam Map<String, Object> map) {
		System.out.println("personnelSystem 호출");
		return "/recruit/personnelSystem";
	}
	
	/**
	 * 복지현황 화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/welfareStatus")
	public String welfareStatus(@RequestParam Map<String, Object> map) {
		System.out.println("welfareStatus 호출");
		return "/recruit/welfareStatus";
	}
}
