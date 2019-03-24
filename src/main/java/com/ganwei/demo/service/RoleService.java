package com.ganwei.demo.service;

import com.ganwei.demo.entity.RoleVo;

import java.util.List;


public interface RoleService {
    List<RoleVo> getRoleByUserId(Integer userId);
}
