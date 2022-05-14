package com.rk.app.controller;

import com.rk.app.aop.SystemControllerLog;
import com.rk.app.bean.Roles;
import com.rk.app.service.RolesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/roles")
public class RolesController {

    @Autowired
    private RolesService rolesService;

    @SystemControllerLog(description = "查询所有角色信息")
    @RequestMapping("/listRoles")
    public List<Roles> listRoles(){
        return rolesService.listRoles();
    }

    @SystemControllerLog(description = "给用户分配角色")
    @RequestMapping("/saveRole")
    public Boolean saveRole(Integer rid,Integer uid){
        return rolesService.saveRoles(rid,uid)>0?true:false;
    }


    @SystemControllerLog(description = "分页查询角色信息")
    @RequestMapping("/listPageRoles")
    public Map<String,Object> listPageRoles(Integer page, Integer rows){
        Map<String,Object>  map=new HashMap<>();
        map.put("total",rolesService.countRoles());
        map.put("rows",rolesService.listPageRoles(page,rows));
        return map;
    }


}
