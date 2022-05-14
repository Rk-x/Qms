package com.rk.app.service.impl;
import com.rk.app.bean.Permissions;
import com.rk.app.bean.Roles;
import com.rk.app.mapper.PermissionsMapper;
import com.rk.app.mapper.RolesMapper;
import com.rk.app.service.PermissionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class PermissionsServiceImpl implements PermissionsService {
    @Autowired
    private PermissionsMapper permissionsDao;
    @Autowired
    private RolesMapper rolesDao;

    @Override
    public List<Permissions> listPermissions() {
        return permissionsDao.list();
    }

    @Override
    public int savePermissions(List<Integer> pids, int rid) {
        Roles roles = rolesDao.get(rid);
    /*    int size = roles.getPermissionsList().size();
        if (size > 0) {
            return -1;
        }*/
        int count = 0;
        for (Integer pid : pids) {
            count = permissionsDao.save(pid, rid);
        }
        return count;
    }

    @Override
    public int removePermissions(int rid) {
        Roles roles = rolesDao.get(rid);
        int size = roles.getPermissionsList().size();

        return size>0?permissionsDao.removePermissions(rid):-1;
    }
}
