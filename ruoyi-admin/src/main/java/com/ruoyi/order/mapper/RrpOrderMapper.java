package com.ruoyi.order.mapper;

import java.util.List;
import com.ruoyi.order.domain.RrpOrder;

/**
 * 订单Mapper接口
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
public interface RrpOrderMapper 
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
     * 删除订单
     * 
     * @param id 订单主键
     * @return 结果
     */
    public int deleteRrpOrderById(Long id);

    /**
     * 批量删除订单
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRrpOrderByIds(Long[] ids);
}
