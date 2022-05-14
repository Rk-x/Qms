package com.rk.app.bean;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Tags implements Serializable {
    private Integer tid;
    //标签名称
    private String tname;
    //创建时间
    private String ctime;
    //修改时间
    private String mtime;
}






