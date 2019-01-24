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
	String message = "행운번호는 없다!";

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

//  @RequestMapping("/loginAjax.do")
//  public @ResponseBody Map loginAjax(
//          @RequestParam(value = "id") String loginId,
//          @RequestParam(value = "passWord") String passWord) {
//	  System.out.println("login check");
//	  
//	  String name = "admin";
//	  String pass = "1234";
//	  int chkNum = 0; 
//
//	  if(loginId == name && passWord == pass) {
//		  chkNum = 3;
//	  } else if(loginId != name) {
//		  chkNum = 1;
//	  } else if(passWord != pass) {
//		  chkNum = 2;
//	  }
//
//	  Map result = new HashMap(); 
//	  result.put("result", result);
//
//	  return result;
//  }

	@RequestMapping("/checkNum.do")
	public ModelAndView checkNum(
			@RequestParam(value = "loginId", required = false, defaultValue = "Maven") String loginId) {
		System.out.println("in checkNum");
		System.out.println(loginId.equals("Maven"));

		if (loginId.equals("Maven")) {
			ModelAndView mv = new ModelAndView("error");
			return mv;
		}
		
		ModelAndView mv = new ModelAndView("checkNum");
		mv.addObject("loginId", loginId);
		mv.addObject("message", message);
		return mv;
	}
}
