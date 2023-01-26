package shop.mtcoding.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.exam.model.UserRepository;

@Controller
public class UserController {
    @Autowired
    UserRepository userRepository;

    @GetMapping("/joinForm")
    public String joinForm() {
        return "user/joinForm";
    }

    @PostMapping("/join")
    public String join(String username, String password, String email) {
        // 값이 있는지 체크
        if (username == null || password == null || email == null) {
            return "redirect:/notfound";
        }

        // insert 정상처리 됐는지 체크
        int result = userRepository.insert(username, password, email);
        if (result != 1) {
            return "redirect:/notfound";
        }

        return "redirect:/loginForm";
    }

    @GetMapping("/loginForm")
    public String loginForm() {
        return "user/loginForm";
    }
}
