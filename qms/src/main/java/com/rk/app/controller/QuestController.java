package com.rk.app.controller;
import com.rk.app.aop.SystemControllerLog;
import com.rk.app.bean.Question;
import com.rk.app.bean.Users;
import com.rk.app.service.QuestService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
@RequestMapping("/question")
public class  QuestController {

    @Autowired
    private QuestService questService;


    /**
     * 查询当前页的数据
     * @param page
     * @param rows
     * @param title
     * @return
     */
    @SystemControllerLog(description = "分页查询提问问题")
    @RequestMapping("/listQuestion")
    public Map<String,Object> listQuestion(Integer page, Integer rows, String title) {
        Users user =(Users)SecurityUtils.getSubject().getSession().getAttribute("user");
        Map<String,Object> map=new HashMap<>();
        map.put("total",questService.countlist(title,user.getUname()));
        map.put("rows",questService.splictlist(page,rows,title,user.getUname(),user.getUid()));
        return map;
    }


    /**
     * 添加question
     * @param question
     * @return
     */
    @SystemControllerLog(description = "保存提问问题")
    @RequestMapping("/saveQusetion")
    public boolean saveQuestion(Question question){
        Users user =(Users)SecurityUtils.getSubject().getSession().getAttribute("user");
        question.setUid(user.getUid());
        return questService.save(question);
    }


    @SystemControllerLog(description = "修改提问问题")
    @RequestMapping("/updateQuestion")
    public boolean updateQuestion(Question question){
        Users user =(Users)SecurityUtils.getSubject().getSession().getAttribute("user");
        Integer uid = user.getUid();;
        if(user.getList().get(0).getRname().equals("1")) {//如果是普通用户登录  只能删除自己的问题
          if(uid!=question.getUid()){//说明修改的不是自己的问题
              return false;
          }
        }
        return questService.update(question);
    }


    @SystemControllerLog(description = "删除提问问题")
    @RequestMapping("/removeQuestion")
    public boolean removeQuestion(@RequestParam("ids[]") List<Integer> qid){
        Users user =(Users)SecurityUtils.getSubject().getSession().getAttribute("user");
        Integer uid = user.getUid();;
        if(user.getList().get(0).getRname().equals("1")) {//如果是普通用户登录  只能删除自己的问题
            for (Integer integer : qid) {
                Question question = (Question) questService.findbyid(integer);
                if (question.getUid() != uid) {//删除的不是当前用户的问题会失败
                    return false;
                }
            }
        }
        return questService.remove(qid);
    }
}
