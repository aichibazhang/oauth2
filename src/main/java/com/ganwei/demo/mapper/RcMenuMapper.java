package com.ganwei.demo.mapper;

import com.ganwei.demo.entity.MenuVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@org.apache.ibatis.annotations.Mapper
public interface RcMenuMapper {
    @Select(value = "SELECT rest.* FROM rest,privilege WHERE privilege.restId = rest.restId AND privilege.roleId=#{roleId}")
    List<MenuVo> getPermissionsByRoleId(@Param("roleId") Integer roleId);
}