package com.rk.app.utils;
import com.rk.app.bean.Roles;
import com.rk.app.bean.Users;
import com.rk.app.service.UsersService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.ArrayList;
import java.util.List;


//登录认证类
public class MyRealm extends AuthorizingRealm {

    @Autowired
    private UsersService usersService;

   //处理用户登录用的
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获得用户名
        String username=(String)token.getPrincipal();
        SimpleAuthenticationInfo info=null;
        //通过用户名查询用户  校验用户名
        Users user = login(username);
        if(user!=null)
        {
            //校验密码
            info=new SimpleAuthenticationInfo(user.getUname(),user.getPassword(),
                    super.getName());
            SecurityUtils.getSubject().getSession().setAttribute("user", user);
        }
        return info;
    }

    private Users login(String username){
        return usersService.login(username);
    }


    //处理用户角色权限
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String uname=(String)principals.getPrimaryPrincipal();//获得已经登录的用户名称
        Users users = login(uname);
        //SimpleAuthorizationInfo对象它会在前端结合shiro框架提供的jsp标签进行菜单的过滤
        SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
        List<Roles> list = users.getList();//登录角色集合
        List<String> rolerNames=new ArrayList<>();
        for (Roles roles : list) {
            rolerNames.add(roles.getRname());
            info.addRoles(rolerNames);
        }
        /*//所有的权限的名称
        List<String> perNames=new ArrayList<>();
        //该集合装载的是用于所有的权限
        List<Permissions> permissionsList = users.getPList();
        for (Permissions permissions : permissionsList) {
            perNames.add(permissions.getPname());
        }
        //将权限名称交给SimpleAuthorizationInfo对象
        info.addStringPermissions(perNames);*/
        return info;
    }

}
