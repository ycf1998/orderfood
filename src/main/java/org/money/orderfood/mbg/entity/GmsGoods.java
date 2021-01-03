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
public class GmsGoods implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 商品编码
     */
    private String goodsNo;

    /**
     * 主图URL
     */
    private String mainImage;

    /**
     * 商品名称
     */
    private String title;

    /**
     * 副标题
     */
    private String subtitle;

    /**
     * 价格
     */
    private BigDecimal price;

    /**
     * 原价
     */
    private BigDecimal original;

    /**
     * 标签
     */
    private String tags;

    /**
     * 内容
     */
    private String content;

    /**
     * 描述
     */
    private String desc;

    /**
     * 上架状态：1：是；0：不是
     */
    private Integer isSale;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
