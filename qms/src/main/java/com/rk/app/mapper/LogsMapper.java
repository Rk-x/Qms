package com.rk.app.mapper;


import com.rk.app.bean.Logs;
import com.rk.basic.Mapper.BasicMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
public interface LogsMapper extends BasicMapper<Logs> {

}
