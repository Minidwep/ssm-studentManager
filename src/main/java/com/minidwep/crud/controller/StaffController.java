package com.minidwep.crud.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.minidwep.crud.bean.Msg;
import com.minidwep.crud.bean.Staff;
import com.minidwep.crud.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class StaffController {

    @Autowired
    StaffService staffService;

    @RequestMapping("toStaff")
    public String toTeacher(){
        return "staff";
    }

    @RequestMapping("/staffPage")
    @ResponseBody
    public Msg getStudentByPage(@RequestParam(value="pn",defaultValue="1")Integer pn) {
        PageHelper.startPage(pn, 5);
        List<Staff> emps = staffService.getAll();
        PageInfo page = new PageInfo(emps,5);
        return Msg.success().add("pageInfo",page);

    }
}
