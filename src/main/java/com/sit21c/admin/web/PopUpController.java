package com.sit21c.admin.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.type.filter.AbstractClassTestingTypeFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sit21c.admin.service.PopUpService;
import com.sit21c.admin.vo.PopUpVo;
import com.sit21c.login.vo.LoginVo;


@Controller
public class PopUpController {
	
	
	
	@Autowired
	private PopUpService popUpService;
	//팝업목록 호출
	@RequestMapping("/admin/popUpList")
	public String selectPopUpList(PopUpVo popUpVo,Integer currentPage, ModelMap model,HttpSession session) throws Exception {
		List<PopUpVo> list = new ArrayList<PopUpVo>();
		int count = popUpService.selectCountPopUpList(popUpVo);
		
		//페이징 시작
		if(currentPage == null || currentPage == 0 ) {
			currentPage = 1;
		}
		int perPageNum = 10;
		int tempEndPage = (int)(Math.ceil((count)/(double) perPageNum ));
		System.out.println(tempEndPage+"템엔페");
		int endPage = (int)(Math.ceil((currentPage)/(double) perPageNum ))*perPageNum;
		System.out.println(endPage+"엔페");
		
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		System.out.println(endPage+"엔페2");
//		int tempStartPage = (endPage - 10) + 1;
//		int startPage = count / 10;
		int startPage  = ((int)(Math.ceil((currentPage)/(double) perPageNum ))*perPageNum) - 9;
		System.out.println(startPage+"스페");
		
		boolean prev = startPage == 1 ? false : true ;
		
		boolean next = endPage * perPageNum >= count ? false : true;
		
		//페이징 끝
		
		popUpVo.setStartNum((currentPage*10)-9);
		popUpVo.setEndNum(currentPage*10);
		if (count > 0) {
			list = popUpService.selectselectPopUpList(popUpVo);
		}
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("count", count);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		model.addAttribute("list",list);
		return "/admin/popUpList";
	}
	
	//팝업 작성
	@RequestMapping("/admin/popUpWrite")
	public String popUpWrite(Model model) {
		
		return "/admin/popUpWrite";
	}
	
	@RequestMapping("/admin/popUpDetail")
	public String selectPopUpDetail(PopUpVo popUpVo,ModelMap model,HttpSession session)throws Exception{
		PopUpVo pop = popUpService.selectPopUpDetail(popUpVo);
		
		model.addAttribute("result", pop);
		return "/admin/popUpDetail";
	}
	
	
	//팝업 저장
	@SuppressWarnings("finally")
	@ResponseBody
	@PostMapping("/admin/savePopUp")
	public HashMap<String, Object> savePopUp(@RequestBody PopUpVo popUpVo, ModelMap model,HttpSession session){
		HashMap<String, Object> successMap = new HashMap<>();
		try {
			if(popUpVo != null && session.getAttribute("loginInfo") != null) {
				LoginVo loginInfo =  (LoginVo) session.getAttribute("loginInfo");
				popUpVo.setWriterId(loginInfo.getId());

				int popUpId = popUpService.savePopUp(popUpVo);
				successMap.put("isSuccess", true);
				successMap.put("popUpId", popUpVo.getPopUpId());
			}else {
				successMap.put("isSuccess", false);
			}
			
		}catch(Exception e) {
			successMap.put("isSuccess", false);
		}finally {
			return successMap;
		}
	}
	
	//팝업삭제 
	@SuppressWarnings("finally")
	@ResponseBody
	@PostMapping("/admin/deletePopUp")
	public HashMap<String, Object> deletePopUp(@RequestBody PopUpVo popUpVo,ModelMap model,HttpSession session){
		HashMap<String, Object> successMap = new HashMap<>();
		try {
			popUpService.deltePopUp(popUpVo.getPopUpId());
			successMap.put("isSuccess", true);
		} catch (Exception e) {
			successMap.put("isSuccess", false);
		} finally {
			return successMap;
		}
	}
	
	//팝업수정 조회
	@RequestMapping("/admin/popUpUpdate")
	public String selectPopUpDetailForUpdate(PopUpVo popUpVo,ModelMap model,HttpSession session)throws Exception{
		PopUpVo pop = popUpService.selectPopUpDetail(popUpVo);
		
		model.addAttribute("result", pop);
		return "/admin/popUpUpdate";
	}
	
	//팝업 수정
	@SuppressWarnings("finally")
	@ResponseBody
	@PostMapping("/admin/updatePopUp")
	public HashMap<String, Object> updatePopUp(@RequestBody PopUpVo popUpVo, ModelMap model,HttpSession session){
		HashMap<String, Object> successMap = new HashMap<>();
		try {
			if(popUpVo != null && session.getAttribute("loginInfo") != null) {
				LoginVo loginInfo =  (LoginVo) session.getAttribute("loginInfo");
				popUpVo.setWriterId(loginInfo.getId());

				int popUpId = popUpService.updatePopUp(popUpVo);
				successMap.put("isSuccess", true);
				successMap.put("popUpId", popUpVo.getPopUpId());
			}else {
				successMap.put("isSuccess", false);
			}
			
		}catch(Exception e) {
			successMap.put("isSuccess", false);
		}finally {
			return successMap;
		}
	}
	
	//게시용 팝업 조회
	@RequestMapping("/admin/popUpDetailForUser")
	public String selectPopUpDetailForUser(PopUpVo popUpVo,ModelMap model,HttpSession session)throws Exception{
		PopUpVo pop = popUpService.selectPopUpDetail(popUpVo);
		
		model.addAttribute("result", pop);
		return "/admin/popUpDetailForUser";
	}
	
	//유저게시용 팝업 목록 조회
		@SuppressWarnings("finally")
		@ResponseBody
		@PostMapping("/admin/selectPopUpListForUser")
		public List<PopUpVo> selectPopUpListForUser( ModelMap model,HttpSession session){
			List<PopUpVo> popList = new ArrayList<PopUpVo>();
			try {

				popList = popUpService.selectPopUpListForUser();
			}catch(Exception e) {
				popList = null;
			}finally {
				return popList;
			}
		}
		
}

