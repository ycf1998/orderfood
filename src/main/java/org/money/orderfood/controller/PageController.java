package org.money.orderfood.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 
 * @ClassName: PageController 
 * @Description: 页面跳转Controller
 * @author money
 * @date 2020年11月17日
 */
@Controller
public class PageController {
	
	@GetMapping("/index")
	public String index() {
		return "index";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/resetPwd")
	public String resetPwd() {
		return "resetPwd";
	}
}
