package com.minidwep.crud.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import com.minidwep.crud.bean.Msg;
import com.minidwep.crud.bean.Student;
import com.minidwep.crud.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.List;

@Controller
public class StudentController {

    @Autowired
    StudentService studentService;



    @RequestMapping("/students")
    @ResponseBody
    public Msg getStudents() {
        List list = studentService.getAll();

        return Msg.success().add("list",list);
    }

    /**
     * 删除方法
     * @param studentId
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteStudent")
    public Msg deleteStudent(String studentId){
        studentService.deleteStudent(studentId);
        return Msg.success();
    }

    /**
     * 查询一个学生方法
     * @param studentId
     * @return
     */
    @ResponseBody
    @RequestMapping("/studentById")
    public Msg getStudentById(@RequestParam(value = "studentId")String studentId){
        if(!StringUtil.isEmpty(studentId)){
            Student student = new Student();
            student = studentService.getOne(studentId);
            return Msg.success().add("student",student);
        } else {
            return Msg.fail();
        }


    }

    /**
     * 插入学生方法
     */
    @RequestMapping(value="/insertStudent",method= RequestMethod.POST)
    //@PostMapping
    @ResponseBody
    public Msg saveStudent(@Valid Student student , BindingResult result) {
        System.out.println(student.toString());
        boolean exit = studentService.checkStudentNumber(student.getStudentNumber()+"");
        if(exit){
            studentService.insertStudent(student);
            return Msg.success();
        }else {
            return Msg.fail();
        }

    }

    /**
     * 更新方法
     * @param student
     * @return
     */
    @RequestMapping(value="/updateStudent",method= RequestMethod.POST)
    //@PostMapping
    @ResponseBody
    public Msg editStudent(@Valid Student student){
        System.out.println(student.toString());
        studentService.editStudent(student);
    return Msg.success();
    }



    /**
     * 检查学生学号是否可用
     * @param studentNumber
     * @return
     */
    @RequestMapping("/checkStudent")
    @ResponseBody
    public Msg checkUser(@RequestParam("studentNumber")String studentNumber) {
        System.out.println("testName =   "+studentNumber);
        String regx = "(^2\\d{5,}$)";
        if(!studentNumber.matches(regx)) {
            return Msg.fail().add("va_msg","学号必须以2开头且五位以上");
        }
        boolean b = studentService.checkStudentNumber(studentNumber);
        if(b) {
            return Msg.success();
        }
        return Msg.fail().add("va_msg","学号重复不可用");

    }

    @RequestMapping("/studentPage")
    @ResponseBody
    public Msg getStudentByPage(@RequestParam(value="pn",defaultValue="1")Integer pn) {
        //引入PageHelper插件
        //在查询之前调用,传入页码，以及分页每页得大小;
        PageHelper.startPage(pn, 5);
        //startPage后面紧跟得查询就是一个分页
        List<Student> emps = studentService.getAll();
        //使用pageInfo包装查询后得结果，只需要将pageinfo交给页面就行了。
        //封装了详细得信息，包括查询出来的数据。传入连续显示得页数。
        PageInfo page = new PageInfo(emps,5);
        return Msg.success().add("pageInfo",page);

    }
}
