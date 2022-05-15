package com.rk.app.mapper;
import com.rk.app.bean.Tags;
import com.rk.basic.Mapper.BasicMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TagsMapper extends BasicMapper<Tags> {

    /**
     * 查询每个标签有多少个问题
     * @return
     */
    List<Tags> countTimesTags();
}
