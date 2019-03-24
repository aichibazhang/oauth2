package com.ganwei.demo.entity;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: Mr.Yangxiufeng
 * Date: 2018-05-10
 * Time: 21:03
 */
@Data
public class RoleVo implements Serializable {
    private static final long serialVersionUID = 2179037393108205286L;
    private Integer id;

    private String name;

    private String value;

    private Timestamp createTime;


}
