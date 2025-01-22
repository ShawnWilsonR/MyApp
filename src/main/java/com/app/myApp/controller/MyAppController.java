package com.app.myApp.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyAppController {

    @RequestMapping("/hello")
    public String hello() {
        return "Welcome to myAPP !!!";
    }
}
