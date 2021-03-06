package ru.free4all.familyguy.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.free4all.familyguy.interfaces.UtilsService;
import ru.free4all.familyguy.interfaces.admin.AdminUserService;

@Controller
@RequestMapping("/user")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminUserController {

    private final AdminUserService adminUserService;
    private final UtilsService us;

    @Autowired
    public AdminUserController(AdminUserService adminUserService, UtilsService us) {
        this.adminUserService = adminUserService;
        this.us = us;
    }

    @GetMapping()
    public String user(Model m) {
        m.addAttribute("seasons", us.getAvailableSeasons());
        return "blocks/admin/user_add_new";
    }

    @PostMapping("/user_add")
    public String addUser(@RequestParam("username") String u, @RequestParam("password") String p, @RequestParam("password_confirm") String c, Model m) {
      //  adminUserService.add(u, p, m);
        m.addAttribute("seasons", us.getAvailableSeasons());
        return "blocks/admin/user_add_new";
    }

    @GetMapping("/edit")
    public String editUser(Model m) {
        m.addAttribute("seasons", us.getAvailableSeasons());
        return "blocks/admin/user_edit_user";
    }

    @PostMapping("/user_edit")
    public String editUser(@RequestParam("id") String id, @RequestParam("newUsername") String u, @RequestParam("newPassword") String p, Model m) {
        adminUserService.edit(id, u, p, m);
        m.addAttribute("seasons", us.getAvailableSeasons());
        return "blocks/admin/user_edit_user";
    }

    @GetMapping("/delete")
    public String removeUser(Model m) {
        m.addAttribute("seasons", us.getAvailableSeasons());
        return "blocks/admin/user_delete_by_id";
    }

    @PostMapping("/user_remove_by_id")
    public String removeUserById(@RequestParam("id") String id, Model m) {
        adminUserService.delete(id, m);
        m.addAttribute("seasons", us.getAvailableSeasons());
        return "blocks/admin/user_delete_by_id";
    }

    @GetMapping("/roles")
    public String roles(Model m) {
        m.addAttribute("seasons", us.getAvailableSeasons());
        return "blocks/admin/user_edit_user_role";
    }

    @PostMapping("/user_add_role")
    public String addUserRole(@RequestParam("id") String id, @RequestParam("role") String r, Model m) {
        adminUserService.addRole(id, r, m);
        m.addAttribute("seasons", us.getAvailableSeasons());
        return "blocks/admin/user_edit_user_role";
    }

    @PostMapping("/user_edit_role")
    public String editUserRole(@RequestParam("id") String id, @RequestParam("role") String r, Model m) {
        adminUserService.editRole(id, r, m);
        m.addAttribute("seasons", us.getAvailableSeasons());
        return "blocks/admin/user_edit_user_role";
    }

    @GetMapping("/user_list")
    public String userList(Model m) {
        m.addAttribute("seasons", us.getAvailableSeasons());
        adminUserService.list(m);
        return "blocks/admin/user_list_of_users";
    }
}
