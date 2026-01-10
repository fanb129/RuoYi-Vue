package com.ruoyi.category.service;

import java.util.List;
import com.ruoyi.category.domain.RrpCategory;

/**
 * 资源分类Service接口
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
public interface IRrpCategoryService 
{
    /**
     * 查询资源分类
     * 
     * @param id 资源分类主键
     * @return 资源分类
     */
    public RrpCategory selectRrpCategoryById(Long id);

    /**
     * 查询资源分类列表
     * 
     * @param rrpCategory 资源分类
     * @return 资源分类集合
     */
    public List<RrpCategory> selectRrpCategoryList(RrpCategory rrpCategory);

    /**
     * 新增资源分类
     * 
     * @param rrpCategory 资源分类
     * @return 结果
     */
    public int insertRrpCategory(RrpCategory rrpCategory);

    /**
     * 修改资源分类
     * 
     * @param rrpCategory 资源分类
     * @return 结果
     */
    public int updateRrpCategory(RrpCategory rrpCategory);

    /**
     * 批量删除资源分类
     * 
     * @param ids 需要删除的资源分类主键集合
     * @return 结果
     */
    public int deleteRrpCategoryByIds(Long[] ids);

    /**
     * 删除资源分类信息
     * 
     * @param id 资源分类主键
     * @return 结果
     */
    public int deleteRrpCategoryById(Long id);
}
