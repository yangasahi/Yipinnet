package com.yipin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yipin.db.DBHelper;
import com.yipin.model.Goods;
import com.yipin.model.Price;
import com.yipin.model.Top;


public class TopDAO {
    //查看Top100商品信息
	public static List<Top> view(){
		String sql = "select top.goodsid,top.goodsname,top.introduce,top.image,top.addr,top.price,top.time,goodstype.typename from top,goodstype where top.goodstypeid = goodstype.goodstypeid";
		return findBySQL(sql);
	}
	private static List<Top> findBySQL(String sql){
		ResultSet rs = (ResultSet)DBHelper.search(sql);
		List<Top> list = new ArrayList<Top>();
		try{
			while(rs.next()){
				Top top = new Top();
				top.setGoodsid(rs.getString(1));
				top.setGoodsname(rs.getString(2));
				top.setIntroduce(rs.getString(3));
				top.setImage(rs.getString(4));
				top.setAddr(rs.getString(5));
				top.setPrice(rs.getString(6));
				top.setTime(rs.getString(7));
				top.setTypename(rs.getString(8));
				list.add(top);
			}
			return list;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	//删除Top100中的商品信息
	public static int delete (String id){
		String sql = "delete from top where goodsid ='" + id + "'";
		return DBHelper.executeSQL(sql);
	}
    //把数据库中的一条记录，加载成一个对象
	public static Top getObj(String id){
		String sql = "select * from top where goodsid = '" + id + "'";
		Top top = new Top();
		ResultSet rs = DBHelper.search(sql);
		try{
			if(rs.next()){
				top.setGoodsid(rs.getString(1));
				top.setGoodsname(rs.getString(2));
				top.setIntroduce(rs.getString(3));
				top.setImage(rs.getString(4));
				top.setAddr(rs.getString(5));
				top.setPrice(rs.getString(6));
				top.setTime(rs.getString(7));
				top.setGoodstypeid(rs.getInt(8));
				return top;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	//修改Top100商品信息
	public static int update (Top top){
		String sql = "update top set goodsname='" +top.getGoodsname()
		+ "',introduce='" + top.getIntroduce() + "',image='"
		+ top.getImage() + "',addr='" + top.getAddr() + "',price= '" + top.getPrice() + "',time= '" + top.getTime() + "',goodstypeid= "
		+ top.getGoodstypeid() + " where goodsid='" + top.getGoodsid() + "'";
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
	public static int save(Top top) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into top(goodsid,goodsname,introduce,image,addr,price,time,goodstypeid) values(");
		sbf.append("'" + top.getGoodsid() + "',");
		sbf.append("'" + top.getGoodsname() + "',");
		sbf.append("'" + top.getIntroduce() + "',");
		sbf.append("'" + top.getImage() + "',");
		sbf.append("'" + top.getAddr() + "',");
		sbf.append("'" + top.getPrice() + "',");
		sbf.append("'" + top.getTime() + "',");
		sbf.append("'" + top.getGoodstypeid() + "')");
		return DBHelper.executeSQL(sbf.toString());
	}
}
