package com.sit21c.recruit.web;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.recruit.service.RecruitService;
import com.sit21c.recruit.vo.JobPostingVo;
import com.sit21c.recruit.vo.RecruitmentApplyVo;

@Controller
public class RecruitController {
	
	@Value("${spring.servlet.multipart.location}")
	private String uploadDir;
	
	@Autowired
	private RecruitService recruitService;
	
	//recruits관련 컨트롤러
	
	/**
	 * 채용정보 & (채용신청서)화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/recruitmentInformation")
	public String recruitmentInformation(@RequestParam Map<String, Object> map) {
		System.out.println("recruitmentInformation 호출");
		return "/recruit/recruitmentInformation";
	}
	
	/**
	 * 채용정보 & (채용신청서 작성)화면 호출
	 * @param map
	 * @return
	 */
	/*
	 * @RequestMapping("/recruit/recruitmentMain") public String
	 * recruitmentMain(@RequestParam Map<String, Object> map) {
	 * System.out.println("recruitmentMain 호출"); return "/recruit/recruitmentMain";
	 * }
	 */
	
	/**
	 * 직무 채용정보
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/recruit/recruitmentPost", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
	public String showRecruitmentPost(@RequestParam("departmentId") String departmentId,
            @RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		int pageSize = 9; // 한 페이지에 표시할 공고 수
		List<JobPostingVo> jobPostings = recruitService.getJobPostingsByDepartmentId(departmentId, page, pageSize);
		String departmentName = recruitService.getDepartmentNameById(departmentId);
		
		int totalPostings = recruitService.getTotalJobPostingsCount(departmentId);
		int totalPages = (int) Math.ceil((double) totalPostings / pageSize);
		
		model.addAttribute("jobPostings", jobPostings);
		model.addAttribute("departmentId", departmentId);
		model.addAttribute("departmentName", departmentName);
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", totalPages);
		
		return "/recruit/recruitmentPost";
		}
	
	/**
	 * 인사제도 화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/personnelSystem")
	public String personnelSystem(@RequestParam Map<String, Object> map) {
		System.out.println("personnelSystem 호출");
		return "/recruit/personnelSystem";
	}
	
	/**
	 * 복지현황 화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/welfareStatus")
	public String welfareStatus(@RequestParam Map<String, Object> map) {
		System.out.println("welfareStatus 호출");
		return "/recruit/welfareStatus";
	}
	
	/**
	 * 입사지원 화면(입사신청) 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/recruitmentApply")
	public String openRecruitmentApply(@RequestParam Map<String, Object> map) {
		return "/recruit/recruitmentApply";
	}
	
	
	/**
	 * 입사지원서 제출
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/recruit/executeRecruitmentApply")
	public String executeRecruitmentApply(@ModelAttribute RecruitmentApplyVo recruitmentApplyVo) {
		try {
			//첨부파일 처리
			MultipartFile file = recruitmentApplyVo.getAttchFile();
			
			AttchFileVo attchFileVo = null;
			if(file != null && !file.isEmpty()) {
				
				LocalDate today = LocalDate.now();
				
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
				
				String fmtToday = today.format(formatter);
				
				String uuid = UUID.randomUUID().toString();
				
				attchFileVo = new AttchFileVo();
				attchFileVo.setFileName(uuid);
				attchFileVo.setFileOrgName(file.getOriginalFilename());
				attchFileVo.setFilePath(uploadDir + "/recruit/" + fmtToday);
				attchFileVo.setFileSize(file.getSize());
				attchFileVo.setFileType(file.getContentType());
				//디렉토리 생성
				File directory = new File(uploadDir + "/recruit/");
				
				if(!directory.exists()) {
					directory.mkdir();
				}
				
				Path path = Paths.get(attchFileVo.getFilePath() + attchFileVo.getFileName());
				//파일 저장
				file.transferTo(new File(path.toUri()));
			}
			
			recruitService.executeRecruitmentApply(recruitmentApplyVo, attchFileVo);
			
		}catch(Exception e) {
			e.printStackTrace();
			return "<script>alert('제출에 실패하였습니다.'); history.back();</script>";
		}
		
		return "<script>alert('제출에 성공하였습니다.'); location.href='/recruit/recruinmentPost';</script>";
	}
}
