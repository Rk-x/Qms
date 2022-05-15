package com.rk.app.mapper;


import com.rk.app.bean.Logs;
import com.rk.basic.Mapper.BasicMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LogsMapper extends BasicMapper<Logs> {


    /**
     * 统计访问次数
     * @return
     */
    List<Logs> countTimes();

}
