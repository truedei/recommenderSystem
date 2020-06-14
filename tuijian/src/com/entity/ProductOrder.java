package com.entity;

/**
 * @Auther: truedei
 * @Date: 2020 /20-6-13 21:53
 * @Description: 商品订单
 */
public class ProductOrder {

    private Integer order_id;//订单id
    private Integer user_id;//所购买的用户id
    private Integer product_id;//商品id
    private Integer gwcount;//购买数量

    public ProductOrder() {
    }

    public ProductOrder(Integer order_id, Integer user_id, Integer product_id, Integer gwcount) {
        this.order_id = order_id;
        this.user_id = user_id;
        this.product_id = product_id;
        this.gwcount = gwcount;
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public Integer getGwcount() {
        return gwcount;
    }

    public void setGwcount(Integer gwcount) {
        this.gwcount = gwcount;
    }

    @Override
    public String toString() {
        return "ProductOrder{" +
                "order_id=" + order_id +
                ", user_id=" + user_id +
                ", product_id=" + product_id +
                ", gwcount=" + gwcount +
                '}';
    }
}
