package com.sajura.ypl.mapper;

import java.util.ArrayList;

import com.sajura.ypl.vo.ListVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sajura.ypl.vo.CartVO;

@Mapper
public interface yplmapper {
	
	public void cartinsert(CartVO vo);
	public ArrayList<ListVO> cartlist(@Param("user_no") int user_no);
}
