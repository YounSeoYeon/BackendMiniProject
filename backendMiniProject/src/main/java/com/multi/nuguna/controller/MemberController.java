package com.multi.nuguna.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.nuguna.model.MemberVO;
import com.multi.nuguna.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	@RequestMapping("/loginForm")
	public String login() {
		return "member/login";
	}
	
	@ResponseBody
	@RequestMapping("/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
											   HttpSession session) {
		
		
		MemberVO vo = service.loginCheck(param);
		String result = "fail";
		
		if(vo != null) {
			
			session.setAttribute("sid", vo.getMemId());
			result = "success";
		}
		
		return result;
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping("/memIdCheck")
	public String memIdCheck(@RequestParam("memId") String memId) {
		
		String memId_result = service.memIdCheck(memId);
		
		String result = "use";
		if(memId_result != null)
			result = "no_use";
		
		return result;
	}
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
}
