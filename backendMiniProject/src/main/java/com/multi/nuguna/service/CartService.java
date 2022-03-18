package com.multi.nuguna.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.nuguna.dao.ICartDAO;
import com.multi.nuguna.model.CartVO;

@Service
public class CartService implements ICartService {
	
	@Autowired
	@Qualifier("ICartDAO")
	ICartDAO dao;
	
	@Override
	public void updateQtyInCart(CartVO vo) {
		dao.updateQtyInCart(vo);

	}

}
