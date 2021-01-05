package org.money.orderfood.service;

import org.money.orderfood.mbg.entity.GmsGoodsCategory;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

public interface GmsGoodsCategoryService {
	
	/**
	 * 根据父级id分页查询
	 * @param parentId
	 * @param page
	 * @param limit
	 * @return
	 */
	Page<GmsGoodsCategory> getList(Integer parentId, Integer page, Integer limit);
	
	/**
	 * 添加商品分类
	 * @param goodsCategory
	 * @return
	 */
	int addGoodsCategory(GmsGoodsCategory gmsgoodsCategory, MultipartFile icon);
	/**
	 * 删除商品分类
	 * @param id
	 * @return
	 */
	int delGoodsCategory(Integer id);
	
	/**
	 * 修改显示状态
	 * @param id
	 * @param showStatus
	 * @return
	 */
	int updateShowStatus(Integer id, Integer showStatus);

}
