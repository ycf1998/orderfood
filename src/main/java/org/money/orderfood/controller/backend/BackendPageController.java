package org.money.orderfood.controller.backend;

import javax.servlet.http.HttpSession;

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
	
	@GetMapping("/welcome")
	public String welcome() {
		return prefix + "welcome";
	}
	
	@GetMapping("/login")
	public String login() {
		return "redirect:" + prefix + "login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return prefix + "login";
	}
		
	// ======================== 个人
	@GetMapping("/profile")
	public String profile() {
		return prefix + "profile";
	}
	
	@GetMapping("/resetPwd")
	public String resetPwd() {
		return prefix + "resetPwd";
	}
	
	// ======================= 商品
	@GetMapping("/product/add")
	public String productAdd() {
		return prefix + "product/add";
	}

}
