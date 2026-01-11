package com.ruoyi.order.controller;

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
import com.ruoyi.order.domain.RrpOrder;
import com.ruoyi.order.service.IRrpOrderService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 订单Controller
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
@RestController
@RequestMapping("/order/order")
public class RrpOrderController extends BaseController
{
    @Autowired
    private IRrpOrderService rrpOrderService;

    /**
     * 查询订单列表
     */
    @PreAuthorize("@ss.hasPermi('order:order:list')")
    @GetMapping("/list")
    public TableDataInfo list(RrpOrder rrpOrder)
    {
        startPage();
        List<RrpOrder> list = rrpOrderService.selectRrpOrderList(rrpOrder);
        return getDataTable(list);
    }
    /**
     * 查询我买到的订单列表
     */
    @PreAuthorize("@ss.hasPermi('order:buyer:list')")
    @GetMapping("/listBuyer")
    public TableDataInfo listBuyer(RrpOrder rrpOrder)
    {
        rrpOrder.setBuyerId(getUserId());
        startPage();
        List<RrpOrder> list = rrpOrderService.selectRrpOrderList(rrpOrder);
        return getDataTable(list);
    }
    /**
     * 查询我卖出的订单列表
     */
    @PreAuthorize("@ss.hasPermi('order:seller:list')")
    @GetMapping("/listSeller")
    public TableDataInfo listSeller(RrpOrder rrpOrder)
    {
        rrpOrder.setSellerId(getUserId());
        startPage();
        List<RrpOrder> list = rrpOrderService.selectRrpOrderList(rrpOrder);
        return getDataTable(list);
    }

    /**
     * 查询我回收订单列表
     */
    @PreAuthorize("@ss.hasPermi('order:recycle:list')")
    @GetMapping("/listAdmin")
    public TableDataInfo listAdmin(RrpOrder rrpOrder)
    {
        rrpOrder.setItemType("2");
        startPage();
        List<RrpOrder> list = rrpOrderService.selectRrpOrderList(rrpOrder);
        return getDataTable(list);
    }

    /**
     * 导出订单列表
     */
    @PreAuthorize("@ss.hasPermi('order:order:export')")
    @Log(title = "订单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, RrpOrder rrpOrder)
    {
        List<RrpOrder> list = rrpOrderService.selectRrpOrderList(rrpOrder);
        ExcelUtil<RrpOrder> util = new ExcelUtil<RrpOrder>(RrpOrder.class);
        util.exportExcel(response, list, "订单数据");
    }

    /**
     * 获取订单详细信息
     */
    @PreAuthorize("@ss.hasPermi('order:order:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(rrpOrderService.selectRrpOrderById(id));
    }

    /**
     * 新增订单
     */
    @PreAuthorize("@ss.hasPermi('order:order:add')")
    @Log(title = "订单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody RrpOrder rrpOrder)
    {
        return toAjax(rrpOrderService.insertRrpOrder(rrpOrder));
    }

    /**
     * 修改订单
     */
    @PreAuthorize("@ss.hasPermi('order:order:edit')")
    @Log(title = "订单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody RrpOrder rrpOrder)
    {
        return toAjax(rrpOrderService.updateRrpOrder(rrpOrder));
    }

    /**
     * 删除订单
     */
    @PreAuthorize("@ss.hasPermi('order:order:remove')")
    @Log(title = "订单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(rrpOrderService.deleteRrpOrderByIds(ids));
    }

    /**
     * 购买资源（用户购买共享资源）
     */
    @PreAuthorize("@ss.hasPermi('order:order:add')")
    @Log(title = "购买资源", businessType = BusinessType.INSERT)
    @PostMapping("/purchase")
    public AjaxResult purchase(@RequestBody RrpOrder rrpOrder)
    {
        return toAjax(rrpOrderService.purchaseItem(rrpOrder, getUserId()));
    }

    /**
     * 确认收货
     */
    @PreAuthorize("@ss.hasPermi('order:order:edit')")
    @Log(title = "确认收货", businessType = BusinessType.UPDATE)
    @PutMapping("/confirm/{id}")
    public AjaxResult confirmReceive(@PathVariable("id") Long id)
    {
        return toAjax(rrpOrderService.confirmReceive(id));
    }
}
