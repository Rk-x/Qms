package com.rk.app.controller;
import com.rk.app.aop.SystemControllerLog;
import com.rk.app.bean.Comment;
import com.rk.app.bean.Users;
import com.rk.app.service.CommentService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @SystemControllerLog(description = "删除评论")
    @RequestMapping("/removeComment")
    public Boolean removebyid(@RequestParam("cid") Integer cid){
        return commentService.removebyid(cid);
    }

    /**
     * 保存 comment
     * @param comment
     * @return
     */
    @SystemControllerLog(description = "保存评论")
    @RequestMapping("/saveComment")
    public Boolean saveComment(Comment comment){
        Users user =(Users) SecurityUtils.getSubject().getSession().getAttribute("user");
        comment.setUid(user.getUid());
        return commentService.save(comment);
    }

    /**
     * 分页查询
     * @param page
     * @param rows
     * @param ctime
     * @return
     */
    @RequestMapping("/listComment")
    @SystemControllerLog(description = "分页查询评论")
    public Map<String,Object> listAnswer(Integer page, Integer rows, String ctime){
        System.out.println("page"+page+"  roes:"+rows+" ctime："+ctime);
        Map<String,Object> map=new HashMap<>();
        Users user =(Users) SecurityUtils.getSubject().getSession().getAttribute("user");
        map.put("total", commentService.countlist(ctime,user.getUname()));
        map.put("rows", commentService.splictlist(page, rows, ctime,user.getUname(),user.getUid()));
        return map;
    }
    
}
