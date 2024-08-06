package com.sit21c.login.service;

import com.sit21c.login.vo.LoginVo;

public interface LoginService {
	/**
	 * 로그인
	 * @param loginVo
	 * @return
	 * @throws Exception
	 */
	public LoginVo executeLogin(LoginVo loginVo) throws Exception;
}
