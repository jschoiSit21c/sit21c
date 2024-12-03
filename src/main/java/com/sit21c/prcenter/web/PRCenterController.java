package com.sit21c.prcenter.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sit21c.login.vo.LoginVo;
import com.sit21c.prcenter.service.PrcenterService;
import com.sit21c.prcenter.vo.EDisclosureVo;

@Controller
public class PRCenterController {

	@Autowired
	private PrcenterService prcenterService;
	
	/**
	 * ci화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/pr/ci")
	public String openCi(@RequestParam Map<String, Object> map) {
		System.out.println("CI 호출");
		return "/pr/ci";
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
		
	/**
	 * 전자공시 메인 화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/pr/eDisclosureMain")
	public String openEDisclosure(EDisclosureVo eDisclosureVo, Model model) {
		System.out.println("eDisclosureMain 호출");
		
		try {
			// 페이징 계산을 위한 기본값 설정
			if (eDisclosureVo.getCurrentPage() <= 0) {
				eDisclosureVo.setCurrentPage(1);
			}
			if (eDisclosureVo.getPageSize() <= 0) {
				eDisclosureVo.setPageSize(10);
			}

			// 시작 레코드 계산
			eDisclosureVo.setStartRecord((eDisclosureVo.getCurrentPage() - 1) * eDisclosureVo.getPageSize() + 1);

			// 데이터 조회
			List<EDisclosureVo> list = prcenterService.selectEDisclosureVoList(eDisclosureVo);

			// 총 레코드 수를 첫 번째 데이터에서 가져옴
			if (!list.isEmpty()) {
				eDisclosureVo.setTotalRecords(list.get(0).getTotalRecords());
				eDisclosureVo.calculatePaging(); // 페이징 계산
			}

			// 모델에 데이터 추가
			model.addAttribute("list", list);
			model.addAttribute("paging", eDisclosureVo); // 페이징 정보 전달
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return "/pr/eDisclosureMain";		
	}
	
	
	
	/**
	 * 전자공시 작성 화면 호출
	 * @param model
	 * @return
	 */
	@PreAuthorize("hasRole('SA')")
	@RequestMapping("/pr/eDisclosureWrite")
	public String showEDisclosureWritePage(Model model) {
		System.out.println("전자공시 작성 화면 호출");
		model.addAttribute("isWrite", true); //등록/수정화면 같이쓰기위한 변수
		return "/pr/eDisclosureWrite";
	}
	
	
	/**
	 * 전자공시 수정 화면 호출
	 * @param model
	 * @return
	 */
	@PreAuthorize("hasRole('SA')")
	@RequestMapping("/pr/eDisclosureUpdate")
	public String showEDisclosureUpdatePage(EDisclosureVo eDisclosureVo, Model model) {
		System.out.println("전자공시 수정 화면 호출");
		try {
			EDisclosureVo eDisclosureResult = prcenterService.selectEDisclosure(eDisclosureVo);
			model.addAttribute("eDisclosureResult", eDisclosureResult);
			model.addAttribute("isWrite", false); //등록/수정화면 같이쓰기위한 변수
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "/pr/eDisclosureWrite";
	}
	
	
	//전자공시 저장
	@SuppressWarnings("finally")
	@PreAuthorize("hasRole('SA')")
	@ResponseBody
	@RequestMapping("/pr/saveEDisclosure")
	public HashMap<String, Object> saveEDisclosure(@RequestBody EDisclosureVo eDisclosureVo, ModelMap model,HttpSession session){
		System.out.println("전자공시 저장");
		HashMap<String, Object> successMap = new HashMap<>();
		try {
			if(eDisclosureVo != null && session.getAttribute("loginInfo") != null) {
				LoginVo loginInfo =  (LoginVo) session.getAttribute("loginInfo");
				eDisclosureVo.setSubmitter(loginInfo.getId());
				
				int id = prcenterService.saveEDisclosure(eDisclosureVo);
				
				successMap.put("isSuccess", true);
				successMap.put("id", eDisclosureVo.getId());
			}else {
				successMap.put("isSuccess", false);
			}
			
		}catch(Exception e) {
			successMap.put("isSuccess", false);
		}finally {
			return successMap;
		}		
	}
	
	
	//전자공시 수정
	@SuppressWarnings("finally")
	@PreAuthorize("hasRole('SA')")
	@ResponseBody
	@PostMapping("/pr/modifyEDisclosure")
	public HashMap<String, Object> modifyEDisclosure(@RequestBody EDisclosureVo eDisclosureVo, ModelMap model,HttpSession session){
		System.out.println("전자공시 수정");
		HashMap<String, Object> successMap = new HashMap<>();
		try {
			if(eDisclosureVo != null && session.getAttribute("loginInfo") != null) {
				LoginVo loginInfo =  (LoginVo) session.getAttribute("loginInfo");
				eDisclosureVo.setSubmitter(loginInfo.getId());
				
				int id = prcenterService.modifyEDisclosure(eDisclosureVo);
				
				successMap.put("isSuccess", true);
				successMap.put("id", eDisclosureVo.getId());
			}else {
				successMap.put("isSuccess", false);
			}
			
		}catch(Exception e) {
			successMap.put("isSuccess", false);
		}finally {
			return successMap;
		}
	}
			
			
}
