package com.ruoyi.order.service;

import java.util.List;
import com.ruoyi.order.domain.RrpOrder;

/**
 * 订单Service接口
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
public interface IRrpOrderService 
{
    /**
     * 查询订单
     * 
     * @param id 订单主键
     * @return 订单
     */
    public RrpOrder selectRrpOrderById(Long id);

    /**
     * 查询订单列表
     * 
     * @param rrpOrder 订单
     * @return 订单集合
     */
    public List<RrpOrder> selectRrpOrderList(RrpOrder rrpOrder);

    /**
     * 新增订单
     * 
     * @param rrpOrder 订单
     * @return 结果
     */
    public int insertRrpOrder(RrpOrder rrpOrder);

    /**
     * 修改订单
     * 
     * @param rrpOrder 订单
     * @return 结果
     */
    public int updateRrpOrder(RrpOrder rrpOrder);

    /**
     * 批量删除订单
     * 
     * @param ids 需要删除的订单主键集合
     * @return 结果
     */
    public int deleteRrpOrderByIds(Long[] ids);

    /**
     * 删除订单信息
     * 
     * @param id 订单主键
     * @return 结果
     */
    public int deleteRrpOrderById(Long id);

    /**
     * 购买资源（用户购买共享资源）
     * 
     * @param rrpOrder 订单信息（包含itemId）
     * @param buyerId 买家ID
     * @return 结果
     */
    public int purchaseItem(RrpOrder rrpOrder, Long buyerId);

    /**
     * 确认收货
     * 
     * @param id 订单ID
     * @return 结果
     */
    public int confirmReceive(Long id);
}
