package com.multi.nuguna;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.multi.nuguna.controller.CartController;
import com.multi.nuguna.controller.CommunityController;
import com.multi.nuguna.controller.MainController;
import com.multi.nuguna.controller.MemberController;
import com.multi.nuguna.controller.ProductController;
import com.multi.nuguna.dao.ICommunityDAO;
import com.multi.nuguna.dao.IMemberDAO;
import com.multi.nuguna.dao.IProductDAO;
import com.multi.nuguna.service.CartService;
import com.multi.nuguna.service.CommunityService;
import com.multi.nuguna.service.MemberService;
import com.multi.nuguna.service.ProductService;

@SpringBootApplication
@ComponentScan(basePackages= {"com.ai.ex"})
@ComponentScan(basePackageClasses = ProductController.class)
@ComponentScan(basePackageClasses = CartController.class)
@ComponentScan(basePackageClasses = MemberController.class)
@ComponentScan(basePackageClasses = CommunityController.class)
@ComponentScan(basePackageClasses = MainController.class)
@ComponentScan(basePackageClasses=ProductService.class)
@ComponentScan(basePackageClasses=CartService.class)
@ComponentScan(basePackageClasses=MemberService.class)
@ComponentScan(basePackageClasses=CommunityService.class)
@MapperScan(basePackageClasses = IProductDAO.class)
@MapperScan(basePackageClasses = IMemberDAO.class)
@MapperScan(basePackageClasses = ICommunityDAO.class)
public class BackendMiniProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(BackendMiniProjectApplication.class, args);
	}

}
