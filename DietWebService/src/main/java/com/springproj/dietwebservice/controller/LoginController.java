package com.springproj.dietwebservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproj.dietwebservice.annotation.LoginCheck;
//import com.springproj.dietwebservice.annotation.LoginCheck;
import com.springproj.dietwebservice.domain.MemberVO;
import com.springproj.dietwebservice.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	@Autowired
	private MemberService memberService;

	// 로그인이 되어있으면 바로 home으로 가도록 처리
	@GetMapping("/")
	public String start(HttpSession session) {

		if (session.getAttribute("mymember") != null) {
			return "member/home";

		} else {
			return "index";
		}
	}

	// 로그인 화면
	@GetMapping("/login")
	public String loginForm() {
		System.out.println("로그인메서드");
		return "member/login";
	}

	@PostMapping(value = "/login.me")
	public String loginProc(MemberVO vo, HttpSession session, Model model) {

		String retVal = null;

		if (vo.getId() == null || vo.getId().equals("")) {
			model.addAttribute("msg", "로그인 실패");
			retVal = "member/login";
		}

		MemberVO user = memberService.getMember(vo);

		if ((user != null) && (user.getPassword().equals(vo.getPassword()))) {
			session.setAttribute("mymember", vo);
			MemberVO mymember = (MemberVO) session.getAttribute("mymember");

			MemberVO mymemberDB = memberService.getMypageById(mymember);
			session.setAttribute("mymember", mymemberDB);
			retVal = "redirect:home";

		} else {
			model.addAttribute("msg", "로그인 실패");
			retVal = "member/login";

		}

		return retVal;
	}

	// 로그 아웃
	@LoginCheck
	@RequestMapping("/logout.me")
	public String logoutProc(HttpSession session) {

		session.invalidate();

		return "member/login";

	}

	// 회원가입
	@RequestMapping("/signup.me")
	public String SignupForm() {
		return "member/signup";
	}

	// 마이페이지 이동 컨트롤러
	@LoginCheck
	@GetMapping("/getMyPage.do")
	public String myPage(MemberVO vo, HttpSession session, Model model) {
		// 세션에서 회원 정보 가져오기
		MemberVO mymember = (MemberVO) session.getAttribute("mymember");

		if (mymember != null) {
			MemberVO mymemberDB = memberService.getMypageById(mymember);
			model.addAttribute("mymember", mymemberDB);
		} else {
			return "redirect:/login";
		}

		return "member/mypage";

	}

	// 업데이트 마이페이지
	@LoginCheck
	@PostMapping("/updateMypage")
	public String updateMypage(MemberVO vo, HttpSession session, Model model, RedirectAttributes redirectAttributes) {
		MemberVO mymember = (MemberVO) session.getAttribute("mymember");
		System.out.println("업데이트 마이페이지 메서드 실행");
		// 입력한 ID와 세션에서 가져온 회원 정보의 ID를 비교
		if (mymember != null && mymember.getId().equals(vo.getId())) {
				memberService.updateMypage(vo);
				session.setAttribute("mymember", mymember);
				redirectAttributes.addFlashAttribute("update", "수정 성공");

				return "redirect:/getMyPage.do";
		} else {
			return "redirect:/login.me"; 
		}
	}

	// 회원가입 처리
	@RequestMapping("/signup")
	public String SignupProcess(MemberVO vo, HttpServletRequest request, HttpSession session) {

		String retVal = "redirect:login";
		memberService.MemberJoin(vo);

		return retVal;
	}


	// 아이디 & 비밀번호찾기 폼
	@GetMapping("/finduseridpw")
	public String showFindUseid() {
		return "member/finduseridpw";

	}

	// 아이디 & 비밀번호 찾기 처리
	@PostMapping("/findusername")
	public String findUsername(@RequestParam("fullName") String fullName,
			@RequestParam("phoneNumber") String phoneNumber, Model model) {
		
			MemberVO findUserIdResult = memberService.findUsername(fullName, phoneNumber);

			if (findUserIdResult != null) {
				model.addAttribute("member", findUserIdResult);
				return "member/findusername";
			} else {
				return "member/notfoundid";
			}

	}

	// 회원탈퇴 페이지
	@LoginCheck
	@GetMapping("/deleteMember")
	public String deleteMemberForm() {
		return "member/deletemember";
	}

	// 회원탈퇴 프로세서
	@PostMapping("/deleteproc.do")
	public String deleteMember(@RequestParam("id") String id, @RequestParam("password") String password) {
		
			if (memberService.deleteMember(id, password)) {
				return "member/successdeletemember";
			} else {
				return "member/falsedeletemember";
			}
	
	}

	// 홈페이지 메인 폼
	@LoginCheck
	@GetMapping("/home")
	public String mainHome() {
		return "member/home";
	}

}
