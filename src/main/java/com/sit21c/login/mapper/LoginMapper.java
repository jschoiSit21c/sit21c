package com.sit21c.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.sit21c.login.vo.LoginVo;

@Mapper
public interface LoginMapper {
	
	/** 로그인 SQL 실행
	 * @param loginVo
	 * @return
	 */
	public LoginVo executeLogin(LoginVo loginVo);
}
