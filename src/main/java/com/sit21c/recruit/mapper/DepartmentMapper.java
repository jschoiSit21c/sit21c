package com.sit21c.recruit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sit21c.recruit.vo.DepartmentVo;
import com.sit21c.recruit.vo.JobPostingVo;

@Mapper
public interface DepartmentMapper {
    List<DepartmentVo> getAllDepartments();
}
