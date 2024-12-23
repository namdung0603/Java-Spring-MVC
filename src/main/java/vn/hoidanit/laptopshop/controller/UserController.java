package vn.hoidanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.UserServices;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class UserController {

    private final UserServices userServices;

    public UserController(UserServices userServices) {
        this.userServices = userServices;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> arrUsers = this.userServices.getAllUserByEmail("dungtnhe186287@fpt.edu.vn");
        System.out.println(arrUsers);
        // model.addAttribute("newUser", new User());
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = this.userServices.getAllUser();
        System.out.println(">>>Check User" + users);
        model.addAttribute("users1", users);
        return "/admin/user/table";
    }

    @RequestMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable long id) {
        // System.out.println("Check path id: " + id);
        User user = this.userServices.getUserById(id);
        model.addAttribute("user", user);
        model.addAttribute("id", id);
        return "/admin/user/show";
    }

    @RequestMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable long id) {
        User currentUser = this.userServices.getUserById(id);
        model.addAttribute("newUser", currentUser);
        return "/admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String postUpdateUser(@ModelAttribute("newUser") User hoidanit) {
        User current = this.userServices.getUserById(hoidanit.getId());
        if (current != null) {
            current.setFullName(hoidanit.getFullName());
            current.setAddress(hoidanit.getAddress());
            current.setPhone(hoidanit.getPhone());

            this.userServices.handleSaveUser(current);
        }

        return "redirect:/admin/user";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.GET)
    public String formCreateUser(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUser(Model model, @ModelAttribute("newUser") User hoidanit) {
        this.userServices.handleSaveUser(hoidanit);
        return "redirect:/admin/user";
    }

    @RequestMapping("/admin/user/delete/{id}")
    public String getDeleteUser(Model model, @PathVariable long id) {
        // User user = new User();
        // user.setId(id);
        // model.addAttribute("newUser", user);
        model.addAttribute("id", id);
        model.addAttribute("newUser", new User());
        return "/admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String postDeleteUser(Model model, @ModelAttribute("newUser") User eric) {
        this.userServices.deleteAUser(eric.getId());
        return "redirect:/admin/user";
    }
    // @PostMapping("/admin/user/delete")
    // public String postDeleteUser(@PathVariable long id) {
    // this.userServices.deleteAUser(id);
    // return "redirect:/admin/user";
    // }

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
