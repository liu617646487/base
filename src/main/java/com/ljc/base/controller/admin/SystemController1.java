package com.ljc.base.controller.admin;


import com.ljc.base.config.SiteConfig;
import com.ljc.base.entity.admin.OperatorLog;
import com.ljc.base.service.admin.OperatorLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;


/**
 * 系统控制器
 */

@Controller
@RequestMapping("/system")
public class SystemController1 {

    @Value("${spring.datasource.url}")
    private String url;

    @Autowired
    private SiteConfig siteConfig;

    @Autowired
    private OperatorLogService operatorLogService;

    private Logger log = LoggerFactory.getLogger(SystemController1.class);

    @RequestMapping("/hello")
    public String index(Model model){
        model.addAttribute("name",siteConfig.getName());
        model.addAttribute("email",siteConfig.getEmail());

        //log.info("name="+siteConfig.getName());
        //log.warn("email="+siteConfig.getGander());
        //log.error("email="+siteConfig.getGander());
        //model.addAttribute("name",name);

        OperatorLog OperatorLog = new OperatorLog();
        OperatorLog.setOperator(siteConfig.getName());
        OperatorLog.setContent(siteConfig.getEmail());
        OperatorLog.setCreateTime(new Date());
        model.addAttribute("OperatorLog",OperatorLog);

        model.addAttribute("html","<div>这是一个div标签</div>");

        List<OperatorLog> OperatorLogList = new ArrayList<OperatorLog>();
        OperatorLog OperatorLog1 = new OperatorLog();
        OperatorLog1.setOperator("123");
        OperatorLog1.setContent("123");
        OperatorLog1.setCreateTime(new Date());
        OperatorLog OperatorLog2 = new OperatorLog();
        OperatorLog2.setOperator("qwe");
        OperatorLog2.setContent("qwe");
        OperatorLog2.setCreateTime(new Date());
        OperatorLogList.add(OperatorLog1);
        OperatorLogList.add(OperatorLog2);
        model.addAttribute("OperatorLogList",OperatorLogList);


        Map<String,String> map = new TreeMap<String,String>();
        map.put("hello","world");
        map.put("哈哈","呵呵");
        model.addAttribute("treeMap",map);

        /*OperatorLog o = new OperatorLog();
        o.setOperator("张三");
        o.setContent("我是张三");
        o.setCreateTime(new Date());
        o.setUpdateTime(new Date());
        OperatorLogService.save(o);*/

        OperatorLog o1 = new OperatorLog();
        o1.setId(Long.valueOf(1));
        o1.setOperator("张三");
        o1.setContent("张三");
        o1.setCreateTime(new Date());
        o1.setUpdateTime(new Date());
        operatorLogService.save(o1);


        return "index";
    }

    @RequestMapping("/index")
    @ResponseBody
    public Boolean ha(Long id){
        //return OperatorLogService.findById(id);
        //return OperatorLogService.findAll();
        //OperatorLogService.deleteById(id);

        OperatorLog o1 = new OperatorLog();
        o1.setId(Long.valueOf(2));
        o1.setOperator("123");
        o1.setContent("张123123三");
        o1.setCreateTime(operatorLogService.findById(o1.getId()).getCreateTime());
        operatorLogService.save(o1);

        return true;
    }

}
