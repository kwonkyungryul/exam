package shop.mtcoding.exam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.exam.model.User;
import shop.mtcoding.exam.model.UserRepository;

@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    HttpSession session;

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

    @PostMapping("/login")
    public String login(String username, String password) {
        User principal =  userRepository.findByUsernameAndPwd(username, password);
        if (principal == null) {
            return "redirect:/notfound";
        }

        session.setAttribute("principal", principal);

        return "redirect:/";
    }

    @GetMapping("/logout")
    public String logout() {
        session.invalidate();
        return "redirect:/loginForm";
    }

    @GetMapping("/user/userInfo")
    public String userInfo(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/notfound";
        }

        User user = userRepository.findById(principal.getId());
        if (user == null) {
            return "redirect:/notfound";
        }

        model.addAttribute("user", user);
        
        return "user/userInfo";
    }

    @PostMapping("/user/update")
    public String updateById(int id, String username, String password, String email) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/notfound";
        }

        User user =  userRepository.findById(id);
        if (user == null) {
            return "redirect:/notfound";
        }

        if (user.getId() != principal.getId()) {
            return "redirect:/notfound";
        }

        int result = userRepository.updateById(id, username, password, email);
        if (result != 1) {
            return "redirect:/notfound";
        }

        return "redirect:/";
    }
}
