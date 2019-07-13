package com.jnshu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jnshu.pojo.Student;
import com.jnshu.service.StudentService;
import com.jnshu.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@Controller
public class studentController {

    @Autowired
    private UserService userService;
    @Autowired
    private StudentService studentService;

    private Logger logger = LogManager.getLogger(studentController.class);


    @GetMapping(value = "/studentPage")
    public String studentPage() {
        return "studentPage";
    }


    @GetMapping("/u/student")
//    public String getStudent(HttpServletRequest request, ModelMap model,@RequestParam(required = false, defaultValue = "1") int pageStart,
//                             @RequestParam(required = false, defaultValue = "10") int pageSize,
//                             @RequestParam(required = false, defaultValue = "1") int status) {
        public String getStudent(ModelMap model) {
        Integer status=1;
        List<Student> stuList =studentService.upLoadStudent(status);
        model.addAttribute("stuList", stuList);
        return "studentPage";
    }

    @DeleteMapping("/u/student/{id}")
    public String deleteStudent(@PathVariable Integer id) {
        studentService.deleteStudent(id);
        return "redirect:/u/student";
    }

    @GetMapping("/u/student/add")
    public String addPage() {
        return "addPage";
    }

    @PostMapping("/u/student")
    public String insertStudent(Student student) {
        Integer id=studentService.insertStudent(student);
        return "redirect:/u/student";
    }

    @PostMapping("/u/student/update/{id}")
    public String updateStudent(@PathVariable Integer id, ModelMap model) {
        model.addAttribute("id", id);

        return "updatePage";
    }

    @PutMapping("/u/student/{id}")
    public String updateStudent(@PathVariable Integer id, String key, String value) {
        studentService.updateStudent(id,key,value);
        return "redirect:/u/student";
    }

    //上传图片接口
    @RequestMapping(value = "/u/upLoadImage", method = RequestMethod.POST)
    public  String upLoad(MultipartFile photo, HttpServletRequest request, HttpServletResponse response, Model model)
            throws Exception {
//    public  String upLoad(@RequestParam(value="file",required=false)MultipartFile imageFile, HttpServletRequest request, HttpServletResponse response, Model model)
//    throws Exception {
        logger.info("upload user pic");
        if (!photo.isEmpty()) {
            Cookie[] cookie = request.getCookies();
            try {
                userService.uploadPhoto(cookie, photo,request);
                logger.error("upload user pic success");
            } catch (IllegalArgumentException argE) {
                logger.error(argE.getMessage());
                logger.error("upload user pic error");
            } catch (Throwable t) {
                logger.error(t.getMessage());
                logger.error("upload user pic unknown error");
            }
        }
        return "redirect:/u/student";
    }
}