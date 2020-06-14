package com.entity;

/**
 * @Auther: truedei
 * @Date: 2020 /20-6-13 21:49
 * @Description: 会员信息表
 */
public class MemberUser {

    private Integer user_id;//用户id
    private String user_name;//用户名


    public MemberUser() {

    }

    public MemberUser(Integer user_id, String user_name) {
        this.user_id = user_id;
        this.user_name = user_name;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    @Override
    public String toString() {
        return "MemberUser{" +
                "user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                '}';
    }
}
