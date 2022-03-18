package com.multi.nuguna.dao;

import java.util.ArrayList;

import com.multi.nuguna.model.ProductVO;

public interface IProductDAO {
	
	ArrayList<ProductVO> listAllProduct();
	ProductVO detailViewProduct(String prdName);
}
