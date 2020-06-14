package com.entity;

/**
 * @Auther: truedei
 * @Date: 2020 /20-6-13 21:05
 * @Description:商品记录表
 */
public class ProductTable {

    private Integer productID   ; //商品ID'
    private String product_name; //ll comment '商品名字'
    private Double price       ; //商品金额'
    private Integer volume      ; //成交数量'
    private String shopp_name  ; //ll comment '商店名称'
    private String location    ; //ll comment '生产地'
    private Integer evaluate    ; //好评数量'
    private Integer collect     ; //收藏数量'

    public ProductTable(Integer productID, String product_name, Double price, Integer volume, String shopp_name, String location, Integer evaluate, Integer collect) {
        this.productID = productID;
        this.product_name = product_name;
        this.price = price;
        this.volume = volume;
        this.shopp_name = shopp_name;
        this.location = location;
        this.evaluate = evaluate;
        this.collect = collect;
    }

    public ProductTable() {
    }

    public Integer getProductID() {
        return productID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getVolume() {
        return volume;
    }

    public void setVolume(Integer volume) {
        this.volume = volume;
    }

    public String getShopp_name() {
        return shopp_name;
    }

    public void setShopp_name(String shopp_name) {
        this.shopp_name = shopp_name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Integer getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(Integer evaluate) {
        this.evaluate = evaluate;
    }

    public Integer getCollect() {
        return collect;
    }

    public void setCollect(Integer collect) {
        this.collect = collect;
    }

    @Override
    public String toString() {
        return "ProductTable{" +
                "productID=" + productID +
                ", product_name='" + product_name + '\'' +
                ", price=" + price +
                ", volume=" + volume +
                ", shopp_name='" + shopp_name + '\'' +
                ", location='" + location + '\'' +
                ", evaluate=" + evaluate +
                ", collect=" + collect +
                '}';
    }
}
