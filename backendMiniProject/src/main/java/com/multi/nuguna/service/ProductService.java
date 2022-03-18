package com.multi.nuguna.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.nuguna.dao.IProductDAO;
import com.multi.nuguna.model.ProductVO;

@Service
public class ProductService implements IProductService {
	
	@Autowired
	@Qualifier("IProductDAO")
	IProductDAO dao;
	
	@Override
	public ArrayList<ProductVO> listAllProduct() {
		
		return dao.listAllProduct();
	}
	
	@Override
	public ProductVO detailViewProduct(String prdName) {
		return dao.detailViewProduct(prdName);
	}

}
