package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
	
	@GetMapping(value="/{step}")
	public String step(@PathVariable String step) {
			return "admin/"+step;
	}
	
	@RequestMapping(value="/register")
	public String register() {
		return "register";
	}
}
