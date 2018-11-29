package com.ycrobot.ycunderwaterworld.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ycrobot.ycunderwaterworld.pojo.User;
import com.ycrobot.ycunderwaterworld.service.UserService;
import com.ycrobot.ycunderwaterworld.util.ThisCommonUtil;





@Controller
public class LoginController {
	UserService userService;
	
	@Resource(name="userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/login")
	public String loginPage(){
		return "login";
	}
	
	@RequestMapping("/loginAction")
	@ResponseBody
	public void login(@RequestBody User user, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		user.setPassword(ThisCommonUtil.MD5(user.getPassword()));
		User loginUser=userService.getUser(user);
		HttpSession session=request.getSession();
		session.setAttribute("loginUser", loginUser);
		String sessionid=session.getId();
		System.out.println(sessionid);
		if(loginUser==null) {
			response.getWriter().print(0);
		}
		else {
		response.getWriter().print(1);
		}
	}
}
