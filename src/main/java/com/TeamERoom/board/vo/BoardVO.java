package com.TeamERoom.board.vo;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardVO {
	private int ID;
	private String type;
	private String title;
	private String body;
	private String write_date;
	private String fileName;
	private MultipartFile file;
	private int status;
	private int viewCount;
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
