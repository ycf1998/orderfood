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
public class GmsGoodsPropertyName implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 属性名
     */
    private String name;

    /**
     * 分类id
     */
    private Integer cateId;

    /**
     * 是否颜色属性
     */
    private Integer isColor;

    /**
     * 是否列表中选择
     */
    private Integer isList;

    /**
     * 是否输入属性
     */
    private Integer isInput;

    /**
     * 是否关键属性
     */
    private Integer isKey;

    /**
     * 是否搜索字段
     */
    private Integer isSearch;

    /**
     * 是否必须属性
     */
    private Integer isMust;

    /**
     * 是否多选
     */
    private Integer isMulti;

    /**
     * 是否可手动添加
     */
    private Integer canHandAdd;

    /**
     * 是否销售属性：0->规格；1->参数
     */
    private Integer isSale;

    /**
     * 状态：1：启用；0：禁用
     */
    private Integer status;

    /**
     * 排序字段
     */
    private Integer sort;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 修改时间
     */
    private LocalDateTime updateTime;


}
