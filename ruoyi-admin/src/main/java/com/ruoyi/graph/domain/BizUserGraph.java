package com.ruoyi.graph.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 我的图库对象 biz_user_graph
 * 
 * @author ruoyi
 * @date 2026-03-09
 */
public class BizUserGraph extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 图ID主键 */
    private Long graphId;

    /** 图模型名称 */
    @Excel(name = "图模型名称")
    private String graphName;

    /** 图JSON结构数据(存G6导出的节点和边) */
    @Excel(name = "图JSON结构数据(存G6导出的节点和边)")
    private String graphData;

    /** 节点数量(方便列表展示) */
    @Excel(name = "节点数量(方便列表展示)")
    private Long nodeCount;

    /** 边数量(方便列表展示) */
    @Excel(name = "边数量(方便列表展示)")
    private Long edgeCount;

    /** 所属用户ID(关联sys_user表) */
    @Excel(name = "所属用户ID(关联sys_user表)")
    private Long userId;

    public void setGraphId(Long graphId) 
    {
        this.graphId = graphId;
    }

    public Long getGraphId() 
    {
        return graphId;
    }

    public void setGraphName(String graphName) 
    {
        this.graphName = graphName;
    }

    public String getGraphName() 
    {
        return graphName;
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

    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("graphId", getGraphId())
            .append("graphName", getGraphName())
            .append("graphData", getGraphData())
            .append("nodeCount", getNodeCount())
            .append("edgeCount", getEdgeCount())
            .append("userId", getUserId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
