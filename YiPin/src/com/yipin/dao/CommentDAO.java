package com.yipin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yipin.db.DBHelper;
import com.yipin.model.Comments;
import com.yipin.model.Goods;

public class CommentDAO {
	// 查看所有评论
	public static List<Comments> view() {
		String sql = "select comments.commentid,comments.goodsid,comments.content,comments.contenttime,user.username from comments,user where comments.userid = user.userid";
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
		String sql = "select comments.commentid,comments.goodsid,comments.content,comments.contenttime,user.username from comments,user where comments.userid = user.userid and user.username like '%"
				+ search_content + "%'";
		return findBySQL(sql);
	}

	// 根据用户ID查找评论
	public static List<Comments> userid(String search_content) {
		String sql = "select comments.commentid,comments.goodsid,comments.content,comments.contenttime,user.username from comments,user where comments.userid = user.userid and comments.userid = '" + search_content + "'";
		return findBySQL(sql);
	}
	// 根据商品ID查找评论
	public static List<Comments> goodsid(String search_content) {
		String sql = "select comments.commentid,comments.goodsid,comments.content,comments.contenttime,user.username from comments,user where comments.userid = user.userid and comments.goodsid = '" + search_content + "'";
		return findBySQL(sql);
	}
}
