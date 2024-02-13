package com.springproj.dietwebservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springproj.dietwebservice.domain.DiaryVO;
import com.springproj.dietwebservice.domain.MemberVO;
import com.springproj.dietwebservice.service.DiaryService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DiaryController {
	@Autowired
	private DiaryService diaryService;

	// 다이어리 화면
	@GetMapping("/diary.do")
	public String diaryForm(MemberVO diary, HttpSession session, Model model) {
		// 세션에서 로그인 정보가져오기
		MemberVO loggedInUser = (MemberVO) session.getAttribute("mymember");

		// 작성자 정보 설정
		model.addAttribute("loggedInUser", loggedInUser.getNickname());

		return "member/diary";
	}

	// 다이어리 처리 화면
	@PostMapping("/insertdiary")
	public String insertDiaryProc(DiaryVO diary, HttpSession session) {

		diaryService.saveDiaryEntry(diary);

		return "redirect:/home";
	}
}
