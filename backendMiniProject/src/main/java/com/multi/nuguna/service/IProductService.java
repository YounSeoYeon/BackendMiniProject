package com.multi.nuguna.service;

import java.util.ArrayList;

import com.multi.nuguna.model.ProductVO;

public interface IProductService {
	
	ArrayList<ProductVO> listAllProduct();
	ProductVO detailViewProduct(String prdName);
}
