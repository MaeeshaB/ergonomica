package com.mie.model;

import java.util.Date;

public class Post {
	
	private int post_id;
	private int user_id;
	private String post_name;
	private String prod_desc;
	private String post_photo;
	private Integer post_likes;
	private String post_link;

	public int getPostId() {
		return post_id;
	}

	public void setPostId(int post_id) {
		this.post_id = post_id;
	}
	
	public int getPostUserId() {
		return user_id;
	}

	public void setPostUserId(int user_id) {
		this.user_id = user_id;
	}

	public String getPostName() {
		return post_name;
	}

	public void getPostName(String post_name) {
		this.post_name = post_name;
	}

	public int getPostLikes() {
		return post_likes;
	}

	public void setPostLikes(int post_likes) {
		this.post_likes = post_likes;
	}
	
	public String getPostDesc() {
		return prod_desc;
	}

	public void getPostDesc(String prod_desc) {
		this.prod_desc = prod_desc;
	}
	
	public String getPostPhoto() {
		return post_photo;
	}

	public void getPostPhoto(String post_photo) {
		this.post_photo = post_photo;
	}
	
	public String getPostLink() {
		return post_link;
	}

	public void getPostLink(String post_link) {
		this.post_link = post_link;
	}


	@Override
	public String toString() {
		return "Post [post_id=" + post_id + ", post_name=" + post_name
				+ ", post_likes=" + post_likes +  ", prod_desc=" + prod_desc 
				+", post_photo=" + post_photo + ", post_link=" + post_link +"]";
	}
}