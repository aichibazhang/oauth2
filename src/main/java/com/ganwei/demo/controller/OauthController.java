package com.ganwei.demo.controller;

import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * ✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈
 * 创建时间： 2019/3/26 16:54
 * Talk is cheap , show me the code
 * 作者:  HanJiaXuan & 18735123416@163.com
 * 方法说明：
 * (1){@link #
 * ✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈✈
 */
@Controller
@RequestMapping
@Slf4j
public class OauthController {

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody()
    private JSONObject login(Authentication auth) {
        User user = (User) auth.getPrincipal();
        JSONObject object = new com.alibaba.fastjson.JSONObject();
        object.put("userName", user.getUsername());
        return object;
    }
}
