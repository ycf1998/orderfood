package org.money.orderfood.controller.backend;

import org.money.orderfood.common.CommResp;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;

/**
 * @program: orderfood
 * @description: 商品分类Contoller
 * @author: Money
 * @create: 2021/01/03 00:12:36
 */
@RestController
@RequestMapping("/goodsCategory")
public class GmsGoodsCategoryController {

    @GetMapping("/list/{parentId}")
    @ResponseBody
    public CommResp getList(@PathVariable Long parentId,
                            @RequestParam(value = "page", defaultValue = "1") int page,
                            @RequestParam(value = "limit", defaultValue = "15") int limit) {
        return CommResp.success(Collections.EMPTY_LIST);
    }
}
