package com.yipin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yipin.db.DBHelper;
import com.yipin.model.Comments;
import com.yipin.model.Goods;
import com.yipin.model.Price;

public class GoodsDAO {
	// 查看所有商品信息
	public static List<Goods> view() {
		String sql = "select goods.goodsid,goods.goodsname,goods.introduce,goods.image,goods.addr,goodstype.typename from goods,goodstype where goods.goodstypeid = goodstype.goodstypeid";
		return findBySQL(sql);
	}

	public static List<Goods> findAll() {
		String sql = "select * from goods";
		return findBySQL(sql);
	}

	private static List<Goods> findBySQL(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Goods> list = new ArrayList<Goods>();
		try {
			while (rs.next()) {
				Goods goods = new Goods();
				goods.setGoodsid(rs.getString(1));
				goods.setGoodsname(rs.getString(2));
				goods.setIntroduce(rs.getString(3));
				goods.setImage(rs.getString(4));
				goods.setAddr(rs.getString(5));
				goods.setTypename(rs.getString(6));
				list.add(goods);
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
		System.out.println(sql);
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

	// 添加商品信息
	public static int save(Goods goods) {
		StringBuffer sbf = new StringBuffer();
		sbf
				.append("insert into goods(goodsid,goodsname,introduce,image,addr,goodstypeid) values(");
		sbf.append("'" + goods.getGoodsid() + "',");
		sbf.append("'" + goods.getGoodsname() + "',");
		sbf.append("'" + goods.getIntroduce() + "',");
		sbf.append("'" + goods.getImage() + "',");
		sbf.append("'" + goods.getAddr() + "',");
		sbf.append("'" + goods.getGoodstypeid() + "')");
		return DBHelper.executeSQL(sbf.toString());
	}

	// 删除商品
	public static int delete(String id) {
		String sql = "delete from goods where goodsid = '" + id + "'";
		String sql2 = "delete from price where goodsid = '" + id + "'";
		DBHelper.executeSQL(sql2);
		return DBHelper.executeSQL(sql);
	}

	// 把数据库中的一条记录，加载成一个对象
	public static Goods getObj(String id) {
		String sql = "select * from goods where goodsid = '" + id + "'";
		Goods goods = new Goods();
		ResultSet rs = DBHelper.search(sql);
		try {
			if (rs.next()) {
				goods.setGoodsid(rs.getString(1));
				goods.setGoodsname(rs.getString(2));
				goods.setIntroduce(rs.getString(3));
				goods.setImage(rs.getString(4));
				goods.setAddr(rs.getString(5));
				goods.setGoodstypeid(rs.getInt(6));
				return goods;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 修改商品信息
	public static int update(Goods goods) {
		String sql = "update goods set goodsname='" + goods.getGoodsname()
				+ "',introduce='" + goods.getIntroduce() + "',image='"
				+ goods.getImage() + "',addr='" + goods.getAddr()
				+ "',goodstypeid= " + goods.getGoodstypeid()
				+ " where goodsid='" + goods.getGoodsid() + "'";
		return DBHelper.executeSQL(sql);
	}
}
