package com.cdroidmal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Qingyu Mao
 * @create 2017-11-02-18:11
 */

@Controller
@RequestMapping("/home")
public class HomeController {
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/scan")
    public String scan() {
        return "scan";
    }

}
