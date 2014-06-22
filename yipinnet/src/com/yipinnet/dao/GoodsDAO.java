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
import com.yipinnet.model.Top;

public class GoodsDAO {
	// 查看所有商品信息
	public static List<Item> view() {
		String sql = "select goodsid,goodsname,introduce,image,addr,istop,goodstypename from item";
		return findBySQL(sql);
	}

	public static List<Item> findAll() {
		String sql = "select * from item";
		return findBySQL(sql);
	}

	public static List<Price> find_price(String goodsid) {
		String sql = "select * from price where goodsid='" + goodsid + "'";
		return find_allPrice(sql);
	}
	
	private static List<Price> find_allPrice(String sql) {
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
				item.setGoodstypename(rs.getString(7));
				list.add(item);
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

	 //添加Top100
	public static int save(Top top) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into top(goodsid,goodsname,introduce,image,addr,istop,price,time,goodstypename) values(");
		sbf.append("'" + top.getGoodsid() + "',");
		sbf.append("'" + top.getGoodsname() + "',");
		sbf.append("'" + top.getIntroduce() + "',");
		sbf.append("'" + top.getImage() + "',");
		sbf.append("'" + top.getAddr() + "',");
		sbf.append("'" + top.getIstop() + "',");
		sbf.append("'" + top.getPrice() + "',");
		sbf.append("'" + top.getTime() + "',");
		sbf.append("'" + top.getGoodstypename() + "')");
		return DBHelper.executeSQL(sbf.toString());
	}

	// 删除商品
	public static int delete(String id) {
		String sql = "delete from item where goodsid = '" + id + "'";
		String sql2 = "delete from price where goodsid = '" + id + "'";
		DBHelper.executeSQL(sql2);
		return DBHelper.executeSQL(sql);
	}

	// 把数据库中的一条记录，加载成一个对象
	public static Item getObj(String id) {
		String sql = "select * from item where goodsid = '" + id + "'";
		Item item = new Item();
		ResultSet rs = DBHelper.search(sql);
		try {
			if (rs.next()) {
				item.setGoodsid(rs.getString(1));
				item.setGoodsname(rs.getString(2));
				item.setIntroduce(rs.getString(3));
				item.setImage(rs.getString(4));
				item.setAddr(rs.getString(5));
				item.setIstop(rs.getString(6));
				item.setPrice(rs.getString(7));
				item.setTime(rs.getString(8));
				item.setGoodstypename(rs.getString(9));
				return item;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 修改商品信息
	public static int update(Item item) {
		String sql = "update item set goodsname='" + item.getGoodsname()
				+ "',introduce='" + item.getIntroduce() + "',image='"
				+ item.getImage() + "',addr='" + item.getAddr()+ "',istop= '" + item.getIstop()
				+ "',goodstypename= '" + item.getGoodstypename()
				+ "' where goodsid='" + item.getGoodsid() + "'";
		System.out.println(sql);
		return DBHelper.executeSQL(sql);
	}
	// 修改key信息
	public static void update_key(String key) {
		boolean flag = true;
//		Pattern p = Pattern.compile("[a-zA-Z0-9]+");
//        Matcher m = p.matcher(key);
		char[] ch=key.toCharArray();
		for(int i = 0;i < ch.length;i++){
			if(ch[i]=='\"'){
				flag=false;
			}
		}
		if(flag==true){
			String sql = "select * from key_yipin where key_yp=\"" + key + "\"";
			System.out.println("yangxu--->" + key);
			if(findkey(sql).size()==0){
				StringBuffer sbf = new StringBuffer();
				sbf.append("insert into key_yipin(key_yp) values(");
			    sbf.append("\"" + key + "\")");
//				String sql = "update key_yipin set key_yp=\"" +key + "\"";
				System.out.println(sbf.toString());
				
			}
		}
		
		
			
		
		
	}
	private static List<Key> findkey(String sql){
		ResultSet rs = (ResultSet)DBHelper.search(sql);
		List<Key> list = new ArrayList<Key>();
		try{
			while(rs.next()){
				Key key = new Key();
				key.setKeyid(rs.getInt(1));
				key.setKey(rs.getString(2));
				list.add(key);
			}
			return list;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
