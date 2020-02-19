package com.minidwep.crud.service;

import com.minidwep.crud.bean.Student;
import com.minidwep.crud.bean.StudentExample;
import com.minidwep.crud.dao.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class StudentService {
    @Autowired
    StudentMapper studentMapper;

    public List<Student> getAll() {
        // TODO Auto-generated method stub
        return studentMapper.selectWithClassesByExample(null);
    }
    public Student getOne(String id) {
        // TODO Auto-generated method stub
        return studentMapper.selectWithClassesByPrimaryKey(Integer.parseInt(id));
    }
    public void  insertStudent(Student student){
        studentMapper.insertSelective(student);
    }
    public boolean checkStudentNumber(String studentNumber){
        StudentExample example = new StudentExample();
        StudentExample.Criteria criteria = example.createCriteria();
//        criteria.andClassesIdEqualTo(Integer.parseInt(studentNumber));
        criteria.andStudentNumberEqualTo(Integer.parseInt(studentNumber));
        long count = studentMapper.countByExample(example);
        System.out.println("testCount = " + count);
        // TODO Auto-generated method stub
        return count == 0;
    }

    public void editStudent(Student student){
        studentMapper.updateByPrimaryKeySelective(student);
    }

    public void deleteStudent(String studentId){
        studentMapper.deleteByPrimaryKey(Integer.parseInt(studentId));
    }
}
