package com.ganwei.demo.entity;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * ✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈
 * 创建时间： 2018/11/7 15:18
 * Talk is cheap , show me the code
 * 作者:  HanJiaXuan & 18735123416@163.com
 * 方法说明：
 * (1){@link #
 * ✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈
 */
public class Result<T> implements Serializable {

    private static final String CODE = "code";
    private static final String MSG = "msg";
    private static final long serialVersionUID = 2633283546876721434L;

    private Integer code=200;
    private String msg="操作成功";
    private String description;
    private T data;

    private HashMap<String,Object> map;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public Result setData(T data) {
        this.data = data;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public HashMap<String, Object> getMap() {
        return map;
    }

    public void setMap(HashMap<String, Object> map) {
        this.map = map;
    }

    public Result() {
        map = new HashMap<>();
    }

    public static Result failure(int code, String msg) {
        Result result = new Result();
        result.setCode(code);
        result.setMsg(msg);
        return result;
    }

    public static Result ok(String msg) {
        Result result = new Result();
        result.put("msg", msg);
        return result;
    }

    public static Result ok(Map<String, Object> map) {
        Result result = new Result();
        result.map.putAll(map);
        return result;
    }

    public static Result ok() {
        return new Result();
    }

    public Result put(String key, Object value) {
        map.put(key, value);
        return this;
    }
}
