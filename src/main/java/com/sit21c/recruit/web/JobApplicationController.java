package com.sit21c.recruit.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.IOException;

@Controller
public class JobApplicationController {

    @Autowired
    private JavaMailSender mailSender;

    @PostMapping("/recruit/submitJobApplication")
    public String submitApplication(
            @RequestParam("jobApplicationName") String name,
            @RequestParam("jobApplicationEmail") String email,
            @RequestParam("jobApplicationPhone") String phone,
            @RequestParam("resumeFile") MultipartFile resumeFile,
            @RequestParam("recruitId") String recruitId) {

        try {
            sendEmail(name, email, phone, resumeFile);
            return "redirect:/recruit/recruitmentMain?success=true";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/recruit/recruitmentMain?success=false";
        }
    }

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
}
