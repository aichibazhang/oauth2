package com.ganwei.demo.service.impl;

import com.ganwei.demo.entity.MenuVo;
import com.ganwei.demo.mapper.RcMenuMapper;
import com.ganwei.demo.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class PermissionServiceImpl implements PermissionService {
    @Autowired
    private RcMenuMapper menuMapper;
    @Override
    public List<MenuVo> getPermissionsByRoleId(Integer roleId) {
        return menuMapper.getPermissionsByRoleId(roleId);
    }
}
