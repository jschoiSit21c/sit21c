package com.sit21c.recruit.web;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sit21c.common.service.CommonService;
import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.common.vo.BoardVo;
import com.sit21c.login.vo.LoginVo;
import com.sit21c.recruit.service.RecruitService;
import com.sit21c.recruit.vo.JobPostingVo;
import com.sit21c.recruit.vo.RecruitmentApplyVo;
import com.sit21c.recruit.vo.RecruitmentVo;

@Controller
public class RecruitController {
	
	@Value("${spring.servlet.multipart.location}")
	private String uploadDir;
	
	@Autowired
	private RecruitService recruitService;
	
	@Autowired
	private CommonService commonService;
	
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
	 * 채용정보 화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/recruitmentMain")
	public String showRecruitmentPage(Model model) {
		return "/recruit/recruitmentMain";
	}
	
	
	/**
	 * 채용정보 상세(채용신청서 제출) 화면 호출
	 * @param model
	 * @return
	 */
	@RequestMapping("/recruit/recruitmentDetail")
	public String showRecruitmentDetailPage(Model model) {
		return "/recruit/recruitmentDetail";
	}
	
	/**
	 * 채용공고 작성 화면 호출
	 * @param model
	 * @return
	 */
	@RequestMapping("/recruit/recruitmentWrite")
	public String showRecruitmentWritePage(Model model) {
		model.addAttribute("jobCategory", commonService.selectComCode("job_category")); //업무분야코드
		model.addAttribute("recruitType", commonService.selectComCode("recruit_type")); //채용형태
		return "/recruit/recruitmentWrite";
	}
	
