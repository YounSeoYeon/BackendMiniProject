package com.multi.nuguna.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.nuguna.model.CommunityVO;
import com.multi.nuguna.service.CommunityService;

@Controller
public class CommunityController {
	@Autowired
	CommunityService service;
	// list 폼으로 이동
		@RequestMapping("/lista")
		public String communitylist(Model model) {
			System.out.println("aa");
			ArrayList<CommunityVO> comlist = service.showlist();
			System.out.println("comlist = " + comlist);
			model.addAttribute("comlist",comlist);
			return "/community/list";
		}
		
	// write 폼으로 이동
		@RequestMapping("/write")
		public String communitywrite() {
			return "/community/write";
		}
	
	// 글등록 
//		@RequestMapping("/insertview")
//		public String insert(CommunityVO vo, HttpSession session) {
//			String memId = (String)session.getAttribute("sid");
//			vo.setMemId(memId);
//			
//			service.insertListCom(vo);			
//			return "redirect:/community/list";
//		}


		@RequestMapping("/insertview")
		public String insert(CommunityVO vo) {
			
			service.insertListCom(vo);			
			return "/lista";
		}
		
	// 글상세보기
		@RequestMapping("/listview/{comNo}")
		public String detailView(@PathVariable String comNo, Model model) {
			System.out.println(comNo);
			CommunityVO vo = service.detailView(comNo);
			model.addAttribute("vo",vo);
			
			System.out.println(vo.getComNo());
			return "/community/listview";
		}
		
}
