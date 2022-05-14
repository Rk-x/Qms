package com.rk.app.service.impl;

import com.rk.app.bean.Roles;
import com.rk.app.bean.Users;
import com.rk.app.mapper.RolesMapper;
import com.rk.app.mapper.UsersMapper;
import com.rk.app.service.RolesService;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class RolesServiceImpl implements RolesService {
    @Autowired
    private RolesMapper rolesMapper;

    @Autowired
    private UsersMapper usersMapper;
    @Override
    public List<Roles> listRoles() {
        return rolesMapper.list();
    }

    @Override
    public int saveRoles(Integer rid, Integer uid) {
        Users user=usersMapper.getUserByid(uid);
        if(user!=null){
            int size = user.getList().size();
            if(size>0){
                return -1;
            }
        }
        return rolesMapper.save(rid,uid);
    }

    @Override
    public List<Roles> listPageRoles(int page, int rows) {
        return rolesMapper.listPage((page-1)*rows,rows);
    }

    @Override
    public int countRoles() {
        return rolesMapper.count();
    }
}
