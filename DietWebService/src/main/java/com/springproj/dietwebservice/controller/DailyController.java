package com.springproj.dietwebservice.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springproj.dietwebservice.annotation.LoginCheck;
import com.springproj.dietwebservice.domain.FoodInfoVO;
import com.springproj.dietwebservice.domain.FoodInputVO;
import com.springproj.dietwebservice.domain.MemberVO;
import com.springproj.dietwebservice.service.FoodInfoService;
import com.springproj.dietwebservice.service.FoodInputService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DailyController {
	@Autowired
	private FoodInfoService foodinfoService;
	private FoodInputService foodinputService;

	@GetMapping("/insertDailyFood.do")
	@LoginCheck
	//id를 비교해 입력된 foodinput데이터를 가져오는 메서드
	public String getDailyFood(HttpSession session, Model model) {
		MemberVO member = (MemberVO) session.getAttribute("mymember");
		String memberId = member.getId();

		FoodInputVO foodinputDB = foodinputService.getMyfoodById(memberId);
		
		if(foodinputDB != null) {
			model.addAttribute("myfood", foodinputDB);
			session.setAttribute("foodinputDB", foodinputDB);
		} else {
			model.addAttribute("myfood", "오늘 입력된 식사가 없습니다.");
		}
		return "daily/dailyFood";
	}

	
	@PostMapping("/insertDailyFood.do")
	@LoginCheck
	//식단 입력 후 데이터베이스에 저장하는 메서드
	public String getDailyinsertFood(@ModelAttribute("food") FoodInfoVO food,HttpSession session) {
		// 세션에서 MemberVO 객체 가져오기
		MemberVO member = (MemberVO) session.getAttribute("mymember");
		String memberId = member.getId();
		
		FoodInputVO foodInputVO = new FoodInputVO();
		foodInputVO.setFood_inputdate(new Date(System.currentTimeMillis()));
		foodInputVO.setFood_kcal(food.getKcal());
		foodInputVO.setFood_gram(food.getGram());
		foodInputVO.setFood_totalkcal(food.getKcal());
		foodInputVO.setFood_name(food.getFood_name());
		foodInputVO.setMember_id(memberId);
		//foodInputVO.setFood_day(아침일경우 1 점심일 경우 2 저녁일 경우 3);
		foodInputVO.setFood_day();
		// 서비스를 통해 데이터베이스에 저장
	    foodinputService.insertfood(foodInputVO);
	    
	    return "redirect:/insertDailyFood.do";
	}

	// 식단 창에서 입력/수정 버튼 클릭 시 이동 메서드
	@GetMapping("/dailyinsertfood.do")
	@LoginCheck
	public String DailyinsertFood(HttpSession session, Model model) {
		
		FoodInputVO foodinputDB = (FoodInputVO) session.getAttribute("foodinputDB");

	    // 모델에 foodinputDB 추가
	    model.addAttribute("foodinputDB", foodinputDB);
		
		return "daily/dailyinsertfood";
	}
	
	
	@PostMapping("/search")
	@ResponseBody
	//음식 검색 후 결과값 출력 메서드
	public List<FoodInfoVO> searchFood(@RequestParam String searchText, Model model) {
		System.out.println("searchText 값 출력 =" + searchText);
		List<FoodInfoVO> foodlist = foodinfoService.findfoodinfo(searchText);

		model.addAttribute("foodList", foodlist);
		System.out.println(foodlist);

		return foodlist;
	}

	// 운동 창에서 입력/수정 버튼 클릭 시 이동 메서드
	@GetMapping("/dailyinsertworkout.do")
	@LoginCheck
	public String Dailyinsertworkout() {
		System.out.println("dailyinsertworkout");

		return "daily/dailyinsertworkout";
	}

	@GetMapping("/insertDailySport.do")
	@LoginCheck
	public String getDailySport() {

		return "daily/dailySport";
	}

	@GetMapping("/insertDailyDiary.do")
	@LoginCheck
	public String getDailyDiary() {

		return "daily/dailyDiary";
	}

	@GetMapping("/insertDailyWeight.do")
	@LoginCheck
	public String getDailyWeight() {

		return "daily/dailyWeight";
	}

}
