package com.ruoyi.graph.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.utils.SecurityUtils;
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
import com.ruoyi.graph.domain.BizUserGraph;
import com.ruoyi.graph.service.IBizUserGraphService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 我的图库Controller
 * 
 * @author ruoyi
 * @date 2026-03-09
 */
@RestController
@RequestMapping("/graph/graph")
public class BizUserGraphController extends BaseController
{
    @Autowired
    private IBizUserGraphService bizUserGraphService;

    /**
     * 查询我的图库列表
     */
    @PreAuthorize("@ss.hasPermi('graph:graph:list')")
    @GetMapping("/list")
    public TableDataInfo list(BizUserGraph bizUserGraph)
    {
        startPage();
        bizUserGraph.setUserId(SecurityUtils.getUserId());
        List<BizUserGraph> list = bizUserGraphService.selectBizUserGraphList(bizUserGraph);
        return getDataTable(list);
    }

    /**
     * 导出我的图库列表
     */
    @PreAuthorize("@ss.hasPermi('graph:graph:export')")
    @Log(title = "我的图库", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BizUserGraph bizUserGraph)
    {
        List<BizUserGraph> list = bizUserGraphService.selectBizUserGraphList(bizUserGraph);
        ExcelUtil<BizUserGraph> util = new ExcelUtil<BizUserGraph>(BizUserGraph.class);
        util.exportExcel(response, list, "我的图库数据");
    }

    /**
     * 获取我的图库详细信息
     */
    @PreAuthorize("@ss.hasPermi('graph:graph:query')")
    @GetMapping(value = "/{graphId}")
    public AjaxResult getInfo(@PathVariable("graphId") Long graphId)
    {
        return success(bizUserGraphService.selectBizUserGraphByGraphId(graphId));
    }

    /**
     * 新增我的图库
     */
    @PreAuthorize("@ss.hasPermi('graph:graph:add')")
    @Log(title = "我的图库", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BizUserGraph bizUserGraph)
    {
        bizUserGraph.setUserId(SecurityUtils.getUserId());
        return toAjax(bizUserGraphService.insertBizUserGraph(bizUserGraph));
    }

    /**
     * 修改我的图库
     */
    @PreAuthorize("@ss.hasPermi('graph:graph:edit')")
    @Log(title = "我的图库", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BizUserGraph bizUserGraph)
    {
        return toAjax(bizUserGraphService.updateBizUserGraph(bizUserGraph));
    }

    /**
     * 删除我的图库
     */
    @PreAuthorize("@ss.hasPermi('graph:graph:remove')")
    @Log(title = "我的图库", businessType = BusinessType.DELETE)
	@DeleteMapping("/{graphIds}")
    public AjaxResult remove(@PathVariable Long[] graphIds)
    {
        return toAjax(bizUserGraphService.deleteBizUserGraphByGraphIds(graphIds));
    }
}
