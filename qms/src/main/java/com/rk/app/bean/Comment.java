package com.rk.app.bean;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.io.Serializable;

/**
 * (Comment)实体类  评论
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comment implements Serializable {
    private static final long serialVersionUID = 225507071339448988L;
    //评论id
    private Integer cid;
    //用户id
    private Integer uid;
    private Integer aid;
    private String uname;
    private String reply;

    //评论内容
    private String content;
    //创建时间
    private String ctime;
    //修改时间
    private String mtime;
    //删除标记
    private Integer del;
}