	//채용공고 저장
	@SuppressWarnings("finally")
	@ResponseBody
	@PostMapping("/recruit/saveRecruitment")
	public HashMap<String, Object> saveRecruitment(@RequestBody RecruitmentVo recruitmentVo, ModelMap model,HttpSession session){
		HashMap<String, Object> successMap = new HashMap<>();
		try {
			if(recruitmentVo != null && session.getAttribute("loginInfo") != null) {
				LoginVo loginInfo =  (LoginVo) session.getAttribute("loginInfo");
				recruitmentVo.setRecruitAuthor(loginInfo.getId());
				
				int recruitId = recruitService.saveRecruitment(recruitmentVo);
				
				successMap.put("isSuccess", true);
				successMap.put("recruitId", recruitmentVo.getRecruitId());
			}else {
				successMap.put("isSuccess", false);
			}
			
		}catch(Exception e) {
			successMap.put("isSuccess", false);
		}finally {
			return successMap;
		}
		
		
	}
	
	
//	/**
//	 * 직무 채용정보
//	 * @param map
//	 * @return
//	 */
//	@RequestMapping(value = "/recruit/recruitmentPost", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
//	public String showRecruitmentPost(@RequestParam("departmentId") String departmentId,
//            @RequestParam(value = "page", defaultValue = "1") int page, Model model) {
//		int pageSize = 9; // 한 페이지에 표시할 공고 수
//		List<JobPostingVo> jobPostings = recruitService.getJobPostingsByDepartmentId(departmentId, page, pageSize);
//		String departmentName = recruitService.getDepartmentNameById(departmentId);
//		
//		int totalPostings = recruitService.getTotalJobPostingsCount(departmentId);
//		int totalPages = (int) Math.ceil((double) totalPostings / pageSize);
//		
//		model.addAttribute("jobPostings", jobPostings);
//		model.addAttribute("departmentId", departmentId);
//		model.addAttribute("departmentName", departmentName);
//		model.addAttribute("currentPage", page);
//		model.addAttribute("totalPages", totalPages);
//		
//		return "/recruit/recruitmentPost";
//	}
//	
//	@ResponseBody
//    @RequestMapping(value = "/recruit/api/jobs", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
//    public ResponseEntity<Map<String, Object>> getJobListings(
//            @RequestParam("departmentId") String departmentId,
//            @RequestParam(value = "page", defaultValue = "1") int page) {
//        
//        int pageSize = 9; // 한 페이지에 표시할 공고 수
//        List<JobPostingVo> jobPostings = recruitService.getJobPostingsByDepartmentId(departmentId, page, pageSize);
//        int totalPostings = recruitService.getTotalJobPostingsCount(departmentId);
//        int totalPages = (int) Math.ceil((double) totalPostings / pageSize);
//
//        Map<String, Object> response = new HashMap<>();
//        response.put("jobPostings", jobPostings);
//        response.put("currentPage", page);
//        response.put("totalPages", totalPages);
//
//        return ResponseEntity.ok(response);
//    }
//
//    @ResponseBody
//    @RequestMapping(value = "/recruit/api/job/{jobId}", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
//    public ResponseEntity<JobPostingVo> getJobDetails(@PathVariable("jobId") String jobId) {
//        JobPostingVo jobPosting = recruitService.getJobPostingById(jobId);
//        if (jobPosting != null) {
//            return ResponseEntity.ok(jobPosting);
//        } else {
//            return ResponseEntity.notFound().build();
//        }
//    }
//	
//	/**
//	 * 인사제도 화면 호출
//	 * @param map
//	 * @return
//	 */
//	@RequestMapping("/recruit/personnelSystem")
//	public String personnelSystem(@RequestParam Map<String, Object> map) {
//		System.out.println("personnelSystem 호출");
//		return "/recruit/personnelSystem";
//	}
//	
//	/**
//	 * 복지현황 화면 호출
//	 * @param map
//	 * @return
//	 */
//	@RequestMapping("/recruit/welfareStatus")
//	public String welfareStatus(@RequestParam Map<String, Object> map) {
//		System.out.println("welfareStatus 호출");
//		return "/recruit/welfareStatus";
//	}
//	
//	/**
//	 * 입사지원 화면(입사신청) 호출
//	 * @param map
//	 * @return
//	 */
//	@RequestMapping("/recruit/recruitmentApply")
//	public String openRecruitmentApply(@RequestParam Map<String, Object> map) {
//		return "/recruit/recruitmentApply";
//	}
//	
//	
//	/**
//	 * 입사지원서 제출
//	 * @return
//	 */
//	@ResponseBody
//	@RequestMapping("/recruit/executeRecruitmentApply")
//	public String executeRecruitmentApply(@ModelAttribute RecruitmentApplyVo recruitmentApplyVo) {
//		try {
//			//첨부파일 처리
//			MultipartFile file = recruitmentApplyVo.getAttchFile();
//			
//			AttchFileVo attchFileVo = null;
//			if(file != null && !file.isEmpty()) {
//				
//				LocalDate today = LocalDate.now();
//				
//				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
//				
//				String fmtToday = today.format(formatter);
//				
//				String uuid = UUID.randomUUID().toString();
//				
//				attchFileVo = new AttchFileVo();
//				attchFileVo.setFileName(uuid);
//				attchFileVo.setFileOrgName(file.getOriginalFilename());
//				attchFileVo.setFilePath(uploadDir + "/recruit/" + fmtToday);
//				attchFileVo.setFileSize(file.getSize());
//				attchFileVo.setFileType(file.getContentType());
//				//디렉토리 생성
//				File directory = new File(uploadDir + "/recruit/");
//				
//				if(!directory.exists()) {
//					directory.mkdir();
//				}
//				
//				Path path = Paths.get(attchFileVo.getFilePath() + attchFileVo.getFileName());
//				//파일 저장
//				file.transferTo(new File(path.toUri()));
//			}
//			
//			recruitService.executeRecruitmentApply(recruitmentApplyVo, attchFileVo);
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//			return "<script>alert('제출에 실패하였습니다.'); history.back();</script>";
//		}
//		
//		return "<script>alert('제출에 성공하였습니다.'); location.href='/recruit/recruinmentPost';</script>";
//	}
//	
	/**
	 * 인재상 화면 호출
	 * @param map
	 * @return
	 */
	@RequestMapping("/recruit/talent")
	public String openTalent(@RequestParam Map<String, Object> map) {
		return "/recruit/talent";
	}
}
