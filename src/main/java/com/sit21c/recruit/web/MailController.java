package com.sit21c.recruit.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MailController {

    @Autowired
    private JavaMailSender mailSender;

    @PostMapping("/submitApplication")
    public String submitApplication(
        @RequestParam("name") String name,
        @RequestParam("email") String email,
        @RequestParam("phone") String phone
    ) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo("sitmento@gmail.com");
            message.setSubject("[채용지원] " + name + "님의 지원서");
            message.setText("지원자 정보:\n\n"
                    + "이름: " + name + "\n"
                    + "이메일: " + email + "\n"
                    + "전화번호: " + phone);

            mailSender.send(message);
            return "redirect:/recruit/recruitmentMain?success=true";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/recruit/recruitmentMain?error=true";
        }
    }
}
