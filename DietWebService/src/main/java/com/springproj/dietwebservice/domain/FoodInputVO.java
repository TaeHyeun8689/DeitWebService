package com.springproj.dietwebservice.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class FoodInputVO {

		   private String food_name;//음식번호
		   private String member_id;//음식이름
		   private int food_gram;//그램수
		   private int food_kcal; //칼로리
		   private int food_totalkcal; //칼로리
		   private Date food_inputdate;
		   private int food_day; //아침,점심,저녁
		}
