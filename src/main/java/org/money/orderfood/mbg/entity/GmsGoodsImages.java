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
 * @since 2021-01-02
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class GmsGoodsImages implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer goodsId;

    /**
     * 图片URL
     */
    private String link;

    /**
     * 图片位置
     */
    private Integer position;

    /**
     * 主图：1：是；2：否
     */
    private Integer isMain;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
