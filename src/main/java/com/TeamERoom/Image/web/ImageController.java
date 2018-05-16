package com.TeamERoom.Image.web;

import org.springframework.stereotype.Controller;

import com.TeamERoom.Image.service.ImageService;

@Controller
public class ImageController {

	private ImageService imageService;

	public void setImageService(ImageService imageService) {
		this.imageService = imageService;
	}
	
	
}
