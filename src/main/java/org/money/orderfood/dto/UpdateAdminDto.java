package org.money.orderfood.dto;

import lombok.Getter;
import lombok.Setter;

/**
 * @program: orderfood
 * @description: 更新管理员基本资料
 * @author: Money
 * @create: 2021/01/01 12:05:50
 */
@Getter
@Setter
public class UpdateAdminDto {

    private Integer id;

    /**
     * 昵称
     */
    private String nickname;

    /**
     * 头像
     */
    private String avator;

    /**
     * 手机号码
     */
    private String phone;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 备注
     */
    private String remark;
}
