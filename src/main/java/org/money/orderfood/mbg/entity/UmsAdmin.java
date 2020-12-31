package org.money.orderfood.mbg.entity;

import java.time.LocalDateTime;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author money
 * @since 2020-12-31
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class UmsAdmin implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    /**
     * 登录名
     */
    private String username;

    /**
     * 密码
     */
    private String password;

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
     * 状态：0：禁用；1：启用
     */
    private Integer status;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 修改时间
     */
    private LocalDateTime updateTime;

    /**
     * 最后登录时间
     */
    private LocalDateTime lastTime;

    /**
     * 初次登录：0：不是；1：是
     */
    private Integer initLogin;

    /**
     * 用户类型：
     */
    private Integer type;

    /**
     * 备注
     */
    private String remark;


}
