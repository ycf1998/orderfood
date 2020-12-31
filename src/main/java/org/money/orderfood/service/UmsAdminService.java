package org.money.orderfood.service;

import org.money.orderfood.dto.ResetPasswordDto;
import org.money.orderfood.mbg.entity.UmsAdmin;

/**
 * 
 * @ClassName: UmsAdminService 
 * @Description: 管理员Service
 * @author money
 * @date 2020年12月31日
 */
public interface UmsAdminService {
	
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 */
	UmsAdmin login(String username, String password);
	
	/**
	 * 修改密码：
	 * @param resetPasswordDto
	 * @return
	 */
	boolean resetPwd(ResetPasswordDto resetPasswordDto);

}
