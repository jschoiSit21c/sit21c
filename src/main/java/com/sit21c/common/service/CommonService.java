package com.sit21c.common.service;

import java.util.List;

import com.sit21c.common.vo.ComCodeVo;

public interface CommonService {
	
	/**
	 * 공통코드 조회
	 * @param code
	 * @return
	 */
	public List<ComCodeVo> selectComCode(String code);
}
