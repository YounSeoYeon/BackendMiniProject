package com.multi.nuguna.service;

import java.util.HashMap;

import com.multi.nuguna.model.MemberVO;

public interface IMemberService {
	MemberVO loginCheck(HashMap<String, Object> map);
	String memIdCheck(String memId);
}
