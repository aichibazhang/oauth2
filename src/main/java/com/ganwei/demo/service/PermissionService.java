package com.ganwei.demo.service;


import com.ganwei.demo.entity.MenuVo;

import java.util.List;


public interface PermissionService {
    List<MenuVo> getPermissionsByRoleId(Integer roleId);
}
