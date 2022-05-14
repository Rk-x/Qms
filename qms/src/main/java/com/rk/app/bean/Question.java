package com.rk.app.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.catalina.User;

import java.io.Serializable;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Question implements Serializable {
    //问题id
    private Integer qid;
    //用户id
    private Integer uid;
    //标签id
    private Integer tid;
    private String tname;//只是查询显示标签名称
    private String uname;//只是查询显示用户名称
    //回答id
    private Integer aid;
    //标题
    private String title;
    //内容
    private String content;
    //创建时间
    private String ctime;
    //修改时间
    private String mtime;
    //删除标记

}
