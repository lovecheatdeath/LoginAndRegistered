package com.jnshu.controller;

import com.jnshu.pojo.User;
import com.jnshu.service.UserService;
import com.jnshu.utils.CookieUtil;
import com.jnshu.utils.ResponseBo;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
public class loginController {
    @Autowired
    private UserService userService;
    @Autowired
    private User user;

    private Logger logger = LogManager.getLogger(loginController.class);

    @GetMapping(value = "/loginPage")
    public String loginPage() {
        return "loginPage";
    }


//    public String login(HttpServletResponse response, RedirectAttributes model,
//                        String userid, String password){
//        logger.info("login : name = [{}] password = [{}]", userid, password);
//        try {
//            User user = userService.isTrue(userid, password);
//            Cookie cookie = userService.setToken(user);
//            response.addCookie(cookie);
//            logger.info("login success");
//            return "redirect:u/student";
//        } catch (IllegalArgumentException argE) {
//            logger.error(argE.getMessage());
//            logger.error("login parameters error");
//            Map json = ResponseBo.msg(argE.getMessage());
//            model.addFlashAttribute("json", json);
//            return "redirect:loginPage";
//        } catch (Throwable t) {
//            logger.error(t.getMessage());
//            logger.error("login unknown error");
//            Map json = ResponseBo.msg("Unknow.Exception");
//            model.addFlashAttribute("json", json);
//            return "redirect:error";
//        }
//    }
    @PostMapping(value = "/login")
    public String login(HttpServletResponse response, RedirectAttributes model,
                        String userid, String password){
        logger.info("login : name = [{}] password = [{}]", userid, password);
        try{
            User user=userService.isTrue(userid,password);
            Cookie cookie=userService.jjwtSetToken(user);
//            CookieUtil.addCookie("token",cookie);
            response.addCookie(cookie);
            logger.info("login success");
            return "redirect:u/student";
        } catch (IllegalArgumentException argE) {
            logger.error(argE.getMessage());
            logger.error("login parameters error");
            Map json = ResponseBo.msg(argE.getMessage());
            model.addFlashAttribute("json", json);
            return "redirect:loginPage";
        } catch (Throwable t) {
            logger.error(t.getMessage());
            logger.error("login unknown error");
            Map json = ResponseBo.msg("Unknow.Exception");
            model.addFlashAttribute("json", json);
            return "redirect:error";
        }
    }
    @GetMapping("/signupPage")
    public String signupPage() {
        return "signupPage";
    }

    @PostMapping("/signup")
    public String signup(RedirectAttributes model, User user, BindingResult error) {
        logger.info("signup : user = [{}]", user);
        try {
            userService.insert(user, error);
            logger.info("signup success");
            return "redirect:/loginPage";
        } catch (IllegalArgumentException argE) {
            logger.error(argE.getMessage());
            logger.error("signup parameters error");
            Map json = ResponseBo.msg(argE.getMessage());
            model.addFlashAttribute("json", json);
            return "redirect:/signupPage";
        } catch (Throwable t) {
            logger.error(t.getMessage());
            logger.error("signup unknown error");
            Map json = ResponseBo.msg("Unknow.Exception");
            model.addFlashAttribute("json", json);
            return "redirect:error";
        }
    }


    @GetMapping(value = "/logout")
    public String logout(HttpServletResponse response) {
        response.addCookie(CookieUtil.killCookie("token"));

        return "redirect:loginPage";
    }
}

