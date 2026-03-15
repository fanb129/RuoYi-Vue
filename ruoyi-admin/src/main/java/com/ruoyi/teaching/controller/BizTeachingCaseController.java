package com.ruoyi.teaching.controller;

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
import com.ruoyi.teaching.domain.BizTeachingCase;
import com.ruoyi.teaching.service.IBizTeachingCaseService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 教学案例库Controller
 * 
 * @author ruoyi
 * @date 2026-03-10
 */
@RestController
@RequestMapping("/teaching/teaching")
public class BizTeachingCaseController extends BaseController
{
    @Autowired
    private IBizTeachingCaseService bizTeachingCaseService;

    /**
     * 查询教学案例库列表
     */
    @PreAuthorize("@ss.hasPermi('teaching:teaching:list')")
    @GetMapping("/list")
    public TableDataInfo list(BizTeachingCase bizTeachingCase)
    {
        startPage();
        List<BizTeachingCase> list = bizTeachingCaseService.selectBizTeachingCaseList(bizTeachingCase);
        return getDataTable(list);
    }

    /**
     * 导出教学案例库列表
     */
    @PreAuthorize("@ss.hasPermi('teaching:teaching:export')")
    @Log(title = "教学案例库", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BizTeachingCase bizTeachingCase)
    {
        List<BizTeachingCase> list = bizTeachingCaseService.selectBizTeachingCaseList(bizTeachingCase);
        ExcelUtil<BizTeachingCase> util = new ExcelUtil<BizTeachingCase>(BizTeachingCase.class);
        util.exportExcel(response, list, "教学案例库数据");
    }

    /**
     * 获取教学案例库详细信息
     */
    @PreAuthorize("@ss.hasPermi('teaching:teaching:query')")
    @GetMapping(value = "/{caseId}")
    public AjaxResult getInfo(@PathVariable("caseId") Long caseId)
    {
        return success(bizTeachingCaseService.selectBizTeachingCaseByCaseId(caseId));
    }

    /**
     * 新增教学案例库
     */
    @PreAuthorize("@ss.hasPermi('teaching:teaching:add')")
    @Log(title = "教学案例库", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BizTeachingCase bizTeachingCase)
    {
        return toAjax(bizTeachingCaseService.insertBizTeachingCase(bizTeachingCase));
    }

    /**
     * 修改教学案例库
     */
    @PreAuthorize("@ss.hasPermi('teaching:teaching:edit')")
    @Log(title = "教学案例库", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BizTeachingCase bizTeachingCase)
    {
        return toAjax(bizTeachingCaseService.updateBizTeachingCase(bizTeachingCase));
    }

    /**
     * 删除教学案例库
     */
    @PreAuthorize("@ss.hasPermi('teaching:teaching:remove')")
    @Log(title = "教学案例库", businessType = BusinessType.DELETE)
	@DeleteMapping("/{caseIds}")
    public AjaxResult remove(@PathVariable Long[] caseIds)
    {
        return toAjax(bizTeachingCaseService.deleteBizTeachingCaseByCaseIds(caseIds));
    }
}
