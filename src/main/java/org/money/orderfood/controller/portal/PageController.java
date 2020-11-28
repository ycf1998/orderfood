package org.money.orderfood.controller.portal;

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
@RequestMapping("/portal")
public class PageController {

	private final String prefix = "/portal/";

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

	@GetMapping("/recommend")
	public String recommend() {
		return prefix + "recommend/index";
	}

	@GetMapping("/classification")
	public String classification() {
		return prefix + "classification/index";
	}

	@GetMapping("/shopCar")
	public String shopCar() {
		return prefix + "/shopCar/index";
	}
}
