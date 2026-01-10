package com.ruoyi.item.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.uuid.Seq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.item.mapper.RrpItemMapper;
import com.ruoyi.item.domain.RrpItem;
import com.ruoyi.item.service.IRrpItemService;
import com.ruoyi.order.domain.RrpOrder;
import com.ruoyi.order.service.IRrpOrderService;

/**
 * 资源信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
@Service
public class RrpItemServiceImpl implements IRrpItemService 
{
    @Autowired
    private RrpItemMapper rrpItemMapper;
    
    @Autowired
    private IRrpOrderService rrpOrderService;

    /**
     * 查询资源信息
     * 
     * @param id 资源信息主键
     * @return 资源信息
     */
    @Override
    public RrpItem selectRrpItemById(Long id)
    {
        return rrpItemMapper.selectRrpItemById(id);
    }

    /**
     * 查询资源信息列表
     * 
     * @param rrpItem 资源信息
     * @return 资源信息
     */
    @Override
    public List<RrpItem> selectRrpItemList(RrpItem rrpItem)
    {
        return rrpItemMapper.selectRrpItemList(rrpItem);
    }

    /**
     * 新增资源信息
     * 
     * @param rrpItem 资源信息
     * @return 结果
     */
    @Override
    @Transactional
    public int insertRrpItem(RrpItem rrpItem)
    {
        // 自动设置当前用户ID
        if (rrpItem.getUserId() == null) {
            rrpItem.setUserId(SecurityUtils.getUserId());
        }
        
        // 根据处理方式自动设置状态
        // type: 1=共享出售, 2=官方回收
        // status: 0=上架/待审核, 1=已售出/已回收, 2=已下架
        if (rrpItem.getStatus() == null || rrpItem.getStatus().isEmpty()) {
            if ("1".equals(rrpItem.getType())) {
                // 共享出售：状态为上架
                rrpItem.setStatus("0");
            } else if ("2".equals(rrpItem.getType())) {
                // 官方回收：状态为待回收（待审核）
                rrpItem.setStatus("0");
            }
        }
        
        rrpItem.setCreateTime(DateUtils.getNowDate());
        int result = rrpItemMapper.insertRrpItem(rrpItem);
        
        // 如果是官方回收，自动生成订单
        if ("2".equals(rrpItem.getType()) && result > 0) {
            RrpOrder order = new RrpOrder();
            order.setOrderNo("ORD" + Seq.getId());
            order.setItemId(rrpItem.getId());
            order.setItemName(rrpItem.getName());
            order.setSellerId(rrpItem.getUserId());
            // 官方回收时，buyerId暂时为空，等待管理员处理
            order.setBuyerId(null);
            order.setAmount(rrpItem.getPrice());
            order.setStatus("0"); // 0=进行中
            rrpOrderService.insertRrpOrder(order);
        }
        
        return result;
    }

    /**
     * 修改资源信息
     * 
     * @param rrpItem 资源信息
     * @return 结果
     */
    @Override
    @Transactional
    public int updateRrpItem(RrpItem rrpItem)
    {
        // 获取原商品信息
        RrpItem oldItem = rrpItemMapper.selectRrpItemById(rrpItem.getId());
        
        // 如果前端没有传status，或者status为空，则根据类型自动设置
        if (rrpItem.getStatus() == null || rrpItem.getStatus().isEmpty()) {
            if (oldItem != null) {
                // 如果原状态是已售出或已回收（status=1），保持原状态不变
                // 因为已售出/已回收的商品不应该再改变状态
                if ("1".equals(oldItem.getStatus())) {
                    rrpItem.setStatus("1");
                } else {
                    // 否则根据新类型设置状态（上架或待回收）
                    if ("1".equals(rrpItem.getType())) {
                        // 共享出售：状态为上架
                        rrpItem.setStatus("0");
                    } else if ("2".equals(rrpItem.getType())) {
                        // 官方回收：状态为待回收（待审核）
                        rrpItem.setStatus("0");
                    } else {
                        // 如果类型也为空，保持原状态
                        rrpItem.setStatus(oldItem.getStatus());
                    }
                }
            } else {
                // 如果找不到原商品，根据类型设置默认状态
                if ("1".equals(rrpItem.getType())) {
                    rrpItem.setStatus("0");
                } else if ("2".equals(rrpItem.getType())) {
                    rrpItem.setStatus("0");
                }
            }
        }
        return rrpItemMapper.updateRrpItem(rrpItem);
    }

    /**
     * 批量删除资源信息
     * 
     * @param ids 需要删除的资源信息主键
     * @return 结果
     */
    @Override
    public int deleteRrpItemByIds(Long[] ids)
    {
        return rrpItemMapper.deleteRrpItemByIds(ids);
    }

    /**
     * 删除资源信息信息
     * 
     * @param id 资源信息主键
     * @return 结果
     */
    @Override
    public int deleteRrpItemById(Long id)
    {
        return rrpItemMapper.deleteRrpItemById(id);
    }
}
