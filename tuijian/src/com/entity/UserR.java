package com.entity;

import java.util.Arrays;

/**
 * @Auther: truedei
 * @Date: 2020 /20-6-13 22:53
 * @Description:
 */
public class UserR {

    private String userName;

    private Integer userId;

    private Integer[] ProductIds;

    private Double cos_th;

    public Double getCos_th() {
        return cos_th;
    }

    public void setCos_th(Double cos_th) {
        this.cos_th = cos_th;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer[] getProductIds() {
        return ProductIds;
    }

    public void setProductIds(Integer[] productIds) {
        ProductIds = productIds;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "UserR{" +
                "userName='" + userName + '\'' +
                ", userId=" + userId +
                ", ProductIds=" + Arrays.toString(ProductIds) +
                ", cos_th=" + cos_th +
                '}';
    }
}
