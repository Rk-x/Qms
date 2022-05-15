package com.rk.app.service;


import com.rk.app.bean.Tags;
import com.rk.basic.Service.BasicService;

import java.util.List;


public interface TagsService extends BasicService<Tags> {
    /**
     * 查询每个标签有多少个问题
     * @return
     */
    List<Tags> countTimesTags();
}
