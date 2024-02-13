package com.springproj.dietwebservice.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {
	
	 @ExceptionHandler(RuntimeException.class)
	    public String handleRuntimeException(RuntimeException ex) {
	        // RuntimeException이 발생한 경우의 처리
	        // 예를 들어, 로깅 또는 추가적인 에러 페이지로의 리다이렉트 등을 수행할 수 있습니다.
	        System.out.println("RuntimeException 발생: " + ex.getMessage());
	        return "redirect:/error";
	    }
}
