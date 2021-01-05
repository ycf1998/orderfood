package org.money.orderfood.service.impl;

import java.io.File;
import java.util.List;

import org.money.orderfood.config.MoneyConfig;
import org.money.orderfood.mbg.entity.GmsGoodsCategory;
import org.money.orderfood.mbg.mapper.GmsGoodsCategoryMapper;
import org.money.orderfood.service.GmsGoodsCategoryService;
import org.money.orderfood.util.UploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

@Service
public class GmsGoodsCategoryServiceImpl implements GmsGoodsCategoryService {

	private String prefixBaseDir = MoneyConfig.getBasePath();

	@Autowired
	private GmsGoodsCategoryMapper gmsGoodsCategoryMapper;

	@Override
	public Page<GmsGoodsCategory> getList(Integer parentId, Integer page, Integer limit) {
		QueryWrapper<GmsGoodsCategory> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("pid", parentId).orderByAsc("sort");
		Page<GmsGoodsCategory> pageInfo = new Page<>(page, limit);
		return gmsGoodsCategoryMapper.selectPage(pageInfo, queryWrapper);
	}

	@Override
	public int addGoodsCategory(GmsGoodsCategory gmsgoodsCategory, MultipartFile icon) {
		QueryWrapper<GmsGoodsCategory> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("name", gmsgoodsCategory.getName());
		if (gmsGoodsCategoryMapper.selectCount(queryWrapper) > 0) {
			return -1;
		}
		String iconName = UploadUtil.upload(prefixBaseDir + "icon" + File.separator, icon);
		if (iconName != null) {
			gmsgoodsCategory.setIcon("icon/" + iconName);
		}
		return gmsGoodsCategoryMapper.insert(gmsgoodsCategory);
	}
	
	@Override
	public int delGoodsCategory(Integer id) {
		return gmsGoodsCategoryMapper.deleteById(id);
	}
	
	public int updateShowStatus(Integer id, Integer showStatus) {
		GmsGoodsCategory gmsGoodsCategory = new GmsGoodsCategory();
		gmsGoodsCategory.setId(id);
		gmsGoodsCategory.setShowStatus(showStatus);
		return gmsGoodsCategoryMapper.updateById(gmsGoodsCategory);
	}

}
