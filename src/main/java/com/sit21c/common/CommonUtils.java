package com.sit21c.common;

public class CommonUtils {
	
	/**
	 * 패스워드 암호화에 사용할 솔트값 추가
	 * @param str
	 * @return
	 */
	public static String addSalt(String str) {
		return str + "_salt";
	}
}
