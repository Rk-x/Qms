package com.rk.app.bean;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.io.Serializable;
import java.util.List;

/**
 * (Users)实体类
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users implements Serializable {
    private static final long serialVersionUID = -98021776757999647L;
    //用户id
    private Integer uid;
    //用户名
    private String uname;
    //用户昵称
    private String nickname;
    //用户密码
    private String password;
    //性别
    private String sex;
    //头像
    private String avatar;
    //备注
    private String remark;
    //创建时间
    private String ctime;
    //修改时间
    private String mtime;
    //删除标记
    private Integer del;
    private Integer stat;//0启用，1禁用

    //一个用户可以有多个角色
    private List<Roles> list;

    //用户对应的权限
    private List<Permissions> pList;

}
