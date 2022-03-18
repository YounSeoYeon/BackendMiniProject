package com.multi.nuguna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.multi.nuguna.service.CartService;

@Controller
public class CartController {
	@Autowired
	CartService service;
	
	
}
