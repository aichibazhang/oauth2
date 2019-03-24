package com.ganwei.demo.service.impl;

import com.ganwei.demo.entity.UserVo;
import com.ganwei.demo.mapper.RcUserMapper;
import com.ganwei.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private RcUserMapper userMapper;

    @Override
    public UserVo findByUsername(String username) {
        return userMapper.findByUserName(username);
    }
}
