package com.yipin.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DBHelper implements DBConfig{

	//�������
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
	//���������
	public static Statement openStmt(){
		try{
			return getCon().createStatement();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	//ִ������ɾ����
	public static int executeSQL(String sql){
		try{
			return openStmt().executeUpdate(sql);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return -1;
	}
	//ִ�в�ѯ
	public static ResultSet search(String sql){
		try{
			return openStmt().executeQuery(sql);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
}
