package com.yipin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yipin.db.DBHelper;
import com.yipin.model.User;

public class UserDAO {
     
	//�鿴���е��û���Ϣ
	public static List<User> view(){
		String sql = "select * from user";
		return findBySQL(sql);
	}
	
	private static List<User> findBySQL(String sql){
		ResultSet rs = (ResultSet)DBHelper.search(sql);
		List<User> list = new ArrayList<User>();
		try{
			while(rs.next()){
				User user = new User();
				user.setUserid(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setEmail(rs.getString(4));
				user.setPrivileges(rs.getString(5));
				list.add(user);
			}
			return list;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	//�û���¼
	public static List<User> u_login(User user){
		String sql = "select * from user where 1=1 and privileges='" + "0" + "'";
		if(!user.getUsername().equals("") && !user.getPassword().equals("")){
			sql += " and username='" + user.getUsername() + "'" + "and password='" + user.getPassword()+"'";
			//System.out.println(sql);
		}else{
			List<User> list = new ArrayList<User>();
			return list;
		}
		return findBySQL(sql);
	}
	//����Ա��¼
	public static List<User> login(User user){
		String sql = "select * from user where 1=1 and privileges='" + "1" + "'";
		if(!user.getUsername().equals("") && !user.getPassword().equals("")){
			sql += " and username='" + user.getUsername() + "'" + "and password='" + user.getPassword()+"'";
			//System.out.println(sql);
		}else{
			List<User> list = new ArrayList<User>();
			return list;
		}
		return findBySQL(sql);
	}
	//�û�ע��
	public static int save(User user){
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into user(username,password,email,privileges) values(");
	    sbf.append("'" + user.getUsername() + "',");
	    sbf.append("'" + user.getPassword() + "',");
	    sbf.append("'" + user.getEmail() + "',");
	    sbf.append("'" + user.getPrivileges() + "')");
	    System.out.println(sbf);
	    return DBHelper.executeSQL(sbf.toString());
	}
	//ɾ���û�
	public static int delete(int id){
		String sql = "delete from user where userid = " + id;
		return DBHelper.executeSQL(sql);
	}
	//�����ݿ��е�һ����¼�����س�һ������
	public static User getObj(int id){
		String sql = "select * from user where userid=" + id;
		User user = new User();
		ResultSet rs = DBHelper.search(sql);
		try{
			if(rs.next()){
				user.setUserid(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setEmail(rs.getString(4));
				user.setPrivileges(rs.getString(5));
				return user;
			}
		}catch (SQLException e) {
				e.printStackTrace();
		}
	    return null;
	}
	//�޸��û���Ϣ
	public static int update(User user){
		String sql = "update user set username='" +user.getUsername()
		+ "',password='" + user.getPassword() + "',email='"
		+ user.getEmail() + "',privileges='" + user.getPrivileges() +
		"' where userid=" + user.getUserid();
		return DBHelper.executeSQL(sql);
	}
	// �޸Ĺ���Ա����
	public static int update_PWD(String username,String newpwd) {
		String sql = "update user set password='" + newpwd
				+ "'" + " where username='" + username + "'";
		return DBHelper.executeSQL(sql);
	}
	//ע��ʱ�鿴�û����Ƿ����
	public static boolean findUserByUsername(String username){
		boolean res = false;
		String sql = "select * from user where username='" + username + "'";
		System.out.println(sql);
		ResultSet rs = DBHelper.search(sql);
		
		try {
			if(rs.next()){
				res=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
}
