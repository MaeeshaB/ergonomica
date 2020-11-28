package com.mie.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Post {
	
	private String post_id;
	private String post_name;
	private String prod_desc;
	private String post_photo;
	private int post_likes;
	private String post_link;
	private List<String> postreaction_userids;
	
	public Post() {
		postreaction_userids = new ArrayList<String>();
	}

	public String getPostId() {
		return post_id;
	}

	public void setPostId(String post_id) {
		this.post_id = post_id;
	}

	public String getPostName() {
		return post_name;
	}

	public void setPostName(String post_name) {
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

	public void setPostDesc(String prod_desc) {
		this.prod_desc = prod_desc;
	}
	
	public String getPostPhoto() {
		return post_photo;
	}

	public void setPostPhoto(String post_photo) {
		this.post_photo = post_photo;
	}
	
	public String getPostLink() {
		return post_link;
	}

	public void setPostLink(String post_link) {
		this.post_link = post_link;
	}
	
	public List<String> getPostReactionUserId() {
		return postreaction_userids;
	}

	public void setPostReactionUserId(List<String> userids) {
		this.postreaction_userids = userids;
	}
	
	public void addPostReactionUserId(String userid) {
		this.postreaction_userids.add(userid);
	}
	
	public String ContainsUserId(String userid) {
		if (postreaction_userids.contains(userid)) {
			return "&#x2665;";
		}
		return "&#9825;";
	}
	
	public String liked(String userid) {
		if (postreaction_userids.contains(userid)) {
			return "unlike";
		}
		return "like";
	}
	
	@Override
	public String toString() {
		return "Post [post_id=" + post_id + ", post_name=" + post_name
				+ ", post_likes=" + post_likes +  ", prod_desc=" + prod_desc 
				+", post_photo=" + post_photo + ", post_link=" + post_link +"]";
	}
}