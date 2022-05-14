package com.rk.app.controller;


import com.rk.app.bean.Logs;
import com.rk.app.bean.Users;
import com.rk.app.service.LogsService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/logs")
public class LogsController {

    @Autowired
    private LogsService logsService;


    /**
     * 分页查询日志列表
     * @param page
     * @param rows
     * @param opername
     * @return
     */
    @RequestMapping("/listLogs")
    public Map<String,Object> listLogs(Integer page, Integer rows, String opername){
        Map<String,Object> map=new HashMap<>();
        Users user =(Users) SecurityUtils.getSubject().getSession().getAttribute("user");
        map.put("total", logsService.countlist(opername,user.getUname()));
        map.put("rows", logsService.splictlist(page, rows, opername,user.getUname(),user.getUid()));
        return map;
    }
}
