package org.money.orderfood.controller.backend;

import javax.servlet.http.HttpSession;

import org.money.orderfood.common.CommResp;
import org.money.orderfood.dto.ResetPasswordDto;
import org.money.orderfood.dto.UpdateAdminDto;
import org.money.orderfood.mbg.entity.UmsAdmin;
import org.money.orderfood.service.UmsAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * 
 * @ClassName: UmsAdminController
 * @Description: 管理员登录Controller
 * @author money
 * @date 2020年12月31日
 */
@Controller
@RequestMapping("/admin")
public class UmsAdminController {

	@Autowired
	private UmsAdminService umsAdminService;

	@PostMapping("/session/login")
	public String login(String username, String password, Model model, HttpSession session) {
		UmsAdmin admin = umsAdminService.login(username, password);
		if (admin != null) {
			session.setAttribute("admin", admin);
			return "backend/index";
		} else {
			model.addAttribute("message", "账号或密码错误");
			return "backend/login";
		}
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/backend/login";
	}

	@PostMapping("/update")
	@ResponseBody
	public CommResp updateInfo(@RequestBody UpdateAdminDto updateAdminDto, HttpSession session) {
		if (umsAdminService.updateInfo(updateAdminDto)) {
			session.setAttribute("admin", umsAdminService.getAdminInfoById(updateAdminDto.getId()));
			return CommResp.success();
		}
		return CommResp.fail("修改失败", null);
	}
	
	@PostMapping("/resetPwd")
	@ResponseBody
	public CommResp resetPwd(@RequestBody ResetPasswordDto resetPasswordDto) {
		if(umsAdminService.resetPwd(resetPasswordDto)) {
			return CommResp.success();
		} 
		return CommResp.fail("旧密码错误", null);
	}
}
