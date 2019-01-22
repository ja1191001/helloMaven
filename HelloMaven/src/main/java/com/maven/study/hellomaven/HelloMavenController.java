package com.maven.study.hellomaven;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloMavenController {
    String message = "Welcome to Spring MVC!";
  
    @RequestMapping("/main.do")
    public ModelAndView showMessage(
            @RequestParam(value = "loginId", required = false, defaultValue = "Maven") String loginId) {
        System.out.println("in controller");
  
        ModelAndView mv = new ModelAndView("hellomaven");
        mv.addObject("message", message);
        mv.addObject("loginId", loginId);
        return mv;
    }
}
