package com.multi.nuguna.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.nuguna.dao.ICommunityDAO;
import com.multi.nuguna.model.CommunityVO;

@Service
public class CommunityService implements ICommunityService {


	@Autowired
	@Qualifier("ICommunityDAO")
	ICommunityDAO dao;

	@Override
	public ArrayList<CommunityVO> showlist() {
		return dao.showlist();
	}

	@Override
	public void insertListCom(CommunityVO comVo) {
		dao.insertListCom(comVo);
	}

	@Override
	public void updateListCom(CommunityVO comVo) {
		dao.updateListCom(comVo);
	}

	@Override
	public void deleteListCom(String comVo) {
		dao.deleteListCom(comVo);
	}

	@Override
	public CommunityVO detailView(String comVo) {
		return dao.detailView(comVo);
	}
	

}
