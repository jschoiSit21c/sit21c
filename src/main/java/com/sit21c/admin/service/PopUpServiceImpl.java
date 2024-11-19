package com.sit21c.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sit21c.admin.mapper.PopUpMapper;
import com.sit21c.admin.vo.PopUpVo;

@Service("popUpService")
public class PopUpServiceImpl implements PopUpService {
	
	@Autowired
	private PopUpMapper popUpMapper;
	
	/**
	 * 팝업 리스트개수 호출
	 */
	@Override
	public int selectCountPopUpList(PopUpVo popUpVo) throws Exception {
		return popUpMapper.selectCountPopUpList(popUpVo);
	}
	/**
	 * 팝업목록 호출
	 */
	@Override
	public List<PopUpVo> selectselectPopUpList(PopUpVo popUpVo) throws Exception {
		return popUpMapper.selectPopUpList(popUpVo);
	}
	/**
	 * 팝업 저장
	 */
	@Override
	public int savePopUp(PopUpVo popUpVo) throws Exception {
		return popUpMapper.savePopUp(popUpVo);
	}
	@Override
	public PopUpVo selectPopUpDetail(PopUpVo popUpVo) throws Exception {
		return popUpMapper.selectPopUpDetail(popUpVo);
	}
	@Override
	public int deltePopUp(String popUpId) throws Exception {
		return popUpMapper.deletePopUp(popUpId);
	}
	@Override
	public int updatePopUp(PopUpVo popUpVo) throws Exception {
		return popUpMapper.updatePopUp(popUpVo);
	}
	@Override
	public List<PopUpVo> selectPopUpListForUser() throws Exception {
		return popUpMapper.selectPopUpListForUser();
	}

	
}
