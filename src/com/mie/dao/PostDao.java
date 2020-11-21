package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mie.util.DbUtil;
import com.mie.model.*;
import com.mie.controller.*;
import com.mie.util.*;

public class PostDao {

	/**
	 * This class handles the Member objects and the login component of the web
	 * app.
	 */
	static Connection currentCon = null;
	static ResultSet rs = null;
	static Connection connection;

	public PostDao() {
		connection = DbUtil.getConnection();
	}

	public static void like(String postid, String userid) {
		Post post = getPostById(postid);
		int likes = post.getPostLikes()+1;

		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update post set post_likes="+likes+" where post_id='"+postid+"'");

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//Record new post reaction
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into post_reaction(post_id,user_id) values (?, ?)");
			preparedStatement.setString(1, postid);
			preparedStatement.setString(2, userid);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//Updating the model
		//post.setPostLikes(likes);
		//post.setPostReactionUserId(getPostReactionsById(postid));
	}

	public static Post getPostById(String postid) {
		Post post = new Post();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from post where post_id='"+postid+"'");
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				post.setPostId(rs.getString("post_id"));
				post.setPostName(rs.getString("post_name"));
				post.setPostDesc(rs.getString("post_desc"));
				post.setPostPhoto(rs.getString("post_photo"));
				post.setPostLikes(rs.getInt("post_likes"));
				post.setPostLink(rs.getString("post_link"));
				post.setPostReactionUserId(getPostReactionsById(rs.getString("post_id")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return post;
	}
	
	public static List<Post> getAllPosts() {
		List<Post> posts = new ArrayList<Post>();
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from post");
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				Post post = new Post();
				post.setPostId(rs.getString("post_id"));
				post.setPostName(rs.getString("post_name"));
				post.setPostDesc(rs.getString("post_desc"));
				post.setPostPhoto(rs.getString("post_photo"));
				post.setPostLikes(rs.getInt("post_likes"));
				post.setPostLink(rs.getString("post_link"));
				post.setPostReactionUserId(getPostReactionsById(rs.getString("post_id")));
				posts.add(post);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return posts;
	}
	
	public static List<String> getPostReactionsById(String postid) {
		List<String> postreactions = new ArrayList<String>();
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Post_Reaction where post_id='"+postid+"'");
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				postreactions.add(rs.getString("user_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return postreactions;
	}

	public void unlike(String postid, String userid) {
		Post post = getPostById(postid);
		int likes = post.getPostLikes()- 1;

		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update post set post_likes="+likes+" where post_id='"+postid+"'");

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//Record new post reaction
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from post_reaction WHERE post_id = '"+postid+"' AND user_id='"+ userid +"'");

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
