package com.rk.app.service.impl;
import com.rk.app.bean.Tags;
import com.rk.app.mapper.TagsMapper;
import com.rk.app.service.TagsService;
import com.rk.basic.Service.Impl.BasicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class TagsServiceImpl extends BasicServiceImpl<Tags> implements TagsService {
    @Autowired
    private TagsMapper tagsMapper;
}
