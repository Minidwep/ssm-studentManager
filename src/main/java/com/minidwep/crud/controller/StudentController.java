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
     * ɾ������
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
     * ��ѯһ��ѧ������
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
     * ����ѧ������
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
     * ���·���
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
     * ���ѧ��ѧ���Ƿ����
     * @param studentNumber
     * @return
     */
    @RequestMapping("/checkStudent")
    @ResponseBody
    public Msg checkUser(@RequestParam("studentNumber")String studentNumber) {
        System.out.println("testName =   "+studentNumber);
        String regx = "(^2\\d{5,}$)";
        if(!studentNumber.matches(regx)) {
            return Msg.fail().add("va_msg","ѧ�ű�����2��ͷ����λ����");
        }
        boolean b = studentService.checkStudentNumber(studentNumber);
        if(b) {
            return Msg.success();
        }
        return Msg.fail().add("va_msg","ѧ���ظ�������");

    }

    @RequestMapping("/studentPage")
    @ResponseBody
    public Msg getStudentByPage(@RequestParam(value="pn",defaultValue="1")Integer pn) {
        //����PageHelper���
        //�ڲ�ѯ֮ǰ����,����ҳ�룬�Լ���ҳÿҳ�ô�С;
        PageHelper.startPage(pn, 5);
        //startPage��������ò�ѯ����һ����ҳ
        List<Student> emps = studentService.getAll();
        //ʹ��pageInfo��װ��ѯ��ý����ֻ��Ҫ��pageinfo����ҳ������ˡ�
        //��װ����ϸ����Ϣ��������ѯ���������ݡ�����������ʾ��ҳ����
        PageInfo page = new PageInfo(emps,5);
        return Msg.success().add("pageInfo",page);

    }
}
