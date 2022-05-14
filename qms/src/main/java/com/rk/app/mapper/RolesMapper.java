package com.rk.app.mapper;

import com.rk.app.bean.Roles;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RolesMapper {

    List<Roles> list();

    List<Roles> listPage(@Param("page") int page,@Param("rows") int rows);

    int count();


    int save(@Param("rid") Integer rid, @Param("uid") Integer uid);

    Roles get(int rid);
}
