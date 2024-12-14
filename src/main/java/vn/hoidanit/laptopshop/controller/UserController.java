package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.service.UserServices;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    private UserServices userServices;

    public UserController(UserServices userServices) {
        this.userServices = userServices;
    }

    @RequestMapping("/")
    public String getHomePage() {
        return "hello";
    }
}

// @RestController
// public class UserController {

// //DI: Dependency Injection
// private UserServices userServices;

// public UserController(UserServices userServices) {
// this.userServices = userServices;
// }

// @GetMapping("")
// public String getHomePage() {
// return this.userServices.handleHello();
// }
// }
