package com.ganwei.demo.entity;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class UserVo implements Serializable {
    private static final long serialVersionUID = 3881610071550902762L;

    private Integer id;

    private String name;

    private String username;

    private String password;

    private Integer personalId;

    private boolean status;

    private Timestamp createTime;


}
