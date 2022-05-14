package com.rk.app.service;

import com.rk.app.bean.Permissions;

import java.util.List;

public interface PermissionsService {
    List<Permissions> listPermissions();

    int savePermissions(List<Integer> pids, int rid);

    int removePermissions(int rid);
}
