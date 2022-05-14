package com.rk.app.service;

import com.rk.app.bean.Users;
import com.rk.basic.Service.BasicService;

public interface UsersService extends BasicService<Users> {

    /**
     * 用户登录
     * @param username
     * @return
     */
    Users login(String username);

    public int changeUserStat(int uid);
}
