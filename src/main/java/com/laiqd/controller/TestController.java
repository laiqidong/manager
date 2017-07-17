package com.laiqd.controller;

import com.laiqd.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("test")
public class TestController {
    @Resource
    private UserRepository userRepository;
    @RequestMapping("testPage")
    public String testPage() {
        return "test";
    }

    @RequestMapping("getUserList")
    @ResponseBody
    public Object userList() {
        return userRepository.findAll();
    }
    @RequestMapping("deleteUser/{id}")
    @ResponseBody
    public Object deleteUser(@PathVariable Long id) {
        userRepository.delete(id);
        return true;
    }
}
