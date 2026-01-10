package com.ruoyi.category.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.ruoyi.category.domain.RrpCategory;
import com.ruoyi.category.service.IRrpCategoryService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 资源分类Controller
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
@RestController
@RequestMapping("/category/category")
public class RrpCategoryController extends BaseController
{
    @Autowired
    private IRrpCategoryService rrpCategoryService;

    /**
     * 查询资源分类列表
     */
//    @PreAuthorize("@ss.hasPermi('category:category:list')")
    @GetMapping("/list")
    public TableDataInfo list(RrpCategory rrpCategory)
    {
        startPage();
        List<RrpCategory> list = rrpCategoryService.selectRrpCategoryList(rrpCategory);
        return getDataTable(list);
    }

    /**
     * 导出资源分类列表
     */
    @PreAuthorize("@ss.hasPermi('category:category:export')")
    @Log(title = "资源分类", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, RrpCategory rrpCategory)
    {
        List<RrpCategory> list = rrpCategoryService.selectRrpCategoryList(rrpCategory);
        ExcelUtil<RrpCategory> util = new ExcelUtil<RrpCategory>(RrpCategory.class);
        util.exportExcel(response, list, "资源分类数据");
    }

    /**
     * 获取资源分类详细信息
     */
    @PreAuthorize("@ss.hasPermi('category:category:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(rrpCategoryService.selectRrpCategoryById(id));
    }

    /**
     * 新增资源分类
     */
    @PreAuthorize("@ss.hasPermi('category:category:add')")
    @Log(title = "资源分类", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody RrpCategory rrpCategory)
    {
        return toAjax(rrpCategoryService.insertRrpCategory(rrpCategory));
    }

    /**
     * 修改资源分类
     */
    @PreAuthorize("@ss.hasPermi('category:category:edit')")
    @Log(title = "资源分类", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody RrpCategory rrpCategory)
    {
        return toAjax(rrpCategoryService.updateRrpCategory(rrpCategory));
    }

    /**
     * 删除资源分类
     */
    @PreAuthorize("@ss.hasPermi('category:category:remove')")
    @Log(title = "资源分类", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(rrpCategoryService.deleteRrpCategoryByIds(ids));
    }
}
