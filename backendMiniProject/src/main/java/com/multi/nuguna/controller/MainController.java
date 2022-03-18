package com.multi.nuguna.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.nuguna.model.CommunityVO;
import com.multi.nuguna.service.CommunityService;

@Controller
public class MainController {
		@Autowired
		CommunityService service;
		
		@RequestMapping("/")
		public String index(Model model) {
		System.out.println("aa");
		ArrayList<CommunityVO> comlist = service.showlist();
		System.out.println("comlist = " + comlist);
		model.addAttribute("comlist",comlist);
		return "index";
	}
}

