package com.yipinnet.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yipinnet.db.DBHelper;
import com.yipinnet.model.Comments;
import com.yipinnet.model.Item;
import com.yipinnet.model.Key;
import com.yipinnet.model.Price;

public class TopItemDAO {
	// 查看所有商品信息
	public static List<Item> view() {
		String sql = "select * from item";
		return findBySQL(sql);
	}

	//查找所有的key
	public static List<Key> view_key() {
		String sql = "select * from key_yipin";
		return findBySQL_key(sql);
	}
	
	public static List<Item> findAll() {
		String sql = "select * from item";
		return findBySQL(sql);
	}
	private static List<Item> findBySQL(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Item> list = new ArrayList<Item>();
		try {
			while (rs.next()) {
				Item item = new Item();
				item.setGoodsid(rs.getString(1));
				item.setGoodsname(rs.getString(2));
				item.setIntroduce(rs.getString(3));
				item.setImage(rs.getString(4));
				item.setAddr(rs.getString(5));
				item.setIstop(rs.getString(6));
				item.setPrice(rs.getString(7));
				item.setTime(rs.getString(8));
				item.setGoodstypename(rs.getString(9));
				list.add(item);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	private static List<Key> findBySQL_key(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Key> list = new ArrayList<Key>();
		try {
			while (rs.next()) {
				Key key = new Key();
				key.setKeyid(rs.getInt(1));
				key.setKey(rs.getString(2));
				list.add(key);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	// 查看该商品的评价信息
	public static List<Comments> comment_view(String id) {
		String sql = "select comments.commentid,comments.goodsid,comments.content,comments.contenttime, user.username from comments,user where comments.userid = user.userid and comments.goodsid='"
				+ id + "'";
		return findBySQL_comment(sql);
	}
	private static List<Comments> findBySQL_comment(String sql) {
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
	// 查看该商品的价格信息
	public static List<Price> prc_view(String id) {
		String sql = "select * from price where goodsid = '" + id + "'";
		return findBySQL_price(sql);
	}
	private static List<Price> findBySQL_price(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Price> list = new ArrayList<Price>();
		try {
			while (rs.next()) {
				Price price = new Price();
				price.setGoodspriceid(rs.getInt(1));
				price.setGoodsprice(rs.getString(2));
				price.setPricetime(rs.getString(3));
				price.setGoodsid(rs.getString(4));
				list.add(price);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	// 删除商品
	public static int delete(String id) {
		String sql = "delete from item where goodsid = '" + id + "'";
		String sql2 = "delete from price where goodsid = '" + id + "'";
		DBHelper.executeSQL(sql2);
		return DBHelper.executeSQL(sql);
	}
	
}
