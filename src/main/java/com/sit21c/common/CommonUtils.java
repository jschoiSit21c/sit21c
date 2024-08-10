package com.sit21c.common;

import javax.servlet.http.HttpSession;

public class CommonUtils {
	
	/**
	 * 패스워드 암호화에 사용할 솔트값 추가
	 * @param str
	 * @return
	 */
	public static String addSalt(String str) {
		return str + "_salt";
	}
	
	/**
	 * 세션에 들어간 권한 체크
	 * @return
	 */
	public static boolean checkSessionAuth(HttpSession session, String auth){
		//값이 null일경우 false
		if(session != null && auth != null && ! "".equals(auth)) {
			//관리자 권한 체크
			if(session.getAttribute("SA") != null && auth.equals(session.getAttribute("SA"))) {
				return true;
			}
		}
		return false;
	}
}
