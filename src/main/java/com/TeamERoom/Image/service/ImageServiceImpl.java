package com.TeamERoom.Image.service;

import com.TeamERoom.Image.dao.ImageDao;

public class ImageServiceImpl implements ImageService{

	private ImageDao imageDao;

	public void setImageDao(ImageDao imageDao) {
		this.imageDao = imageDao;
	}
	
	
}
