package com.yipin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yipin.db.DBHelper;
import com.yipin.model.User;

public class UserDAO {
     
	//查看所有的用户信息
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
	//用户登录
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
	//管理员登录
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
	//用户注册
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
	//删除用户
	public static int delete(int id){
		String sql = "delete from user where userid = " + id;
		return DBHelper.executeSQL(sql);
	}
	//把数据库中的一条记录，加载成一个对象
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
	//修改用户信息
	public static int update(User user){
		String sql = "update user set username='" +user.getUsername()
		+ "',password='" + user.getPassword() + "',email='"
		+ user.getEmail() + "',privileges='" + user.getPrivileges() +
		"' where userid=" + user.getUserid();
		return DBHelper.executeSQL(sql);
	}
	// 修改管理员密码
	public static int update_PWD(String username,String newpwd) {
		String sql = "update user set password='" + newpwd
				+ "'" + " where username='" + username + "'";
		return DBHelper.executeSQL(sql);
	}
	//注册时查看用户名是否存在
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
