package com.ruoyi.item.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 资源信息对象 rrp_item
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
public class RrpItem extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 物品ID */
    private Long id;

    /** 物品名称 */
    @Excel(name = "物品名称")
    private String name;

    /** 分类ID */
    @Excel(name = "分类ID")
    private Long categoryId;

    /** 价格 */
    @Excel(name = "价格")
    private BigDecimal price;

    /** 描述 */
    @Excel(name = "描述")
    private String description;

    /** 图片 */
    @Excel(name = "图片")
    private String image;

    /** 类型（1=二手共享, 2=官方回收） */
    @Excel(name = "类型", readConverterExp = "1==二手共享,,2==官方回收")
    private String type;

    /** 状态（0=上架/待审, 1=已出/回收） */
    @Excel(name = "状态", readConverterExp = "0==上架/待审,,1==已出/回收")
    private String status;

    /** 发布人ID */
    @Excel(name = "发布人ID")
    private Long userId;

    /** 分类名称（关联查询） */
    private String categoryName;

    /** 发布人昵称（关联查询） */
    private String userNickName;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }

    public void setCategoryId(Long categoryId) 
    {
        this.categoryId = categoryId;
    }

    public Long getCategoryId() 
    {
        return categoryId;
    }

    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }

    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }

    public void setImage(String image) 
    {
        this.image = image;
    }

    public String getImage() 
    {
        return image;
    }

    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }

    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }

    public void setCategoryName(String categoryName)
    {
        this.categoryName = categoryName;
    }

    public String getCategoryName()
    {
        return categoryName;
    }

    public void setUserNickName(String userNickName)
    {
        this.userNickName = userNickName;
    }

    public String getUserNickName()
    {
        return userNickName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("categoryId", getCategoryId())
            .append("price", getPrice())
            .append("description", getDescription())
            .append("image", getImage())
            .append("type", getType())
            .append("status", getStatus())
            .append("userId", getUserId())
            .append("categoryName", getCategoryName())
            .append("userNickName", getUserNickName())
            .append("createTime", getCreateTime())
            .toString();
    }
}
