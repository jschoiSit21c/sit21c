package com.sit21c.common.web;

import java.io.FileNotFoundException;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sit21c.common.service.CommonService;
import com.sit21c.common.vo.AttchFileVo;

@Controller
public class CommonController {
	
	@Autowired
	private CommonService commonService;
	
	@RequestMapping("/file/download")
	public ResponseEntity<Resource> downloadFile(@RequestParam int fileId){
		try {
			AttchFileVo fileVo = commonService.selectFileInfo(fileId);
			
			//경로
			Path path = Paths.get(fileVo.getFilePath(), fileVo.getFileName());
			Resource resource = new UrlResource(path.toUri());
			
			if(!resource.exists()) {
				throw new FileNotFoundException("파일이 존재하지 않습니다.");
			}
			
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_DISPOSITION, "attchment; filename=\"" + fileVo.getFileOrgName() + "\"")
					.body(resource);
			
		}catch(Exception e) {
			return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
		}
	}
}
