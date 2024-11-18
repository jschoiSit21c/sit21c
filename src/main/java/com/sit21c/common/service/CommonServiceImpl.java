package com.sit21c.common.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sit21c.common.mapper.CommonMapper;
import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.common.vo.ComCodeVo;

@Service("commonService")
public class CommonServiceImpl implements CommonService {
	
	@Autowired
	private CommonMapper commonMapper;
	
	/**
	 *공통코드 호출
	 */
	@Override
	public List<ComCodeVo> selectComCode(String code) {
		return commonMapper.selectComCode(code);
	}
	
	/**
	 * 파일정보 조회
	 */
	@Override
	public AttchFileVo selectFileInfo(int fileId) {
		// TODO Auto-generated method stub
		return commonMapper.selectFileInfo(fileId);
	}

}
