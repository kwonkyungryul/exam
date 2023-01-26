package shop.mtcoding.exam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import shop.mtcoding.exam.model.Board;
import shop.mtcoding.exam.model.BoardRepository;
import shop.mtcoding.exam.model.User;
import shop.mtcoding.exam.model.UserRepository;

@Controller
public class BoardController {
    
    @Autowired
    UserRepository userRepository;

    @Autowired
    BoardRepository boardRepository;

    @Autowired
    HttpSession session;

    @GetMapping({"/", "/board/list"})
    public String list(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/loginForm";
        }

        List<Board> boardList = boardRepository.findById(principal.getId());

        model.addAttribute("boardList", boardList);
        return "board/list";
    }
}
