package com.multi.nuguna.dao;

import java.util.HashMap;

import com.multi.nuguna.model.MemberVO;

public interface IMemberDAO {
	MemberVO loginCheck(HashMap<String, Object> map);
	String memIdCheck(String memId);
}
