package com.rk.app.service.impl;

import com.rk.app.bean.Users;
import com.rk.app.mapper.UsersMapper;
import com.rk.app.service.UsersService;
import com.rk.basic.Service.Impl.BasicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UsersServiceImpl extends BasicServiceImpl<Users> implements UsersService {
    @Autowired
    private UsersMapper usersMapper;

    /**
     * 用户登录
     * @param username
     * @return
     */
    @Override
    public Users login(String username) {
        return usersMapper.login(username);
    }

    @Override
    public int changeUserStat(int uid) {
        Users users = usersMapper.getUserByid(uid);

  /*      //管理员不可更改   新增的用户灭有
        if (users.getList().get(0).getRname()==null||users.getList().get(0).getRname().equals("0")){
            System.out.println("user的权限为:"+users.getList().get(0).getRname());
            return -1;
        } else {*/
            if (users.getStat() == 0) {
                users.setStat(1);
            } else if (users.getStat() == 1) {
                users.setStat(0);
            }
            return usersMapper.update(users);
        }

}
