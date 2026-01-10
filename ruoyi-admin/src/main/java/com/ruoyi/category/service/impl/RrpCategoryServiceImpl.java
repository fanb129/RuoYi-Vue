package com.ruoyi.category.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.category.mapper.RrpCategoryMapper;
import com.ruoyi.category.domain.RrpCategory;
import com.ruoyi.category.service.IRrpCategoryService;

/**
 * 资源分类Service业务层处理
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
@Service
public class RrpCategoryServiceImpl implements IRrpCategoryService 
{
    @Autowired
    private RrpCategoryMapper rrpCategoryMapper;

    /**
     * 查询资源分类
     * 
     * @param id 资源分类主键
     * @return 资源分类
     */
    @Override
    public RrpCategory selectRrpCategoryById(Long id)
    {
        return rrpCategoryMapper.selectRrpCategoryById(id);
    }

    /**
     * 查询资源分类列表
     * 
     * @param rrpCategory 资源分类
     * @return 资源分类
     */
    @Override
    public List<RrpCategory> selectRrpCategoryList(RrpCategory rrpCategory)
    {
        return rrpCategoryMapper.selectRrpCategoryList(rrpCategory);
    }

    /**
     * 新增资源分类
     * 
     * @param rrpCategory 资源分类
     * @return 结果
     */
    @Override
    public int insertRrpCategory(RrpCategory rrpCategory)
    {
        return rrpCategoryMapper.insertRrpCategory(rrpCategory);
    }

    /**
     * 修改资源分类
     * 
     * @param rrpCategory 资源分类
     * @return 结果
     */
    @Override
    public int updateRrpCategory(RrpCategory rrpCategory)
    {
        return rrpCategoryMapper.updateRrpCategory(rrpCategory);
    }

    /**
     * 批量删除资源分类
     * 
     * @param ids 需要删除的资源分类主键
     * @return 结果
     */
    @Override
    public int deleteRrpCategoryByIds(Long[] ids)
    {
        return rrpCategoryMapper.deleteRrpCategoryByIds(ids);
    }

    /**
     * 删除资源分类信息
     * 
     * @param id 资源分类主键
     * @return 结果
     */
    @Override
    public int deleteRrpCategoryById(Long id)
    {
        return rrpCategoryMapper.deleteRrpCategoryById(id);
    }
}
