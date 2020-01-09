package com.demo.controller;

import com.demo.service.IndexService;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * @author 张清
 * @date 2019/01/08 下午2:43.
 */
@Controller
@RequestMapping(value = "/vis")
public class IndexController {

    @Autowired
    private IndexService indexService;
    /**
     * 柱状图
     * */
    @RequestMapping(value = "/bar", method = RequestMethod.GET)
    public String bar() {
        return "bar";
    }

    /**
     * 饼图
     * */
    @RequestMapping(value = "/pie", method = RequestMethod.GET)
    public String pie() {
        return "pie";
    }

    /**
     * 折线图
     * */
    @RequestMapping(value = "/line", method = RequestMethod.GET)
    public String line() {
        return "line";
    }

    /**
     * 雷达图
     * */
    @RequestMapping(value = "/circle", method = RequestMethod.GET)
    public String circle(){
        return "circle";
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> getList() {
        Map<String,Object> map = new HashMap<>();
        map.put("msg", "ok");
        map.put("data", indexService.findAll());
        return map;
    }
}
