package com.rk.app.service.impl;

import com.rk.app.bean.Comment;
import com.rk.app.mapper.CommentMapper;
import com.rk.app.service.CommentService;
import com.rk.basic.Service.Impl.BasicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl extends BasicServiceImpl<Comment> implements CommentService {
    @Autowired
    private CommentMapper commentMapper;
}
