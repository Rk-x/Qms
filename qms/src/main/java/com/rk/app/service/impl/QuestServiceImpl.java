package com.rk.app.service.impl;
import com.rk.app.bean.Question;

import com.rk.app.mapper.QuestMapper;
import com.rk.app.service.QuestService;
import com.rk.basic.Service.Impl.BasicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class QuestServiceImpl extends BasicServiceImpl<Question> implements QuestService{
    @Autowired
    private QuestMapper questMapper;
}
