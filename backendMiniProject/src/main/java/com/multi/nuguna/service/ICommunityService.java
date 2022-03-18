package com.multi.nuguna.service;

import java.util.ArrayList;

import com.multi.nuguna.model.CommunityVO;

public interface ICommunityService {
	
	ArrayList<CommunityVO> showlist();
	void insertListCom(CommunityVO comVo); //글쓰기
	void updateListCom(CommunityVO comVo); //글수정
	void deleteListCom(String comVo); //글삭제
	CommunityVO detailView(String comVo);	//글보기
}
