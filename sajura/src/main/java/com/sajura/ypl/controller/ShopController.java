package com.sajura.ypl.controller;

import java.util.ArrayList;

import com.sajura.ypl.vo.ListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sajura.ypl.mapper.yplmapper;
import com.sajura.ypl.vo.CartVO;


@Controller
public class ShopController {
	@Autowired
	yplmapper mapper;
	
	
	@GetMapping("/")
	public  String root() {
		return "index";
	}
	@GetMapping("/cart")
	public String cart() {
		return "cart";
	}
	@GetMapping("cartlist")
	public void cartlist() {
		
	}
	@GetMapping("/subcartlist")
	public String subcartlist() {
		return "subcartlist";
	}
	
	@GetMapping("cartinsert.do")
	public void cartinsert(CartVO vo) {
		System.out.println(vo.getProduct_no());
		mapper.cartinsert(vo);
	}

	@PostMapping("/cartlist.do")
	public String cartlist(String user_no, Model model) {
		ArrayList<ListVO> list = new ArrayList<>();

		list=mapper.cartlist(Integer.parseInt(user_no));
		System.out.println(list);
		model.addAttribute("list",list);
		return "cartlist";
	}
	
	@GetMapping("/cartbuy")
	public @ResponseBody void cartbuy(@RequestParam("price") String price, @RequestParam("quantity") String quantity) {
		System.out.println(price+quantity);
		
		
	}
}
