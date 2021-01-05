package org.money.orderfood.mbg.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
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
 * @since 2021-01-04
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class GmsGoodsCategory implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 父类id
     */
    private Integer pid;

    /**
     * 图标
     */
    private String icon;

    /**
     * 分类名称
     */
    private String name;

    /**
     * 描述
     */
    private String description;

    /**
     * 商品数量
     */
    private Integer count;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 是否显示：0：否；1：是
     */
    private Integer showStatus;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;


}
