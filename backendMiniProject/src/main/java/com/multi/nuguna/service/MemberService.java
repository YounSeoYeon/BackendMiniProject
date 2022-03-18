package com.multi.nuguna.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.nuguna.dao.IMemberDAO;
import com.multi.nuguna.model.MemberVO;

@Service
public class MemberService implements IMemberService {
	
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Override
	public MemberVO loginCheck(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.loginCheck(map);
	}

	@Override
	public String memIdCheck(String memId) {
		// TODO Auto-generated method stub
		return dao.memIdCheck(memId);
	}

}
