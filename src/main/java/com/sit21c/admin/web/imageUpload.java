package com.sit21c.admin.web;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/popup/*")
public class imageUpload {
	// 파일 업로드 경로
	String PATH = System.getProperty("user.home");
    String imagePath = PATH + "/git/sit21c/src/main/webapp/image";
    
    @PostMapping("/popup/imageUpload")
    public ResponseEntity<?> imageUpload(@RequestParam MultipartFile file) throws Exception{

        File Folder = new File(imagePath);
    	if (!Folder.exists()) {
    		try{
    		    Folder.mkdir(); //폴더 생성합니다. ("새폴더"만 생성)
    	        } 
    	        catch(Exception e){
    		    e.getStackTrace();
    		}        
             }else {
    	}
        
        
        try {
            // 업로드 파일의 이름
            String originalFileName = file.getOriginalFilename();

            // 업로드 파일의 확장자
            String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));

            // 업로드 된 파일이 중복될 수 있어서 파일 이름 재설정
            String reFileName = UUID.randomUUID().toString() + fileExtension;

            // 업로드 경로에 파일명을 변경하여 저장
            file.transferTo(new File(imagePath, reFileName));
            // 파일이름을 재전송
            Map<String, String> data = new HashMap<String, String>();
            
            data.put("reFileName", reFileName);
            data.put("path", imagePath);
            return ResponseEntity.ok(data);
            
            
            
        }catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.badRequest().body("업로드 에러");
        }
        
        
    }


    @PostMapping("/popup/imageDelete")
    public void imageDelete(@RequestParam String file) throws Exception{


        try {

            Path path = Paths.get(imagePath, file);
            Files.delete(path);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
