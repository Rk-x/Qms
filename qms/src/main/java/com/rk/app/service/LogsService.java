package com.rk.app.service;

import com.rk.app.bean.Logs;
import com.rk.basic.Service.BasicService;

import java.util.List;

public interface LogsService extends BasicService<Logs> {

    /**
     * 统计访问次数
     * @return
     */
    List<Logs> countTimes();
}
