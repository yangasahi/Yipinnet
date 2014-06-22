package com.yipinnet.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yipinnet.db.DBHelper;
import com.yipinnet.model.Item;
import com.yipinnet.model.Price;


public class TopDAO {
    //查看Top100商品信息
	public static List<Item> view(String time){
		String sql = "select * from top where istop = 'is' and time = '" + time + "'";
		return findBySQL(sql);
	}
	public static List<Item> view_Books(String time){
		String sql = "select * from top where istop = 'is' and goodstypename='Books' and time='" + time + "'";
		return findBySQL(sql);
	}
	public static List<Item> view_Software(String time){
		String sql = "select * from top where istop = 'is' and goodstypename='Software' and time='" + time + "'";
		return findBySQL(sql);
	}
	public static List<Item> view_Sporting(String time){
		String sql = "select * from top where istop = 'is' and goodstypename='Sporting' and time='" + time + "'";
		return findBySQL(sql);
	}
	public static List<Item> view_Toys(String time){
		String sql = "select * from top where istop = 'is' and goodstypename='Toys' and time ='" + time + "'";
		return findBySQL(sql);
	}
	public static List<Item> view_search(String content){
		String sql = "select * from item where istop = 'is' and goodsname like '%" + content + "%'";
		return findBySQL(sql);
	}
	private static List<Item> findBySQL(String sql){
		ResultSet rs = (ResultSet)DBHelper.search(sql);
		List<Item> list = new ArrayList<Item>();
		try{
			while(rs.next()){
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
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	//删除Top100中的商品信息
	public static int delete (String id){
		String sql = "update item set istop='no' where goodsid ='" + id + "'";
		return DBHelper.executeSQL(sql);
	}
    //把数据库中的一条记录，加载成一个对象
	public static Item getObj(String id){
		String sql = "select * from item where goodsid = '" + id + "'";
		Item item = new Item();
		ResultSet rs = DBHelper.search(sql);
		try{
			if(rs.next()){
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
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	//修改Top100商品信息
	public static int update (Item item){
		String sql = "update item set goodsname='" +item.getGoodsname()
		+ "',introduce='" + item.getIntroduce() + "',image='"
		+ item.getImage() + "',addr='" + item.getAddr() +"',istop= '" + item.getIstop() + "',price= '" + item.getPrice() + "',time= '" + item.getTime() + "',goodstypename= "
		+ item.getGoodstypename() + " where goodsid='" + item.getGoodsid() + "'";
		System.out.println(sql);
	    return DBHelper.executeSQL(sql);
	}
	//查看该商品的价格信息
	public static List<Price> prc_view(String id){
		String sql = "select * from price where goodsid = '" + id + "'";
		return findBySQL_price(sql);
	}
	private static List<Price> findBySQL_price(String sql){
		ResultSet rs = (ResultSet)DBHelper.search(sql);
		List<Price> list = new ArrayList<Price>();
		try{
			while(rs.next()){
				Price price = new Price();
				price.setGoodspriceid(rs.getInt(1));
				price.setGoodsprice(rs.getString(2));
				price.setPricetime(rs.getString(3));
				price.setGoodsid(rs.getString(4));
				list.add(price);
			}
			return list;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	// 添加商品信息
	public static int save(Item item) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into item(goodsid,goodsname,introduce,image,addr,istop,price,time,goodstypename) values(");
		sbf.append("'" + item.getGoodsid() + "',");
		sbf.append("'" + item.getGoodsname() + "',");
		sbf.append("'" + item.getIntroduce() + "',");
		sbf.append("'" + item.getImage() + "',");
		sbf.append("'" + item.getAddr() + "',");
		sbf.append("'" + item.getIstop() + "',");
		sbf.append("'" + item.getPrice() + "',");
		sbf.append("'" + item.getTime() + "',");
		sbf.append("'" + item.getGoodstypename() + "')");
		return DBHelper.executeSQL(sbf.toString());
	}
}
