package org.money.orderfood.controller.backend;

import org.money.orderfood.common.CommResp;
import org.money.orderfood.mbg.entity.GmsGoodsCategory;
import org.money.orderfood.service.GmsGoodsCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

/**
 * @program: orderfood
 * @description: 商品分类Controller
 * @author: Money
 * @create: 2021/01/03 00:12:36
 */
@RestController
@RequestMapping("/goodsCategory")
public class GmsGoodsCategoryController {
	
	@Autowired
	private GmsGoodsCategoryService goodsCategoryService;

    @GetMapping("/list/{parentId}")
    @ResponseBody
    public CommResp getList(@PathVariable Integer parentId,
                            @RequestParam(value = "page", defaultValue = "1") Integer page,
                            @RequestParam(value = "limit", defaultValue = "15") Integer limit) {
    	Page<GmsGoodsCategory> list = goodsCategoryService.getList(parentId, page, limit);
        return CommResp.success(list.getRecords(), list.getTotal(), page, limit);
    }
   
    @PostMapping("")
    @ResponseBody
    public CommResp addGoodsCategory(GmsGoodsCategory gmsgoodsCategory, MultipartFile file) {
    	int count = goodsCategoryService.addGoodsCategory(gmsgoodsCategory, file);
    	if (count > 0) {
    		return CommResp.success(count);
    	} else if (count == -1) {
    		return CommResp.fail("该分类已存在", null);
    	} else {
    		return CommResp.fail();
    	}
    }
    
    @DeleteMapping("/{id}")
    @ResponseBody
    public CommResp delGoodsCategory(@PathVariable("id") Integer id) {
    	int count = goodsCategoryService.delGoodsCategory(id);
    	if (count > 0) {
    		return CommResp.success(count);
    	}  else {
    		return CommResp.fail();
    	}
    }
    
    @PostMapping("/update/showStatus")
    @ResponseBody
    public CommResp updateShowStatus(@RequestParam("id") Integer id, @RequestParam("showStatus") Integer showStatus) {
    	int count = goodsCategoryService.updateShowStatus(id, showStatus);
    	if (count > 0) {
    		return CommResp.success(count);
    	} else {
    		return CommResp.fail();
    	}
    }
}
