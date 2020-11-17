package org.money.orderfood.dto;

import java.time.LocalDateTime;

import javax.validation.constraints.Max;
import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;

/**
 * 
 * @ClassName: RegisterDto 
 * @Description: 注册信息Dto
 * @author money
 * @date 2020年11月17日
 */
@Getter
@Setter
public class RegisterDto {
	
	 /**
     * 账号/手机
     */
	@NotBlank(message="账号不能为空")
    private String username;

    /**
     * 密码
     */
	@NotBlank(message="密码不能为空")
    private String password;
	
	/**
     * 验证码
     */
	@NotBlank(message="验证码不能为空")
    private String code;

    /**
     * 昵称
     */
	@NotBlank
	@Max(value=10, message="昵称最多10个字符")
    private String nickname;

    /**
     * 手机
     */
    private String phone;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 头像
     */
    private String icon;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;

    /**
     * 最后登录实际
     */
    private LocalDateTime lastTime;

    /**
     * 状态 0：禁用 1：启用
     */
    private Integer status;

}
