package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserServices;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    private UserServices userServices;

    public UserController(UserServices userServices) {
        this.userServices = userServices;
    }

    @RequestMapping("/admin/user")
    public String getHomePage(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUser(Model model, @ModelAttribute("newUser") User hoidanit) {
        System.out.println("Run here" + hoidanit);
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
