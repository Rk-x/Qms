package com.rk.app.service.impl;
import com.rk.app.bean.Tags;
import com.rk.app.mapper.TagsMapper;
import com.rk.app.service.TagsService;
import com.rk.basic.Service.Impl.BasicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class TagsServiceImpl extends BasicServiceImpl<Tags> implements TagsService {
    @Autowired
    private TagsMapper tagsMapper;

    /**
     * 查询每个标签有多少个问题
     *
     * @return
     */
    @Override
    public List<Tags> countTimesTags() {
        return tagsMapper.countTimesTags();
    }
}
