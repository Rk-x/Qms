package com.rk.app.mapper;

import com.rk.app.bean.Users;
import com.rk.basic.Mapper.BasicMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersMapper extends BasicMapper<Users> {
    /**
     * 用户登录
     * @param username
     * @return
     */
    Users login(String username);

    Users getUserByid(Integer uid);

}
