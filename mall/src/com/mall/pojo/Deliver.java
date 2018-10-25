package com.mall.pojo;

public class Deliver {
    private Integer id;

    private String deliver;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDeliver() {
        return deliver;
    }

    public void setDeliver(String deliver) {
        this.deliver = deliver == null ? null : deliver.trim();
    }
}