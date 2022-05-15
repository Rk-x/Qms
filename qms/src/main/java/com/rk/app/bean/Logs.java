package com.rk.app.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (Logs)实体类 日志信息
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Logs implements Serializable {
    private static final long serialVersionUID = 337921317718380946L;
    //日志id
    private Integer operid;
    //操作时间
    private String opertime;
    //操作人
    private String opername;
    //操作ip
    private String ip;
    //操作方法
    private String methods;
    //操作描述
    private String ddesc;

    //访问次数
    private Integer times;//统计访问次数
}
