package com.springproj.dietwebservice.service;

import com.springproj.dietwebservice.domain.FoodInputVO;

public interface FoodInputService {
	public FoodInputVO insertfood(FoodInputVO food);
	public FoodInputVO getMyfoodById(String memberId);
}
