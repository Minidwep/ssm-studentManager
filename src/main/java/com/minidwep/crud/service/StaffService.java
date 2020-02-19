package com.minidwep.crud.service;

import com.minidwep.crud.bean.Staff;
import com.minidwep.crud.dao.StaffMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StaffService {
    @Autowired
    StaffMapper staffMapper;
    public List<Staff> getAll() {
        return staffMapper.selectByExample(null);
    }
}
