package kr.co.kosmo.mvc.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
	
	@GetMapping(value="/{step}")
	public String step(@PathVariable String step,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String r_path = session.getServletContext().getRealPath("/");
		String filePath = "WEB-INF\\views\\admin\\";
		File file = new File(r_path+filePath+step+".jsp");
		if(!file.exists()) {
			return "errorPage";
		}
		return "admin/"+step;
	}
	
	@RequestMapping(value="/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping(value="/login")
	public String login() {
		return "login";
	}
}
