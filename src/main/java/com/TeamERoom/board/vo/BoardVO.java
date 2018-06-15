package com.TeamERoom.board.vo;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

import com.TeamERoom.member.vo.MemberVO;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardVO {
<<<<<<< HEAD
   
   private int ID;
   private String type;
   private String title;
   private String body;
   private String write_date;
   private int status;
   
   private int viewCount;
   
   private String fileName;
   private MultipartFile file;
   
   private MemberVO memberVO;
   
   public String save() {
      if ( file != null && !file.isEmpty() ) {
         fileName = file.getOriginalFilename().toLowerCase();
         String currentTime = new SimpleDateFormat("yyyyMMddHHmmss")
                    .format(System.currentTimeMillis());
         try {
            File newFile = new File("C:\\Users\\Admin\\Desktop\\팀프로젝트 종합\\boardImage\\"
                        + UUID.randomUUID() + "_" + currentTime + fileName);
            file.transferTo(newFile);
            return newFile.getAbsolutePath();
         } catch (IllegalStateException e) {
            throw new RuntimeException(e.getMessage(), e);
         } catch (IOException e) {
            throw new RuntimeException(e.getMessage(), e);
         }
      }
      return null;
   }
}
=======
		private int ID;
		private String type;
		@NotEmpty(message = "제목을 입력해 주세요.")
		private String title;
		@NotEmpty(message = "본문을 입력해 주세요.")
		private String body;
		private String write_date;
		private String fileName;
		private MultipartFile file;
		private StringBuffer testString;
		private int status;
		private int viewCount;
		public String save() {
			if ( file != null && !file.isEmpty() ) {
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss")
                    .format(System.currentTimeMillis());
			fileName = UUID.randomUUID() + "_" + currentTime + file.getOriginalFilename().toLowerCase();
			try {
				File newFile = new File("C:\\Users\\Admin\\Desktop\\팀프로젝트 종합\\boardImage\\"
						+ fileName);
				file.transferTo(newFile);
				return newFile.getAbsolutePath();
			} catch (IllegalStateException e) {
				throw new RuntimeException(e.getMessage(), e);
			} catch (IOException e) {
				throw new RuntimeException(e.getMessage(), e);
			}
		}
		return null;
	}
		public String getFileName() {
			if ( fileName == null ) {
				fileName ="";
			}
			return fileName;
		}
		
		
		public void setBody(String body) {
			if ( body.equals("<p>&nbsp;</p>") ) {
				this.body ="";
			}
			else {
				this.body = body;
			}
		}
		
}
>>>>>>> origin/진항
