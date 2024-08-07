package com.sit21c.login.web;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sit21c.common.CommonUtils;
import com.sit21c.login.service.LoginService;
import com.sit21c.login.vo.LoginVo;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	/**
	 * 로그인화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/login/loginForm")
	public String openLoginForm(@RequestParam Map<String, Object> map, HttpSession session) {
		System.out.println("login 화면 호출");
		if(session.getAttribute("loginInfo") != null) {
			return "redirect:/";
		}
		return "/login/loginForm";
	}
	

	/**
	 * 로그인 실행
	 * @param loginVo
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/login/executeLogin")
	public String executeLogin(LoginVo loginVo, ModelMap model, HttpSession session, RedirectAttributes redirectAttributes) {
		try {
			
			//로그인 패스워드에 salt값 추가
			loginVo.setPassword(CommonUtils.addSalt(loginVo.getPassword()));
			LoginVo loginInfo = loginService.executeLogin(loginVo);
			System.out.println("성공");
			if(loginInfo != null) {
				session.setAttribute("loginInfo", loginInfo);
				return "redirect:/";
			}else {
				redirectAttributes.addFlashAttribute("loginFail", true);
				return "redirect:/login/loginForm";
			}
			
		}catch(Exception e) {
			//로그인 실패
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("loginFail", true);
			return "redirect:/login/loginForm";
		}
	}
	

	/**
	 * 로그아웃 실행
	 * @param loginVo
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/login/executeLogout")
	public String executeLogout(LoginVo loginVo, ModelMap model, HttpSession session) {
			session.setAttribute("loginInfo", null);
		return "redirect:/";
	}
}
