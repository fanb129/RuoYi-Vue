package com.ruoyi.item.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.constant.Constants;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.item.domain.RrpItem;
import com.ruoyi.item.service.IRrpItemService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 资源信息Controller
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
@RestController
@RequestMapping("/item/item")
public class RrpItemController extends BaseController
{
    @Autowired
    private IRrpItemService rrpItemService;

    /**
     * 查询资源信息列表
     */
    @PreAuthorize("@ss.hasPermi('item:item:list')")
    @GetMapping("/list")
    public TableDataInfo list(RrpItem rrpItem)
    {
        if(!hasRole(Constants.RRP_ADMIN)){
            rrpItem.setUserId(getUserId());
        }
        startPage();
        List<RrpItem> list = rrpItemService.selectRrpItemList(rrpItem);
        return getDataTable(list);
    }

    /**
     * 查询公开资源信息列表（用于首页浏览，不需要权限）
     */
    @GetMapping("/public/list")
    public TableDataInfo publicList(RrpItem rrpItem)
    {
        startPage();
        // 只查询上架状态的共享出售资源
        rrpItem.setStatus("0");
        rrpItem.setType("1");
        List<RrpItem> list = rrpItemService.selectRrpItemList(rrpItem);
        return getDataTable(list);
    }

    /**
     * 导出资源信息列表
     */
    @PreAuthorize("@ss.hasPermi('item:item:export')")
    @Log(title = "资源信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, RrpItem rrpItem)
    {
        List<RrpItem> list = rrpItemService.selectRrpItemList(rrpItem);
        ExcelUtil<RrpItem> util = new ExcelUtil<RrpItem>(RrpItem.class);
        util.exportExcel(response, list, "资源信息数据");
    }

    /**
     * 获取资源信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('item:item:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(rrpItemService.selectRrpItemById(id));
    }

    /**
     * 新增资源信息
     */
    @PreAuthorize("@ss.hasPermi('item:item:add')")
    @Log(title = "资源信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody RrpItem rrpItem)
    {
        // 自动设置当前用户ID（如果前端没有传）
        if (rrpItem.getUserId() == null) {
            rrpItem.setUserId(getUserId());
        }
        return toAjax(rrpItemService.insertRrpItem(rrpItem));
    }

    /**
     * 修改资源信息
     */
    @PreAuthorize("@ss.hasPermi('item:item:edit')")
    @Log(title = "资源信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody RrpItem rrpItem)
    {
        return toAjax(rrpItemService.updateRrpItem(rrpItem));
    }

    /**
     * 删除资源信息
     */
    @PreAuthorize("@ss.hasPermi('item:item:remove')")
    @Log(title = "资源信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(rrpItemService.deleteRrpItemByIds(ids));
    }
}
