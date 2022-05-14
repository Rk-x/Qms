package com.rk.app.bean;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.io.Serializable;
import java.util.List;

/**
 * (Permissions)实体类   权限
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Permissions implements Serializable {
    private static final long serialVersionUID = 944812776688048397L;
    //权限id
    private Integer pid;
    //权限名称
    private String pname;
    //权限描述
    private String pdesc;

    //用户对应的权限
    private List<Permissions> pList;
}
