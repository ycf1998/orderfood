package org.money.orderfood.controller;

import java.util.ArrayList;
import java.util.List;

import org.money.orderfood.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class test {
	
	@GetMapping("/test1")
	public String text1(Model model) {
		List<User> users = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            User user = new User();
            user.setId((long) i);
            user.setUsername("javaboy>>>>" + i);
            user.setAddress("www.javaboy.org>>>>" + i);
            users.add(user);
        }
        System.out.print(users);
        model.addAttribute("users", users);
		return "test1";
	}
}
