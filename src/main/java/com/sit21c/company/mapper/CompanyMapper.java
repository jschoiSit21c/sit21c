package com.sit21c.company.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.sit21c.common.vo.BoardVo;

@Mapper
public interface CompanyMapper {
	/**
	 * CEO메시지 작성
	 * @param boardVo
	 * @return
	 * @throws Exception
	 */
	public int writeCEOMessage(BoardVo boardVo) throws Exception;
	
	/**
	 * CEO메시지 수정
	 * @param boardVo
	 * @return
	 * @throws Exception
	 */
	public int updateCEOMessage(BoardVo boardVo) throws Exception;
	
	/** CEO메시지 조회
	 * @param boardVo
	 * @return
	 * @throws Exception
	 */
	public BoardVo selectCEOMessage(BoardVo boardVo) throws Exception;
}
