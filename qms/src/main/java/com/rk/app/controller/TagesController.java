package com.rk.app.controller;


import com.rk.app.aop.SystemControllerLog;
import com.rk.app.bean.Tags;
import com.rk.app.bean.Users;
import com.rk.app.service.TagsService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/tags")
public class TagesController {
    @Autowired
    private TagsService tagsService;

    /**
     * 分页查询
     * @param page  当前页码
     * @param rows  每页条数
     * @return
     */
    @SystemControllerLog(description = "分页查询标签")
    @RequestMapping("/listTags")
    public Map<String,Object> splictlistTags(Integer page, Integer rows,String tname){
        Users user =(Users) SecurityUtils.getSubject().getSession().getAttribute("user");
        Map<String,Object> map=new HashMap<>();
        map.put("total",tagsService.countlist(tname,user.getUname()));
        map.put("rows",tagsService.splictlist(page,rows,tname,user.getUname(),user.getUid()));
        return map;
    }

    /**
     * 查询所有
     * @param
     * @return
     */
    @SystemControllerLog(description = "查询所有标签")
    @RequestMapping("/list")
    public List<Tags> findall(){
        return tagsService.findAll();
    }


    /**
     * 添加tags
     * @param tags
     * @return
     */
    @SystemControllerLog(description = "添加标签")
    @RequestMapping("/saveTags")
    public boolean saveTags(Tags tags){
        System.out.println("前端传递过来的参数:"+tags);
        return tagsService.save(tags);
    }


    @SystemControllerLog(description = "修改标签")
    @RequestMapping("/updateTags")
    public boolean updateTags(Tags tags){
        return tagsService.update(tags);
    }

    @SystemControllerLog(description = "删除标签 ")
    @RequestMapping("/removeTags")
    public boolean removeTags(@RequestParam("tid[]") List<Integer> tid){
        System.out.println("前端传递过来的tid ");
        for (Integer integer : tid) {
            System.out.println(integer);
        }
        return tagsService.remove(tid);
    }


    @RequestMapping("/countTimesTags")
    public List<Tags> countTimesTags(){
        return tagsService.countTimesTags();
    }


}
