package com.sit21c.recruit.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sit21c.recruit.service.DepartmentService;
import com.sit21c.recruit.vo.DepartmentVo;

import java.util.List;

@Controller
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @RequestMapping("/recruit/recruitmentMain")
    public String showRecruitmentPage(Model model) {
        return "/recruit/recruitmentMain";
    }
    
    //기존거 백업함 - 다 쓰고 삭제 요.
    @RequestMapping("/recruit/recruitmentMainOld")
    public String showRecruitmentPageOld(Model model) {
    	List<DepartmentVo> departments = departmentService.getAllDepartments();
    	model.addAttribute("departments", departments);
    	return "/recruit/recruitmentMainOld";
    }
}