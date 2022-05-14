package com.rk.app.service.impl;

import com.rk.app.bean.Answer;
import com.rk.app.mapper.AnswerMapper;
import com.rk.app.service.AnswerService;
import com.rk.basic.Service.Impl.BasicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AnswerServiceImpl extends BasicServiceImpl<Answer> implements AnswerService {
    @Autowired
    private AnswerMapper answerMapper;
}
