package org.money.orderfood.service;

import org.money.orderfood.dto.RegisterDto;
import org.money.orderfood.dto.ResetPasswordDto;
import org.money.orderfood.pojo.UmsUser;

/**
 * 
 * @ClassName: UmsUserService 
 * @Description: 用户Service
 * @author money
 * @date 2020年11月17日
 */
public interface UmsUserService {
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 */
	UmsUser login(String username, String password);
	/**
	 * 注册
	 * @param umsUser
	 * @return
	 */
	UmsUser register(RegisterDto registerDto);
	/**
	 * 修改密码
	 * @param resetPasswordDto
	 * @return
	 */
	UmsUser resetPassword(ResetPasswordDto resetPasswordDto);
	
}
