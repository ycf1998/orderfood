package org.money.orderfood.mbg.entity;

import java.math.BigDecimal;
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
public class GmsGoodsSku implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 商品id
     */
    private Integer goodsId;

    /**
     * 规格名称
     */
    private String title;

    /**
     * SKU库存
     */
    private Integer num;

    /**
     * 售价
     */
    private BigDecimal price;

    /**
     * 属性id：英文逗号分隔
     */
    private String properties;

    /**
     * 条码
     */
    private String barCode;

    /**
     * 商品码
     */
    private String goodsCode;

    /**
     * 状态:1启用,0禁用
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


}
