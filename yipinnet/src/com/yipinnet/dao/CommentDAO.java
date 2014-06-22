package com.yipinnet.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yipinnet.db.DBHelper;
import com.yipinnet.model.Comments;

public class CommentDAO {
	// 查看所有评论
	public static List<Comments> view() {
		String sql = "select comments.commentid,comments.goodsid,comments.content,comments.contenttime,user.username from comments,user where comments.username = user.username";
		return findBySQL(sql);
	}

	private static List<Comments> findBySQL(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Comments> list = new ArrayList<Comments>();
		try {
			while (rs.next()) {
				Comments comment = new Comments();
				comment.setCommentid(rs.getInt(1));
				comment.setGoodsid(rs.getString(2));
				comment.setContent(rs.getString(3));
				comment.setContenttime(rs.getString(4));
				comment.setUsername(rs.getString(5));
				list.add(comment);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 删除评论
	public static int delete(int id) {
		String sql = "delete from comments where commentid =" + id;
		return DBHelper.executeSQL(sql);
	}

	// 根据用户名查找评论
	public static List<Comments> username(String search_content) {
		String sql = "select comments.commentid,comments.goodsid,comments.content,comments.contenttime,user.username from comments,user where comments.username = user.username and user.username like '%"
				+ search_content + "%'";
		return findBySQL(sql);
	}

	
	// 根据商品ID查找评论
	public static List<Comments> goodsid(String search_content) {
		String sql = "select comments.commentid,comments.goodsid,comments.content,comments.contenttime,user.username from comments,user where comments.username = user.username and comments.goodsid = '" + search_content + "'";
		return findBySQL(sql);
	}
	// 添加评论
	public static int save(Comments comment) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into comments(goodsid,content,contenttime,username) values(");
		sbf.append("'" + comment.getGoodsid() + "',");
		sbf.append("'" + comment.getContent() + "',");
		sbf.append("'" + comment.getContenttime() + "',");
		sbf.append("'" + comment.getUsername() + "')");
		return DBHelper.executeSQL(sbf.toString());
	}
}
