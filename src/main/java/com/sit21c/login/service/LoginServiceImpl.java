package com.sit21c.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sit21c.login.mapper.LoginMapper;
import com.sit21c.login.vo.LoginVo;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public LoginVo executeLogin(LoginVo loginVo) throws Exception {
		return loginMapper.executeLogin(loginVo);
	}

}
