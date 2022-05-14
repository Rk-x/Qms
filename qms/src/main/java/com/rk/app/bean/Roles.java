package com.rk.app.bean;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.io.Serializable;
import java.util.List;

/**
 * (Roles)实体类
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Roles implements Serializable {
    private static final long serialVersionUID = -47078187214995995L;
    //角色id
    private Integer rid;
    //角色名称
    private String rname;
    //角色描述
    private String rdesc;
    private List<Permissions> permissionsList;
}
