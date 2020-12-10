package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminInfoController {
	
	@GetMapping(value="/")
	public void addAdmin() {
		
	}
}
