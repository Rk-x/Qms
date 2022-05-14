package com.rk.app.controller;
import com.rk.app.aop.SystemControllerLog;
import com.rk.app.bean.Permissions;
import com.rk.app.service.PermissionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
@RequestMapping("/permissions")
public class PermissionController {
    @Autowired
    private PermissionsService permissionsService;

    @SystemControllerLog(description = "查询所有权限初始化权限菜单")
    @RequestMapping("/listPermissions")
    public List<Permissions> listPermissions(){
        return permissionsService.listPermissions();
    }
    @SystemControllerLog(description = "给角色分配权限")
    @RequestMapping("/savePermissions")
    public    int savePermissions(@RequestParam("pid")List<Integer>pids,int rid){
        return permissionsService.savePermissions(pids,rid);

    }
    @SystemControllerLog(description = "删除角色权限")
    @RequestMapping("/removePermissions")
    public  int removePermissions(int rid ){
        return permissionsService.removePermissions(rid);
    }
}
