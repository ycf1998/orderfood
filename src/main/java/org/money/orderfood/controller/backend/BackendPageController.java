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
	@GetMapping("/goods/add")
	public String goodsAdd() {
		return prefix + "goods/add";
	}

	@GetMapping("/goods/category")
	public String goodsCategory() {
		return prefix + "category/index";
	}

	@GetMapping("/goods/category/add")
	public String goodsCategoryAdd() {
		return prefix + "category/add";
	}

	@GetMapping("/goods/property")
	public String goodsProperty() {
		return prefix + "property/index";
	}

	@GetMapping("/goods/property/add")
	public String goodsPropertyAdd() {
		return prefix + "property/add";
	}
}
