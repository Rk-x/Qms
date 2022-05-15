package com.rk.app.controller;
import com.rk.app.aop.SystemControllerLog;
import com.rk.app.bean.Answer;
import com.rk.app.bean.Question;
import com.rk.app.bean.Users;
import com.rk.app.service.AnswerService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/answer")
public class AnswerController {

    @Autowired
    private AnswerService answerService;


    @SystemControllerLog(description = "分页查询问题回复")
    @RequestMapping("/listAnswer")
    public Map<String,Object> listAnswer(Integer page, Integer rows, String ctime){
        Map<String,Object> map=new HashMap<>();
        Users user =(Users)SecurityUtils.getSubject().getSession().getAttribute("user");
        map.put("total", answerService.countbyuid(ctime,user.getUid()));
        map.put("rows", answerService.splictlist(page, rows, ctime,user.getUname(),user.getUid()));
        return map;
    }

    @SystemControllerLog(description = "删除问题回复")
    @RequestMapping("/removeAnswer")
    public boolean removeAnswer(@RequestParam("aid") Integer aid){
        Users user =(Users)SecurityUtils.getSubject().getSession().getAttribute("user");
        Integer uid = user.getUid();;
        if(user.getList().get(0).getRname().equals("1")) {//如果是普通用户登录  只能删除自己的回复
            Answer answer = answerService.findbyid(aid);
            if(uid!=answer.getUid())//不是自己的问题就不能删除
                return false;
        }
        return answerService.removebyid(aid);
    }

    @SystemControllerLog(description = "添加问题回复")
    @RequestMapping("/saveAnswer")
    public boolean saveAnswer(Answer answer){
        Users user =(Users) SecurityUtils.getSubject().getSession().getAttribute("user");
        answer.setUid(user.getUid());
        System.out.println("答案:"+answer);
        return answerService.save(answer);
    }

}
