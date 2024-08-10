package com.sit21c.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sit21c.common.vo.BoardVo;
import com.sit21c.company.mapper.CompanyMapper;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyMapper companyMapper;
	
	/**
	 * CEO메시지 작성
	 */
	@Override
	public int writeCEOMessage(BoardVo boardVo) throws Exception {
		
		//이미 값이 있으면 수정
		if(selectCEOMessage(boardVo) != null) {
			return companyMapper.updateCEOMessage(boardVo);
		}
		//없다면 insert
		return companyMapper.writeCEOMessage(boardVo);
	}
	
	@Override
	public BoardVo selectCEOMessage(BoardVo boardVo) throws Exception {
		return companyMapper.selectCEOMessage(boardVo);
	}

}
