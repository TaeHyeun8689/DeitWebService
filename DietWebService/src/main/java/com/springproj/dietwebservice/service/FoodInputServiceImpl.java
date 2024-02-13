package com.springproj.dietwebservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.dietwebservice.domain.FoodInputVO;
import com.springproj.dietwebservice.repository.IFoodInputDAO;

@Service
public class FoodInputServiceImpl {
	@Autowired
	private IFoodInputDAO foodDAO;
	
	public FoodInputVO insertfood(FoodInputVO food) {
		return foodDAO.insertfood(food);
	}
	public FoodInputVO getMyfoodById(String memberId) {
		return foodDAO.selectfood(memberId);
	}

}
