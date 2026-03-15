package com.ruoyi.teaching.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 教学案例库对象 biz_teaching_case
 * 
 * @author ruoyi
 * @date 2026-03-10
 */
public class BizTeachingCase extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 案例ID主键 */
    private Long caseId;

    /** 教学案例名称 */
    @Excel(name = "教学案例名称")
    private String caseName;

    /** 案例分类(如:二分图,网络拓扑等) */
    @Excel(name = "案例分类(如:二分图,网络拓扑等)")
    private String caseType;

    /** 图JSON结构数据 */
    @Excel(name = "图JSON结构数据")
    private String graphData;

    /** 节点数量 */
    @Excel(name = "节点数量")
    private Long nodeCount;

    /** 边数量 */
    @Excel(name = "边数量")
    private Long edgeCount;

    public void setCaseId(Long caseId) 
    {
        this.caseId = caseId;
    }

    public Long getCaseId() 
    {
        return caseId;
    }

    public void setCaseName(String caseName) 
    {
        this.caseName = caseName;
    }

    public String getCaseName() 
    {
        return caseName;
    }

    public void setCaseType(String caseType) 
    {
        this.caseType = caseType;
    }

    public String getCaseType() 
    {
        return caseType;
    }

    public void setGraphData(String graphData) 
    {
        this.graphData = graphData;
    }

    public String getGraphData() 
    {
        return graphData;
    }

    public void setNodeCount(Long nodeCount) 
    {
        this.nodeCount = nodeCount;
    }

    public Long getNodeCount() 
    {
        return nodeCount;
    }

    public void setEdgeCount(Long edgeCount) 
    {
        this.edgeCount = edgeCount;
    }

    public Long getEdgeCount() 
    {
        return edgeCount;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("caseId", getCaseId())
            .append("caseName", getCaseName())
            .append("caseType", getCaseType())
            .append("graphData", getGraphData())
            .append("nodeCount", getNodeCount())
            .append("edgeCount", getEdgeCount())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
