package org.money.orderfood.controller.portal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.money.orderfood.common.CommResp;
import org.money.orderfood.dto.RegisterDto;
import org.money.orderfood.pojo.UmsUser;
import org.money.orderfood.service.UmsUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.common.base.Strings;

@Controller
public class UmsUserController {
	
	@Autowired
	private UmsUserService userService;
	
	/**
	 * 通过密码登录
	 * @return
	 */
	@PostMapping("/session/login")
	@ResponseBody
	public CommResp login(String username, String password, HttpSession session) {
		if (Strings.isNullOrEmpty(username) || Strings.isNullOrEmpty(password)) {
			return CommResp.fail("账号密码不能为空");
		}
		UmsUser user = userService.login(username, password);
		if (user.getStatus() == 0) {
			return CommResp.fail("账号已禁止登录");
		}
		session.setAttribute("user", user);
		return CommResp.success(user);
	}
	
	/**
	 * 注册
	 * @return
	 */
	@PostMapping("/register")
	@ResponseBody
	public CommResp register(@Valid RegisterDto registerDto) {
		UmsUser user = userService.register(registerDto);
		return CommResp.success("注册成功", user);
	}

	/**
	 * 退出
	 * @return
	 */
	@PostMapping("/logout")
	@ResponseBody
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}

}
