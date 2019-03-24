package com.ganwei.demo.service;

import com.ganwei.demo.entity.UserVo;


public interface UserService {
    UserVo findByUsername(String username);
}
