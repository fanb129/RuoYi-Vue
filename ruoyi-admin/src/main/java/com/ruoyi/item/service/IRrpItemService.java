package com.ruoyi.item.service;

import java.util.List;
import com.ruoyi.item.domain.RrpItem;

/**
 * 资源信息Service接口
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
public interface IRrpItemService 
{
    /**
     * 查询资源信息
     * 
     * @param id 资源信息主键
     * @return 资源信息
     */
    public RrpItem selectRrpItemById(Long id);

    /**
     * 查询资源信息列表
     * 
     * @param rrpItem 资源信息
     * @return 资源信息集合
     */
    public List<RrpItem> selectRrpItemList(RrpItem rrpItem);

    /**
     * 新增资源信息
     * 
     * @param rrpItem 资源信息
     * @return 结果
     */
    public int insertRrpItem(RrpItem rrpItem);

    /**
     * 修改资源信息
     * 
     * @param rrpItem 资源信息
     * @return 结果
     */
    public int updateRrpItem(RrpItem rrpItem);

    /**
     * 批量删除资源信息
     * 
     * @param ids 需要删除的资源信息主键集合
     * @return 结果
     */
    public int deleteRrpItemByIds(Long[] ids);

    /**
     * 删除资源信息信息
     * 
     * @param id 资源信息主键
     * @return 结果
     */
    public int deleteRrpItemById(Long id);
}
