package com.sit21c.prcenter.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sit21c.prcenter.vo.EDisclosureVo;
import com.sit21c.recruit.vo.RecruitmentVo;

@Mapper
public interface PrcenterMapper {

	/**
	 * 전자공시 목록 조회
	 * 
	 * @param eDisclosureVo
	 * @return
	 */
	public List<EDisclosureVo> selectprcenterList(EDisclosureVo eDisclosureVo);
	
	/**전자공시 상세
	 * @param eDisclosureVo
	 * @return
	 */
	public EDisclosureVo selectEDisclosure(EDisclosureVo eDisclosureVo);
	
	/**
	 * 전자공시 저장
	 * @param eDisclosureVo
	 * @return
	 */
	public int saveEDisclosure(EDisclosureVo eDisclosureVo);
	
	/**
	 * 전자공시 수정
	 * @param eDisclosureVo
	 * @return
	 */
	public int modifyEDisclosure(EDisclosureVo eDisclosureVo);

}
