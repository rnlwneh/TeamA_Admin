package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class DefaultController {
	
	@GetMapping(value="/{step}")
	public String step(@PathVariable String step) {
		return step;
	}
}
