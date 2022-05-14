package com.rk.app.service;

import com.rk.app.bean.Roles;

import java.util.List;

public interface RolesService {



    List<Roles> listRoles();

    int saveRoles(Integer rid, Integer uid);

    List<Roles> listPageRoles(int page ,int rows);

    int countRoles();


}
