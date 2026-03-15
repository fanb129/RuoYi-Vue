package com.ruoyi.graph.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.graph.mapper.BizUserGraphMapper;
import com.ruoyi.graph.domain.BizUserGraph;
import com.ruoyi.graph.service.IBizUserGraphService;

/**
 * 我的图库Service业务层处理
 * 
 * @author ruoyi
 * @date 2026-03-09
 */
@Service
public class BizUserGraphServiceImpl implements IBizUserGraphService 
{
    @Autowired
    private BizUserGraphMapper bizUserGraphMapper;

    /**
     * 查询我的图库
     * 
     * @param graphId 我的图库主键
     * @return 我的图库
     */
    @Override
    public BizUserGraph selectBizUserGraphByGraphId(Long graphId)
    {
        return bizUserGraphMapper.selectBizUserGraphByGraphId(graphId);
    }

    /**
     * 查询我的图库列表
     * 
     * @param bizUserGraph 我的图库
     * @return 我的图库
     */
    @Override
    public List<BizUserGraph> selectBizUserGraphList(BizUserGraph bizUserGraph)
    {
        return bizUserGraphMapper.selectBizUserGraphList(bizUserGraph);
    }

    /**
     * 新增我的图库
     * 
     * @param bizUserGraph 我的图库
     * @return 结果
     */
    @Override
    public int insertBizUserGraph(BizUserGraph bizUserGraph)
    {
        bizUserGraph.setCreateTime(DateUtils.getNowDate());
        return bizUserGraphMapper.insertBizUserGraph(bizUserGraph);
    }

    /**
     * 修改我的图库
     * 
     * @param bizUserGraph 我的图库
     * @return 结果
     */
    @Override
    public int updateBizUserGraph(BizUserGraph bizUserGraph)
    {
        bizUserGraph.setUpdateTime(DateUtils.getNowDate());
        return bizUserGraphMapper.updateBizUserGraph(bizUserGraph);
    }

    /**
     * 批量删除我的图库
     * 
     * @param graphIds 需要删除的我的图库主键
     * @return 结果
     */
    @Override
    public int deleteBizUserGraphByGraphIds(Long[] graphIds)
    {
        return bizUserGraphMapper.deleteBizUserGraphByGraphIds(graphIds);
    }

    /**
     * 删除我的图库信息
     * 
     * @param graphId 我的图库主键
     * @return 结果
     */
    @Override
    public int deleteBizUserGraphByGraphId(Long graphId)
    {
        return bizUserGraphMapper.deleteBizUserGraphByGraphId(graphId);
    }
}
