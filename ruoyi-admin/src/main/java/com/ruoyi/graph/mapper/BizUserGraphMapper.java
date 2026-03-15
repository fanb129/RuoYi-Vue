package com.ruoyi.graph.mapper;

import java.util.List;
import com.ruoyi.graph.domain.BizUserGraph;

/**
 * 我的图库Mapper接口
 * 
 * @author ruoyi
 * @date 2026-03-09
 */
public interface BizUserGraphMapper 
{
    /**
     * 查询我的图库
     * 
     * @param graphId 我的图库主键
     * @return 我的图库
     */
    public BizUserGraph selectBizUserGraphByGraphId(Long graphId);

    /**
     * 查询我的图库列表
     * 
     * @param bizUserGraph 我的图库
     * @return 我的图库集合
     */
    public List<BizUserGraph> selectBizUserGraphList(BizUserGraph bizUserGraph);

    /**
     * 新增我的图库
     * 
     * @param bizUserGraph 我的图库
     * @return 结果
     */
    public int insertBizUserGraph(BizUserGraph bizUserGraph);

    /**
     * 修改我的图库
     * 
     * @param bizUserGraph 我的图库
     * @return 结果
     */
    public int updateBizUserGraph(BizUserGraph bizUserGraph);

    /**
     * 删除我的图库
     * 
     * @param graphId 我的图库主键
     * @return 结果
     */
    public int deleteBizUserGraphByGraphId(Long graphId);

    /**
     * 批量删除我的图库
     * 
     * @param graphIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteBizUserGraphByGraphIds(Long[] graphIds);
}
