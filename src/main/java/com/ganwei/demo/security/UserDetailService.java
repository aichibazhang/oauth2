package com.ganwei.demo.security;

import com.ganwei.demo.entity.MenuVo;
import com.ganwei.demo.entity.RoleVo;
import com.ganwei.demo.entity.UserVo;
import com.ganwei.demo.service.PermissionService;
import com.ganwei.demo.service.RoleService;
import com.ganwei.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


@Component
public class UserDetailService implements UserDetailsService {
    @Resource
    private UserService userService;
    @Resource
    private RoleService roleService;
    @Resource
    private PermissionService permissionService;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserVo userVo = userService.findByUsername(username);
        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        List<RoleVo> roleVoList = roleService.getRoleByUserId(userVo.getId());
        for (RoleVo role : roleVoList) {
            //角色必须是ROLE_开头，可以在数据库中设置
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority("ROLE_" + role.getValue());
            grantedAuthorities.add(grantedAuthority);
            List<MenuVo> permissionList = permissionService.getPermissionsByRoleId(role.getId());
            for (MenuVo menu : permissionList) {
                GrantedAuthority authority = new SimpleGrantedAuthority(menu.getCode());
                grantedAuthorities.add(authority);
            }
        }
        User user = new User(userVo.getUsername(), userVo.getPassword(),
                true, true, true, true, grantedAuthorities);
        return user;
    }
}
