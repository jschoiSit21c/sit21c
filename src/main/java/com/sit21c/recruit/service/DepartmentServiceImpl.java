package com.sit21c.recruit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sit21c.recruit.mapper.DepartmentMapper;
import com.sit21c.recruit.vo.DepartmentVo;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    @Override
    public List<DepartmentVo> getAllDepartments() {
        return departmentMapper.getAllDepartments();
    }
}
