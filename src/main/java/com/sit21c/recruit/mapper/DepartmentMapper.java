package com.sit21c.recruit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sit21c.recruit.vo.DepartmentVo;

@Mapper
public interface DepartmentMapper {
    List<DepartmentVo> getAllDepartments();
}
