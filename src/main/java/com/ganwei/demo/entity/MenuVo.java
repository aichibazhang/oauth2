package com.ganwei.demo.entity;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class MenuVo {
    private String restId;
    private String code;
    private String url;
    private String des;
    private Timestamp createTime;
    private String createBy;

}
