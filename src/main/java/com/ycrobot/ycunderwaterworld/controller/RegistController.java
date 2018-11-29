package com.ycrobot.ycunderwaterworld.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ycrobot.ycunderwaterworld.pojo.User;
import com.ycrobot.ycunderwaterworld.service.UserService;
import com.ycrobot.ycunderwaterworld.util.ThisCommonUtil;

@Controller
public class RegistController {

	private UserService userService;
	private Long result;

	@Resource(name = "userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/registPage")
	public String registPage() {
		return "regist";
	}

	@RequestMapping("/regist/validationEmail")
	@ResponseBody
	public String validationEmail(HttpServletRequest request, HttpServletResponse response, String email) {
		String result = "0";
		User user = userService.getUserByEmail(email);
		if (user != null) {
			result = "0";
		} else {
			result = "1";
		}
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "/registAction", method = RequestMethod.POST)
	public void regist(@RequestBody User user, Model model, HttpServletRequest request,
			HttpServletResponse response)  {
		user.setPassword(ThisCommonUtil.MD5(user.getPassword()));
		user.setCreatetime(ThisCommonUtil.CurrentTime());
		System.out.println(user);
		result = userService.insertUser(user);
		HttpSession session=request.getSession();
		session.setAttribute("user", user);
		try {
			response.getWriter().print(result);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}

}
