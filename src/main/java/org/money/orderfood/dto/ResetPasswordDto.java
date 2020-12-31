package org.money.orderfood.dto;

import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;

/**
 * 
 * @ClassName: ResetPasswordDto 
 * @Description: 修改密码Dto
 * @author money
 * @date 2020年11月17日
 */
@Getter
@Setter
public class ResetPasswordDto {
	
	@NotBlank(message="参数错误")
	private Long id;
	
	@NotBlank(message="旧密码不能为空")
	private String oldPassword;
	
	@NotBlank(message="新密码不能为空")
	private String newPassword;
	
	@NotBlank(message="确认密码不能为空")
	private String checkPassword;

}
