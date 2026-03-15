package com.ruoyi.teaching.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.teaching.mapper.BizTeachingCaseMapper;
import com.ruoyi.teaching.domain.BizTeachingCase;
import com.ruoyi.teaching.service.IBizTeachingCaseService;

/**
 * 教学案例库Service业务层处理
 * 
 * @author ruoyi
 * @date 2026-03-10
 */
@Service
public class BizTeachingCaseServiceImpl implements IBizTeachingCaseService 
{
    @Autowired
    private BizTeachingCaseMapper bizTeachingCaseMapper;

    /**
     * 查询教学案例库
     * 
     * @param caseId 教学案例库主键
     * @return 教学案例库
     */
    @Override
    public BizTeachingCase selectBizTeachingCaseByCaseId(Long caseId)
    {
        return bizTeachingCaseMapper.selectBizTeachingCaseByCaseId(caseId);
    }

    /**
     * 查询教学案例库列表
     * 
     * @param bizTeachingCase 教学案例库
     * @return 教学案例库
     */
    @Override
    public List<BizTeachingCase> selectBizTeachingCaseList(BizTeachingCase bizTeachingCase)
    {
        return bizTeachingCaseMapper.selectBizTeachingCaseList(bizTeachingCase);
    }

    /**
     * 新增教学案例库
     * 
     * @param bizTeachingCase 教学案例库
     * @return 结果
     */
    @Override
    public int insertBizTeachingCase(BizTeachingCase bizTeachingCase)
    {
        bizTeachingCase.setCreateTime(DateUtils.getNowDate());
        return bizTeachingCaseMapper.insertBizTeachingCase(bizTeachingCase);
    }

    /**
     * 修改教学案例库
     * 
     * @param bizTeachingCase 教学案例库
     * @return 结果
     */
    @Override
    public int updateBizTeachingCase(BizTeachingCase bizTeachingCase)
    {
        bizTeachingCase.setUpdateTime(DateUtils.getNowDate());
        return bizTeachingCaseMapper.updateBizTeachingCase(bizTeachingCase);
    }

    /**
     * 批量删除教学案例库
     * 
     * @param caseIds 需要删除的教学案例库主键
     * @return 结果
     */
    @Override
    public int deleteBizTeachingCaseByCaseIds(Long[] caseIds)
    {
        return bizTeachingCaseMapper.deleteBizTeachingCaseByCaseIds(caseIds);
    }

    /**
     * 删除教学案例库信息
     * 
     * @param caseId 教学案例库主键
     * @return 结果
     */
    @Override
    public int deleteBizTeachingCaseByCaseId(Long caseId)
    {
        return bizTeachingCaseMapper.deleteBizTeachingCaseByCaseId(caseId);
    }
}
