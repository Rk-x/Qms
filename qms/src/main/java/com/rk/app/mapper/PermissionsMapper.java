package com.rk.app.mapper;


import com.rk.app.bean.Permissions;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PermissionsMapper {
    List<Permissions> list();

    int save(@Param("pid") Integer pid, @Param("rid") int rid);

    int removePermissions(@Param("rid") int rid);

}
