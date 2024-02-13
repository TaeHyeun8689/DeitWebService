package com.springproj.dietwebservice.repository;

import org.apache.ibatis.annotations.Mapper;

import com.springproj.dietwebservice.domain.FoodInputVO;

@Mapper
public interface IFoodInputDAO {
	public FoodInputVO insertfood(FoodInputVO food);
	public FoodInputVO selectfood(String memberId);
}
