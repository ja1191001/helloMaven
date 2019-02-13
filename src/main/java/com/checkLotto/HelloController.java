package com.checkLotto;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	String message = "안가르쳐주지롱!";

	@RequestMapping("/")
	public ModelAndView hello(
			@RequestParam(value = "loginId", required = false, defaultValue = "Maven") String loginId) {
		System.out.println("in controller");

		ModelAndView mv = new ModelAndView("hello");
		mv.addObject("loginId", loginId);
		return mv;
	}

	@RequestMapping("/login.do")
	public ModelAndView login() {
		System.out.println("login page");
		ModelAndView mv = new ModelAndView("login");
		
		return mv;
	}

	@RequestMapping("/checkNum.do")
	public ModelAndView checkNum(
			@RequestParam(value = "loginId", required = false, defaultValue = "Maven") String loginId) {
		System.out.println("in checkNum");

		if (!loginId.equals("admin")) {
			ModelAndView mv = new ModelAndView("error");
			return mv;
		}
		
		ModelAndView mv = new ModelAndView("checkNum");
		mv.addObject("loginId", loginId);
		mv.addObject("message", message);
		return mv;
	}
}
