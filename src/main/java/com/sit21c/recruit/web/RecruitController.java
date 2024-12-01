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
import org.springframework.security.access.prepost.PreAuthorize;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sit21c.common.service.CommonService;
import com.sit21c.common.vo.AttchFileVo;
import com.sit21c.common.vo.BoardVo;
import com.sit21c.login.vo.LoginVo;
import com.sit21c.recruit.service.RecruitService;
import com.sit21c.recruit.vo.JobPostingVo;
import com.sit21c.recruit.vo.JobApplicationVo;
import com.sit21c.recruit.vo.RecruitmentVo;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Controller
public class RecruitController {
	
	@Value("${spring.servlet.multipart.location}")
	private String uploadDir;
	
	@Autowired
	private RecruitService recruitService;
	
	@Autowired
	private CommonService commonService;
	
	@Autowired
    private JavaMailSender mailSender;
	
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
	public String showRecruitmentPage(RecruitmentVo recruitmentVo, Model model) {
		try {
			// 페이징 계산을 위한 기본값 설정
			if (recruitmentVo.getCurrentPage() <= 0) {
				recruitmentVo.setCurrentPage(1);
			}
			if (recruitmentVo.getPageSize() <= 0) {
				recruitmentVo.setPageSize(10);
			}

			// 시작 레코드 계산
			recruitmentVo.setStartRecord((recruitmentVo.getCurrentPage() - 1) * recruitmentVo.getPageSize() + 1);

			// 데이터 조회
			List<RecruitmentVo> list = recruitService.selectRecruitmentList(recruitmentVo);

			// 총 레코드 수를 첫 번째 데이터에서 가져옴
			if (!list.isEmpty()) {
				recruitmentVo.setTotalRecords(list.get(0).getTotalRecords());
				recruitmentVo.calculatePaging(); // 페이징 계산
			}

			// 모델에 데이터 추가
			model.addAttribute("list", list);
			model.addAttribute("paging", recruitmentVo); // 페이징 정보 전달
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return "/recruit/recruitmentMain";
	}
	
	
	/**
	 * 채용정보 상세 화면 호출
	 * @param model
	 * @return
	 */
	@RequestMapping("/recruit/recruitmentDetail")
	public String showRecruitmentDetailPage(RecruitmentVo recruitmentVo, Model model) {
		try {
			RecruitmentVo item = recruitService.selectRecruitment(recruitmentVo);
			
			if(item == null) {
				//값이 없을경우 루트로 보내버림.
				return "redirect:/";
			}
			
			model.addAttribute("item", item);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/recruit/recruitmentDetail";
	}
	
	/**
	 * 채용공고 작성 화면 호출
	 * @param model
	 * @return
	 */
	@PreAuthorize("hasRole('SA')")
	@RequestMapping("/recruit/recruitmentWrite")
	public String showRecruitmentWritePage(Model model) {
		model.addAttribute("jobCategory", commonService.selectComCode("job_category")); //업무분야코드
		model.addAttribute("recruitType", commonService.selectComCode("recruit_type")); //채용형태
		model.addAttribute("isWrite", true); //등록/수정화면 같이쓰기위한 변수
		return "/recruit/recruitmentWrite";
	}
	
	//채용공고 저장
	@SuppressWarnings("finally")
	@PreAuthorize("hasRole('SA')")
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
	
	/**
	 * 채용공고 수정 화면 호출
	 * @param model
	 * @return
	 */
	@PreAuthorize("hasRole('SA')")
	@RequestMapping("/recruit/recruitmentUpdate")
	public String showRecruitmentUpdatePage(RecruitmentVo recruitmentVo, Model model) {
		try {
			RecruitmentVo recruitResult = recruitService.selectRecruitment(recruitmentVo);
			model.addAttribute("recruitResult", recruitResult);
			model.addAttribute("jobCategory", commonService.selectComCode("job_category")); //업무분야코드
			model.addAttribute("recruitType", commonService.selectComCode("recruit_type")); //채용형태
			model.addAttribute("isWrite", false); //등록/수정화면 같이쓰기위한 변수
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "/recruit/recruitmentWrite";
	}
	
	//채용공고 수정
	@SuppressWarnings("finally")
	@PreAuthorize("hasRole('SA')")
	@ResponseBody
	@PostMapping("/recruit/modifyRecruitment")
	public HashMap<String, Object> modifyRecruitment(@RequestBody RecruitmentVo recruitmentVo, ModelMap model,HttpSession session){
		HashMap<String, Object> successMap = new HashMap<>();
		try {
			if(recruitmentVo != null && session.getAttribute("loginInfo") != null) {
				LoginVo loginInfo =  (LoginVo) session.getAttribute("loginInfo");
				recruitmentVo.setRecruitAuthor(loginInfo.getId());
				
				int recruitId = recruitService.modifyRecruitment(recruitmentVo);
				
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
	
	/**
	 * 입사지원서 제출
	 * @param recruitmentApplyVo
	 * @return
	 */
	@RequestMapping("/recruit/submitJobApplication")
	public String submitJobApplication(@ModelAttribute JobApplicationVo jobApplicationVo, RedirectAttributes redirectAttributes) {
		try {
			
			//첨부파일 처리
			MultipartFile file = jobApplicationVo.getResumeFile();
			
			AttchFileVo attchFileVo = null;
			if(file != null && !file.isEmpty()) {
				
				LocalDate today = LocalDate.now();
				
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
				
				String fmtToday = today.format(formatter);
				
				String uuid = UUID.randomUUID().toString();
				
				attchFileVo = new AttchFileVo();
				attchFileVo.setFileName(uuid);
				attchFileVo.setFileOrgName(file.getOriginalFilename());
				attchFileVo.setFilePath(uploadDir + "/recruit/" + fmtToday); //경로에 날짜 추가
				attchFileVo.setFileSize(file.getSize());
				attchFileVo.setFileType(file.getContentType());
				//디렉토리 생성
//				File directory = new File(uploadDir + "/recruit/");
				File directory = new File(attchFileVo.getFilePath());
				
				if(!directory.exists()) {
					directory.mkdirs();
				}
				
				Path path = Paths.get(attchFileVo.getFilePath(), attchFileVo.getFileName());
				sendEmail(jobApplicationVo.getJobApplicationName(), jobApplicationVo.getJobApplicationEmail(), jobApplicationVo.getJobApplicationPhone(), file);
				//파일 저장
				file.transferTo(new File(path.toUri()));
			}
			
			
			
			recruitService.submitJobApplication(jobApplicationVo, attchFileVo);
			
		}catch(Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("submitJobApplicationMsg", "입사 지원에 실패하였습니다.");
			return "redirect:/recruit/recruitmentDetail?recruitId=" + jobApplicationVo.getRecruitId();
		}
		redirectAttributes.addFlashAttribute("submitJobApplicationMsg", "입사 지원이 성공적으로 제출되었습니다.");
		return "redirect:/recruit/recruitmentDetail?recruitId=" + jobApplicationVo.getRecruitId();
	}
	
	/**
	 * 입사지원자 목록 조회 //비동기
	 * @param jobApplicationVo
	 * @return
	 */
	@PreAuthorize("hasRole('SA')")
	@ResponseBody
	@RequestMapping("/recruit/selectApplicants")
	public Map<String, Object> selectApplicants(@ModelAttribute JobApplicationVo jobApplicationVo) {
		Map<String, Object> resultMap = new HashMap<>();
		// 시작 레코드 계산
		jobApplicationVo.setStartRecord((jobApplicationVo.getCurrentPage() - 1) * jobApplicationVo.getPageSize());
		try {
			List<JobApplicationVo> list = recruitService.selectApplicants(jobApplicationVo);
			
			// 총 레코드 및 페이지 계산
			if (!list.isEmpty()) {
				jobApplicationVo.setTotalRecords(list.get(0).getTotalRecords());
				jobApplicationVo.calculatePaging();
			}
			resultMap.put("list", list);
			resultMap.put("paging", jobApplicationVo);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;
	}
	
	// 지원 메일 발송 // 불필요. 삭제
//	@PostMapping("/recruit/submitJobApplication")
//    public String submitApplication(
//            @RequestParam("jobApplicationName") String name,
//            @RequestParam("jobApplicationEmail") String email,
//            @RequestParam("jobApplicationPhone") String phone,
//            @RequestParam("resumeFile") MultipartFile resumeFile,
//            @RequestParam("recruitId") String recruitId) {
//
//        try {
//            sendEmail(name, email, phone, resumeFile);
//            return "redirect:/recruit/recruitmentMain?success=true";
//        } catch (Exception e) {
//            e.printStackTrace();
//            return "redirect:/recruit/recruitmentMain?success=false";
//        }
//    }

    private void sendEmail(String name, String email, String phone, MultipartFile resumeFile) throws MessagingException, IOException {
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

        helper.setTo("sitmento@gmail.com"); // 지원서가 전송될 이메일 주소
        helper.setSubject("새로운 채용 지원서 제출");
        helper.setText(
                String.format("지원자 정보:\n이름: %s\n이메일: %s\n전화번호: %s", name, email, phone),
                false
        );

        // 첨부파일 추가
        if (!resumeFile.isEmpty()) {
            helper.addAttachment(resumeFile.getOriginalFilename(), resumeFile);
        }
        
        mailSender.send(message);
    }
		
//	/**
//	 * 직무 채용정보
//	 * @param map
//	 * @return
//	 */
//	@RequestMapping(value = "/recruit/recruitmentPost", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
//	public String showRecruitmentPost(@RequestParam("departmentId") String departmentId,
//			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
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
//	@RequestMapping(value = "/recruit/api/jobs", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
//	public ResponseEntity<Map<String, Object>> getJobListings(
//			@RequestParam("departmentId") String departmentId,
//			@RequestParam(value = "page", defaultValue = "1") int page) {
//		
//		int pageSize = 9; // 한 페이지에 표시할 공고 수
//		List<JobPostingVo> jobPostings = recruitService.getJobPostingsByDepartmentId(departmentId, page, pageSize);
//		int totalPostings = recruitService.getTotalJobPostingsCount(departmentId);
//		int totalPages = (int) Math.ceil((double) totalPostings / pageSize);
//
//		Map<String, Object> response = new HashMap<>();
//		response.put("jobPostings", jobPostings);
//		response.put("currentPage", page);
//		response.put("totalPages", totalPages);
//
//		return ResponseEntity.ok(response);
//	}
//
//	@ResponseBody
//	@RequestMapping(value = "/recruit/api/job/{jobId}", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
//	public ResponseEntity<JobPostingVo> getJobDetails(@PathVariable("jobId") String jobId) {
//		JobPostingVo jobPosting = recruitService.getJobPostingById(jobId);
//		if (jobPosting != null) {
//			return ResponseEntity.ok(jobPosting);
//		} else {
//			return ResponseEntity.notFound().build();
//		}
//	}
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
