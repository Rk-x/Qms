package com.rk.app.controller;
import com.rk.app.aop.SystemControllerLog;
import com.rk.app.bean.Users;
import com.rk.app.constant.FileUrl;
import com.rk.app.service.UsersService;
import com.rk.app.utils.QiNiuUtil;
import com.rk.app.utils.StrUtils;
import com.rk.basic.util.Result;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private UsersService usersService;

    @SystemControllerLog(description = "用户登录")
    @RequestMapping("/login")
    public Result login(String username, String password){
        //1、向UsernamePasswordToken对象中存入username和password
        UsernamePasswordToken token=new UsernamePasswordToken(username,//将明文转换为密文进行认证
                new Md5Hash(password,username+password,1000).toString());
        //2、Subject类是shior提供的认证类，里面有提供好的认证方法，直接调用
        Subject subject= SecurityUtils.getSubject();
        try {
            //3、调用登录方法传入token
            subject.login(token);
        } catch (UnknownAccountException e) {//用户名错误抛这个异常
            return new Result(0,"你输入的用户名错误");//登录失败
        }catch (IncorrectCredentialsException e) {//密码错误抛这个异常
            return new Result(0,"你输入的密码错误或者账号被锁定,请联系管理员。");
        }
        return new Result();//登录成功
    }


    /**
     * 更改用户状态
     * @return
     */
    @RequestMapping("/changeUserStat")
    public boolean changeUserStat(int uid){
        return usersService.changeUserStat(uid) > 0 ? true : false;
    }

    @RequestMapping("/listUsers")
    public Map<String,Object> listUsers(Integer page, Integer rows,String c){
        Map<String,Object> map=new HashMap<>();
        Users user =(Users)SecurityUtils.getSubject().getSession().getAttribute("user");

        //获取角色权限
        if(user.getList().get(0).getRname().equals("1")){
            map.put("total", usersService.countlist(c,user.getUname()));
            map.put("rows", usersService.splictlist(page, rows, c,user.getUname(),user.getUid()));
            return map;
        }

        //管理员查询所有用户
        map.put("total", usersService.countlist(c,null));
        map.put("rows", usersService.splictlist(page, rows, c,null,user.getUid()));
        return map;
    }


    @RequestMapping("/saveUsers")
    public Boolean saveUsers(@RequestParam(value = "avatar",required = false) MultipartFile avatar, HttpServletRequest request) {
        Users user = new Users();

        String imageName= StrUtils.getComplexRandomString(5);

        //文件上传
        Boolean flag=QiNiuUtil.uploadMultipartFile(avatar,imageName,true);
        if(!flag){//上传失败
           return false;
        }

        //设置头像链接
        user.setAvatar(FileUrl.image+imageName);
        System.out.println("图片访问连接:"+FileUrl.image+imageName);
        //用来获取其他参数
        MultipartHttpServletRequest params = ((MultipartHttpServletRequest) request);
        //设置其他属性
        user.setUname(params.getParameter("uname"));
        user.setNickname(params.getParameter("nickname"));
        System.out.println("昵称"+params.getParameter("nickname"));
        user.setSex(params.getParameter("sex"));
        user.setRemark(params.getParameter("remark"));

        //设置加密密码
        user.setPassword(new Md5Hash(params.getParameter("password"),
                user.getUname() + params.getParameter("password"),
                1000).toString());

        return usersService.save(user);
    }

    @RequestMapping("/removeUsers")
    public Boolean removeUsers(@RequestParam("uids[]") List<Integer> uid){
        return usersService.remove(uid);
    }

    @RequestMapping("/updateUsers")
    public Boolean updateUsers(@RequestParam(value = "avatar",required = false) MultipartFile avatar, HttpServletRequest request){
        Users user = new Users();

        if(avatar.getSize()==0){
            //说明没有修改头像
            user.setAvatar(null);
        }else {//修改了头像就上传
            //图片名称
            String imageName= StrUtils.getComplexRandomString(10);
            //文件上传
            Boolean flag=QiNiuUtil.uploadMultipartFile(avatar,imageName,true);
            if(!flag){//上传失败
                return false;
            }
            //设置头像链接
            user.setAvatar(FileUrl.image+imageName);
            System.out.println("图片访问连接:"+FileUrl.image+imageName);
        }
        //用来获取其他参数
        MultipartHttpServletRequest params = ((MultipartHttpServletRequest) request);
        //设置其他属性
        user.setUid(Integer.parseInt(params.getParameter("uid")));
        System.out.println("uid为:"+user.getUid());
        user.setUname(params.getParameter("uname"));
        user.setNickname(params.getParameter("nickname"));
        System.out.println("昵称"+params.getParameter("nickname"));
        user.setSex(params.getParameter("sex"));
        user.setRemark(params.getParameter("remark"));

        //设置加密密码
        user.setPassword(new Md5Hash(params.getParameter("password"),
                user.getUname() + params.getParameter("password"),
                1000).toString()
        );
        return usersService.update(user);
    }

}
