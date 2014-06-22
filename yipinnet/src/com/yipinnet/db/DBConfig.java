package com.yipinnet.db;

public interface DBConfig {
	String USER_NAME="root";
	String PWD="199923";
	String DRIVER="com.mysql.jdbc.Driver";
	String IP="localhost";
	String DATABASE="yipinnet";
	String URL="jdbc:mysql://"+IP+":3306/"+DATABASE;
}
