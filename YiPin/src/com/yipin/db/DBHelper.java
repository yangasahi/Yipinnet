package com.yipin.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DBHelper implements DBConfig{

	//获得连接
	public static Connection getCon(){
		try{
			Class.forName(DRIVER);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		try{
			return DriverManager.getConnection(URL,USER_NAME,PWD);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	//获得语句对象
	public static Statement openStmt(){
		try{
			return getCon().createStatement();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	//执行增、删、改
	public static int executeSQL(String sql){
		try{
			return openStmt().executeUpdate(sql);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return -1;
	}
	//执行查询
	public static ResultSet search(String sql){
		try{
			return openStmt().executeQuery(sql);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
}
