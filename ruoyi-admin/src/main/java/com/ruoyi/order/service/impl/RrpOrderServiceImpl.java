package com.ruoyi.order.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.uuid.Seq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.order.mapper.RrpOrderMapper;
import com.ruoyi.order.domain.RrpOrder;
import com.ruoyi.order.service.IRrpOrderService;
import com.ruoyi.item.domain.RrpItem;
import com.ruoyi.item.service.IRrpItemService;

/**
 * 订单Service业务层处理
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
@Service
public class RrpOrderServiceImpl implements IRrpOrderService 
{
    @Autowired
    private RrpOrderMapper rrpOrderMapper;
    
    @Autowired
    private IRrpItemService rrpItemService;

    /**
     * 查询订单
     * 
     * @param id 订单主键
     * @return 订单
     */
    @Override
    public RrpOrder selectRrpOrderById(Long id)
    {
        return rrpOrderMapper.selectRrpOrderById(id);
    }

    /**
     * 查询订单列表
     * 
     * @param rrpOrder 订单
     * @return 订单
     */
    @Override
    public List<RrpOrder> selectRrpOrderList(RrpOrder rrpOrder)
    {
        return rrpOrderMapper.selectRrpOrderList(rrpOrder);
    }

    /**
     * 新增订单
     * 
     * @param rrpOrder 订单
     * @return 结果
     */
    @Override
    public int insertRrpOrder(RrpOrder rrpOrder)
    {
        rrpOrder.setCreateTime(DateUtils.getNowDate());
        return rrpOrderMapper.insertRrpOrder(rrpOrder);
    }

    /**
     * 修改订单
     * 
     * @param rrpOrder 订单
     * @return 结果
     */
    @Override
    public int updateRrpOrder(RrpOrder rrpOrder)
    {
        return rrpOrderMapper.updateRrpOrder(rrpOrder);
    }

    /**
     * 批量删除订单
     * 
     * @param ids 需要删除的订单主键
     * @return 结果
     */
    @Override
    public int deleteRrpOrderByIds(Long[] ids)
    {
        return rrpOrderMapper.deleteRrpOrderByIds(ids);
    }

    /**
     * 删除订单信息
     * 
     * @param id 订单主键
     * @return 结果
     */
    @Override
    public int deleteRrpOrderById(Long id)
    {
        return rrpOrderMapper.deleteRrpOrderById(id);
    }

    /**
     * 购买资源（用户购买共享资源）
     * 
     * @param rrpOrder 订单信息（包含itemId）
     * @param buyerId 买家ID
     * @return 结果
     */
    @Override
    @Transactional
    public int purchaseItem(RrpOrder rrpOrder, Long buyerId)
    {
        // 获取物品信息
        RrpItem item = rrpItemService.selectRrpItemById(rrpOrder.getItemId());
        if (item == null) {
            throw new RuntimeException("物品不存在");
        }
        
        // 检查物品状态（必须是上架状态且是共享出售类型）
        if (!"0".equals(item.getStatus())) {
            throw new RuntimeException("物品已下架或已售出");
        }
        if (!"1".equals(item.getType())) {
            throw new RuntimeException("该物品不是共享出售类型");
        }
        
        // 检查不能购买自己发布的物品
        if (buyerId.equals(item.getUserId())) {
            throw new RuntimeException("不能购买自己发布的物品");
        }
        
        // 创建订单
        RrpOrder order = new RrpOrder();
        order.setOrderNo("ORD" + Seq.getId());
        order.setItemId(item.getId());
        order.setItemName(item.getName());
        order.setSellerId(item.getUserId());
        order.setBuyerId(buyerId);
        order.setAmount(item.getPrice());
        order.setStatus("0"); // 0=进行中
        
        int result = insertRrpOrder(order);
        
        // 更新物品状态为已售出
        if (result > 0) {
            item.setStatus("1"); // 1=已售出
            rrpItemService.updateRrpItem(item);
        }
        
        return result;
    }

    /**
     * 确认收货
     * 
     * @param id 订单ID
     * @return 结果
     */
    @Override
    @Transactional
    public int confirmReceive(Long id)
    {
        RrpOrder order = rrpOrderMapper.selectRrpOrderById(id);
        if (order == null) {
            throw new RuntimeException("订单不存在");
        }
        
        // 检查订单状态，只有进行中的订单才能确认收货
        if (!"0".equals(order.getStatus())) {
            throw new RuntimeException("订单状态不正确，无法确认收货");
        }
        
        // 更新订单状态为已完成
        order.setStatus("1");
        int result = rrpOrderMapper.updateRrpOrder(order);

        RrpItem item = rrpItemService.selectRrpItemById(order.getItemId());
        item.setStatus("1"); // 1=已完成
        rrpItemService.updateRrpItem(item);
        
        return result;
    }
}
