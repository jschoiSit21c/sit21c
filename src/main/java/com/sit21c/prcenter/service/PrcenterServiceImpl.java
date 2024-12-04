package com.sit21c.prcenter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sit21c.prcenter.mapper.PrcenterMapper;
import com.sit21c.prcenter.vo.EDisclosureVo;
import com.sit21c.recruit.vo.RecruitmentVo;

@Service("prcenterService")
public class PrcenterServiceImpl implements PrcenterService {

	@Autowired
	private PrcenterMapper prcenterMapper;

    /**
     * 전자공시 목록 조회
     */
	@Override
	public List<EDisclosureVo> selectEDisclosureVoList(EDisclosureVo eDisclosureVo) throws Exception {
		// TODO Auto-generated method stub
    	return prcenterMapper.selectprcenterList(eDisclosureVo);
	}

	/**
     * 전자공시 상세
     */
    @Override
    public EDisclosureVo selectEDisclosure(EDisclosureVo eDisclosureVo) throws Exception {
    	return prcenterMapper.selectEDisclosure(eDisclosureVo);
    }
	
	/**
     * 전자공시 저장
     */
    @Override
    public int saveEDisclosure(EDisclosureVo eDisclosureVo) throws Exception{
    	return prcenterMapper.saveEDisclosure(eDisclosureVo);
    }
    
    /**
     * 전자공시 수정
     */
    @Override
    public int modifyEDisclosure(EDisclosureVo eDisclosureVo) throws Exception {
    	return prcenterMapper.modifyEDisclosure(eDisclosureVo);
    }
}
