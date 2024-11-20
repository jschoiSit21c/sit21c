package com.sit21c.admin.service;

import java.util.List;

import com.sit21c.admin.vo.PopUpVo;

public interface PopUpService {
	
	/**
	 * 팝업 목록 조회
	 * @param popUpVo
	 * @return
	 * @throws Exception
	 */
	public List<PopUpVo> selectselectPopUpList(PopUpVo popUpVo) throws Exception;
	
	/**
	 * 팝업목록개수 조회
	 * @param popUpVo
	 * @return
	 * @throws Exception
	 */
	public int selectCountPopUpList(PopUpVo popUpVo) throws Exception;
	
	/**
	 * 팝업 저장
	 * @param popUpVo
	 * @return
	 * @throws Exception
	 */
	public int savePopUp(PopUpVo popUpVo) throws Exception;
	
	/**
	 * 팝업상세조회
	 * @param popUpVo
	 * @return
	 * @throws Exception
	 */
	public PopUpVo selectPopUpDetail(PopUpVo popUpVo)throws Exception;
	
	/**
	 * 팝업삭제
	 * @param popUpId
	 * @return
	 * @throws Exception
	 */
	public int deltePopUp(String popUpId) throws Exception;
	
	/**
	 * 팝업 수정
	 * @param popUpVo
	 * @return
	 * @throws Exception
	 */
	public int updatePopUp(PopUpVo popUpVo) throws Exception;
	
	/**
	 * 현재 표시될 팝업Id 가져오기
	 * @param popUpVo
	 * @return
	 * @throws Exception
	 */
	public List<PopUpVo> selectPopUpListForUser() throws Exception;
	
	/**
	 * 팝업 크기 및 위치정보 저장
	 * @param popUpVo
	 * @return
	 * @throws Exception
	 */
	public int updatePopUpPosition(PopUpVo popUpVo) throws Exception;
 }
