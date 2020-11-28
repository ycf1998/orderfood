package org.money.orderfood.controller.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @ClassName: PageController 
 * @Description: 页面跳转Controller
 * @author money
 * @date 2020年11月17日
 */
@Controller
@RequestMapping("/backend")
public class BackendPageController {

	private final String prefix = "/backend/";

	@GetMapping("")
	public String index() {
		return prefix + "index";
	}
	
	@GetMapping("/login")
	public String login() {
		return prefix + "login";
	}
	
	@GetMapping("/resetPwd")
	public String resetPwd() {
		return prefix + "resetPwd";
	}

}
