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

public class WorkspaceDao {

	static Connection currentCon = null;
	static ResultSet rs = null;
	static Connection connection;

	public WorkspaceDao() {
		connection = DbUtil.getConnection();
	}
	
	
	public static void addProduct(int userid, int prodid) {
		//insert into the user_workspace relation
	}
	
	
	public static void deleteProduct(int userid, int prodid) {
		//delete from the user_workspace relation
	}

}
