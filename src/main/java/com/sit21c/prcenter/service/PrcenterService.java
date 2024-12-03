package com.sit21c.prcenter.service;

import java.util.List;

import com.sit21c.prcenter.vo.EDisclosureVo;
import com.sit21c.recruit.vo.RecruitmentVo;

public interface PrcenterService {
	
	/**
	 * 전자공시 목록 조회
	 * @param eDisclosureVo
	 * @return
	 * @throws Exception
	 */
	public List<EDisclosureVo> selectEDisclosureVoList(EDisclosureVo eDisclosureVo) throws Exception;
	
	/**
	 * 전자공시 상세 조회
	 * @param eDisclosureVo
	 * @return
	 * @throws Exception
	 */
	public EDisclosureVo selectEDisclosure(EDisclosureVo eDisclosureVo) throws Exception;
	
	
	/**
	 * 전자공시 저장
	 * @param eDisclosureVo
	 * @return
	 */
	public int saveEDisclosure(EDisclosureVo eDisclosureVo) throws Exception;

	/**
	 * 전자공시 수정
	 * @param eDisclosureVo
	 * @return
	 * @throws Exception
	 */
	public int modifyEDisclosure(EDisclosureVo eDisclosureVo) throws Exception;
	
}
