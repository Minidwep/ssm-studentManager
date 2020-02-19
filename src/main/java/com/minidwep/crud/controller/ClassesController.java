package com.minidwep.crud.controller;

import com.minidwep.crud.bean.Classes;
import com.minidwep.crud.bean.Msg;
import com.minidwep.crud.dao.ClassesMapper;
import com.minidwep.crud.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ClassesController {

    @Autowired
    ClassesService classesService;

    @RequestMapping("/classes")
    @ResponseBody
    public Msg getStudents() {
        List<Classes> classes = classesService.getAll();
        return Msg.success().add("classes",classes);
    }
}
