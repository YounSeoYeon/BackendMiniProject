package com.multi.nuguna.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.nuguna.model.ProductVO;
import com.multi.nuguna.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService service;
	
	
	@RequestMapping("/product/listAllProduct")
	public String listAllProduct(Model model) {
		
		
		ArrayList<ProductVO> prdList = service.listAllProduct();
		System.out.println(prdList);
		model.addAttribute("prdList", prdList);
		return "product/allListProduct";
	}
	
	@RequestMapping("/product/detailViewProduct/{prdName}")
	public String detailViewProduct(@PathVariable String prdName, Model model) {
		System.out.println(prdName);
		ProductVO prd = service.detailViewProduct(prdName);
		model.addAttribute("prd", prd);
		
		return "product/detailProduct";
	}
	
	@RequestMapping("/product/endViewProduct")
	public String endViewProduct(Model model) {
		model.addAttribute("message", "인사");
		return "product/endProduct";
	}
	
}
