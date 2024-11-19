package com.sit21c.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sit21c.admin.vo.PopUpVo;


@Mapper
public interface PopUpMapper {
	
	/**
	 * 팝업 카운트
	 * @param popUpVO
	 * @return
	 */
	public int selectCountPopUpList(PopUpVo popUpVO);
	/**
	 * 팝업목록호출
	 * @param popUpVO
	 * @return
	 */
	public List<PopUpVo> selectPopUpList(PopUpVo popUpVO);
	
	/**
	 * 팝업목록 저장 
	 * @param popUpVO
	 * @return
	 */
	public int savePopUp(PopUpVo popUpVO);
	
	/**
	 * 팝업 상세화면 조회
	 * @param popUpVo
	 * @return
	 */
	public PopUpVo selectPopUpDetail(PopUpVo popUpVo);
	
	/**
	 * 팝업삭제
	 * @param popUpId
	 * @return
	 */
	public int deletePopUp(String popUpId);
	
	/**
	 * 팝업목록 저장 
	 * @param popUpVO
	 * @return
	 */
	public int updatePopUp(PopUpVo popUpVO);
	
	public List<PopUpVo> selectPopUpListForUser();
}
