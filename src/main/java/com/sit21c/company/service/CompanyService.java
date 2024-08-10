package com.sit21c.company.service;

import com.sit21c.common.vo.BoardVo;

public interface CompanyService {
	
	/** CEO메시지 작성
	 * @param boardVo
	 * @return
	 * @throws Exception
	 */
	public int writeCEOMessage(BoardVo boardVo) throws Exception;
	
	/**
	 * CEO메시지 조회
	 * @param boardVo
	 * @return
	 * @throws Exception
	 */
	public BoardVo selectCEOMessage(BoardVo boardVo) throws Exception;
}
