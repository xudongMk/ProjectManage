package com.hfut.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hfut.domain.User;
import com.hfut.service.UserService;
import com.hfut.utils.SpringSecurityUtil;

@Controller
public class UserController {

	@Resource
	private UserService userService;

	@RequestMapping(value="/userInfo")
	public String showUserInfo(Model model){
		User user=userService.getUserById(1);
		model.addAttribute("user", user);
		return "showUser";
	}
	
	@RequestMapping("/registerForm")
	  public ModelAndView registerForm(String username, String password, String email) {
        User user=new User();
        user.setUserName(username);
        String pwd = SpringSecurityUtil.encode(password);
        user.setUserPassword(pwd);
        user.setUserEmail(email);

	    ModelAndView mav = new ModelAndView();
	    int result =userService.register(user);
	    
	    if (result>=1) {
	      mav.setViewName("redirect:/signin");
	    } else {
	      mav.setViewName("redirect:/signin?type=2");
	    }
	    return mav;
	  }

	  @RequestMapping(value = "/checkUsernameExists", method = RequestMethod.POST)
	  public @ResponseBody String checkUsernameExists(String username) {
	    User u = this.userService.getUsername(username);
	    if (u != null) {
	      return "true";
	    } else {
	      return "false";
	    }
	  }
}
