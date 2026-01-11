package com.ruoyi.order.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订单对象 rrp_order
 * 
 * @author ruoyi
 * @date 2026-01-10
 */
public class RrpOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单ID */
    private Long id;

    /** 订单号 */
    @Excel(name = "订单号")
    private String orderNo;

    /** 物品ID */
    @Excel(name = "物品ID")
    private Long itemId;

    /** 物品名称快照 */
    @Excel(name = "物品名称快照")
    private String itemName;

    /** 卖家ID(发布人) */
    @Excel(name = "卖家ID(发布人)")
    private Long sellerId;

    /** 买家ID(用户或管理员) */
    @Excel(name = "买家ID(用户或管理员)")
    private Long buyerId;

    /** 交易金额 */
    @Excel(name = "交易金额")
    private BigDecimal amount;

    /** 状态（0=进行中, 1=已完成） */
    @Excel(name = "状态", readConverterExp = "0==进行中,,1==已完成")
    private String status;

    /** 身份（1=买家, 2=卖家, 3=官方回收, 4=其它） */
    @Excel(name = "状态", readConverterExp = "1==买家,,2==卖家,,3==官方回收,,4==其它")
    private String identity;

    /** 卖家昵称（关联查询） */
    private String sellerNickName;

    /** 买家昵称（关联查询） */
    private String buyerNickName;

    /** 物品类型（关联查询，1=共享出售, 2=官方回收） */
    private String itemType;

    /** 请求参数：当前查询用户的ID（非数据库字段） */
    private Long currentUserId;

    public Long getCurrentUserId() {
        return currentUserId;
    }

    public void setCurrentUserId(Long currentUserId) {
        this.currentUserId = currentUserId;
    }
    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setOrderNo(String orderNo) 
    {
        this.orderNo = orderNo;
    }

    public String getOrderNo() 
    {
        return orderNo;
    }

    public void setItemId(Long itemId) 
    {
        this.itemId = itemId;
    }

    public Long getItemId() 
    {
        return itemId;
    }

    public void setItemName(String itemName) 
    {
        this.itemName = itemName;
    }

    public String getItemName() 
    {
        return itemName;
    }

    public void setSellerId(Long sellerId) 
    {
        this.sellerId = sellerId;
    }

    public Long getSellerId() 
    {
        return sellerId;
    }

    public void setBuyerId(Long buyerId) 
    {
        this.buyerId = buyerId;
    }

    public Long getBuyerId() 
    {
        return buyerId;
    }

    public void setAmount(BigDecimal amount) 
    {
        this.amount = amount;
    }

    public BigDecimal getAmount() 
    {
        return amount;
    }

    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    public void setSellerNickName(String sellerNickName)
    {
        this.sellerNickName = sellerNickName;
    }

    public String getSellerNickName()
    {
        return sellerNickName;
    }

    public void setBuyerNickName(String buyerNickName)
    {
        this.buyerNickName = buyerNickName;
    }

    public String getBuyerNickName()
    {
        return buyerNickName;
    }

    public void setItemType(String itemType)
    {
        this.itemType = itemType;
    }

    public String getItemType()
    {
        return itemType;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderNo", getOrderNo())
            .append("itemId", getItemId())
            .append("itemName", getItemName())
            .append("sellerId", getSellerId())
            .append("buyerId", getBuyerId())
            .append("amount", getAmount())
            .append("status", getStatus())
            .append("sellerNickName", getSellerNickName())
            .append("buyerNickName", getBuyerNickName())
            .append("itemType", getItemType())
            .append("createTime", getCreateTime())
            .toString();
    }
}
