package com.rk.app.bean;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
/**
 * (Answer)实体类
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Answer implements Serializable {
    //序列化标签
    private static final long serialVersionUID = 216747030052621585L;
    //回答id
    private Integer aid;
    private Integer cid;
    private Integer uid;
    private String uname;//回复人姓名
    //回答内容
    private String content;
    //评论数
    private Integer commentNum;
    //点赞数
    private Integer agreeNum;
    //创建时间
    private String ctime;
    //修改时间
    private String mtime;
    //删除标记
    private Integer del;
    //问题id
    private Integer qid;
    //问题标题
    private String title;
}