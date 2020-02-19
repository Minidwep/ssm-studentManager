package com.minidwep.crud.service;

import com.minidwep.crud.bean.Classes;
import com.minidwep.crud.dao.ClassesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassesService {

    @Autowired
    ClassesMapper classesMapper;

    public List<Classes> getAll(){
        return classesMapper.selectByExample(null);
    }
}
