package com.jnshu.controller;


import com.jnshu.pojo.Banner;
import com.jnshu.pojo.Student;
import com.jnshu.service.BannerService;
import com.jnshu.service.ProfessionService;
import com.jnshu.service.StudentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.alibaba.fastjson.JSON;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class frontController {
    @Autowired
    BannerService bannerService;
    @Autowired
    ProfessionService professionService;
    @Autowired
    StudentService studentService;

    @GetMapping(value = "/el")
    public ModelAndView el(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("el");
        return mv;
    }

    @GetMapping(value = "/recommend")
    public ModelAndView recommend(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("recommend");
        return mv;
    }

    @GetMapping(value="/home")
    public String home(ModelMap modelMap, @RequestParam("status")Integer status){
        List bannerList=bannerService.ListUpLoad(status);
        List studentList=studentService.upLoadStudent(status);
        modelMap.addAttribute("bannerList",bannerList);
        modelMap.addAttribute("studentList",studentList);
        return "home";
    }

    @GetMapping(value="/profession")
    public String profession(@RequestParam("status")Integer status,ModelMap modelMap) {
        Map professionList = professionService.upLoadProfessions(status);
//        String professionJson=JSON.toJSONString(professionList);
        modelMap.addAttribute("professionList", professionList);
        return "profession";
    }

    @GetMapping(value = "/listBanner")
    public List listBanner(@RequestParam("status")Integer status,ModelMap modelMap){
        List bannerList=bannerService.ListUpLoad(status);
//        String bannerJson=JSON.toJSONString(bannerList);
        modelMap.addAttribute("bannerList",bannerList);
        return bannerList;
    }

    @GetMapping(value = "/listStudent")
    public List listStudent(@RequestParam("status")Integer status,ModelMap modelMap){
        List studentList=studentService.upLoadStudent(status);
//        String studentJson=JSON.toJSONString(studentList);
        modelMap.addAttribute("studentList",studentList);
        return studentList;
    }

    @GetMapping(value = "/listProfession")
    public List listProfession(@RequestParam("status")Integer status,ModelMap modelMap){
        List professionList=professionService.upLoadProfession(status);
//        String professionJson=JSON.toJSONString(professionList);
        modelMap.addAttribute("professionList",professionList);
        return professionList;
    }
}
