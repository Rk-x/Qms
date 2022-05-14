package com.rk.app.service.impl;

import com.rk.app.bean.Logs;
import com.rk.app.mapper.LogsMapper;
import com.rk.app.service.LogsService;
import com.rk.basic.Service.Impl.BasicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogsServiceImpl extends BasicServiceImpl<Logs> implements LogsService {
    @Autowired
    private LogsMapper logsMapper;
}
