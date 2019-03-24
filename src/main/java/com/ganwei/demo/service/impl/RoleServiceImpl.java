package com.ganwei.demo.service.impl;

import com.ganwei.demo.entity.RoleVo;
import com.ganwei.demo.mapper.RcRoleMapper;
import com.ganwei.demo.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RcRoleMapper roleMapper;

    @Override
    public List<RoleVo> getRoleByUserId(Integer userId) {
        return roleMapper.getRoleByUserId(userId);
    }
}
