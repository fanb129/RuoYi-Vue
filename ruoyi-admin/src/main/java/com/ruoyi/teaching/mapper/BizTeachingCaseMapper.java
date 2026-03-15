package com.ruoyi.teaching.mapper;

import java.util.List;
import com.ruoyi.teaching.domain.BizTeachingCase;

/**
 * 教学案例库Mapper接口
 * 
 * @author ruoyi
 * @date 2026-03-10
 */
public interface BizTeachingCaseMapper 
{
    /**
     * 查询教学案例库
     * 
     * @param caseId 教学案例库主键
     * @return 教学案例库
     */
    public BizTeachingCase selectBizTeachingCaseByCaseId(Long caseId);

    /**
     * 查询教学案例库列表
     * 
     * @param bizTeachingCase 教学案例库
     * @return 教学案例库集合
     */
    public List<BizTeachingCase> selectBizTeachingCaseList(BizTeachingCase bizTeachingCase);

    /**
     * 新增教学案例库
     * 
     * @param bizTeachingCase 教学案例库
     * @return 结果
     */
    public int insertBizTeachingCase(BizTeachingCase bizTeachingCase);

    /**
     * 修改教学案例库
     * 
     * @param bizTeachingCase 教学案例库
     * @return 结果
     */
    public int updateBizTeachingCase(BizTeachingCase bizTeachingCase);

    /**
     * 删除教学案例库
     * 
     * @param caseId 教学案例库主键
     * @return 结果
     */
    public int deleteBizTeachingCaseByCaseId(Long caseId);

    /**
     * 批量删除教学案例库
     * 
     * @param caseIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteBizTeachingCaseByCaseIds(Long[] caseIds);
}
