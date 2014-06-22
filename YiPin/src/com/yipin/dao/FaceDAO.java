package com.yipin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yipin.db.DBHelper;
import com.yipin.model.Active;
import com.yipin.model.Brand;
import com.yipin.model.Catalog;
import com.yipin.model.Hotcata;
import com.yipin.model.Pricerange;
import com.yipin.model.Recomm;

public class FaceDAO {
	
	//比价商城_推荐商品_户外鞋服
	public static List<Recomm> recomm_outdoor(){
		String sql = "select * from recomm where cataname='户外鞋服'";
		return view_recomm(sql);
	}
	
	private static List<Recomm> view_recomm(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Recomm> list = new ArrayList<Recomm>();
		try {
			while (rs.next()) {
				Recomm recomm = new Recomm();
				recomm.setGoodsid(rs.getString(1));
				recomm.setImage(rs.getString(2));
				recomm.setGoodsname(rs.getString(3));
				recomm.setDescribe(rs.getString(4));
				recomm.setPrice(rs.getString(5));
				recomm.setLevel(rs.getString(6));
				recomm.setAddr(rs.getString(7));
				recomm.setCataname(rs.getString(8));
				list.add(recomm);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//比价商城_价格区间_户外鞋服
	public static List<Pricerange> pricerange_outdoor(){
		String sql = "select * from pricerange where cataname='户外鞋服'";
		return view_pricerange(sql);
	}
	
	//比价商城_价格区间_图书
	public static List<Pricerange> pricerange_book(){
		String sql = "select * from pricerange where cataname='图书'";
		return view_pricerange(sql);
	}
	
	//比价商城_价格区间_手机数码
	public static List<Pricerange> pricerange_digital(){
		String sql = "select * from pricerange where cataname='手机数码'";
		return view_pricerange(sql);
	}
	
	//比价商城_价格区间_电脑整机
	public static List<Pricerange> pricerange_computer(){
		String sql = "select * from pricerange where cataname='电脑整机'";
		return view_pricerange(sql);
	}
	
	//比价商城_价格区间_电脑配件
	public static List<Pricerange> pricerange_fitting(){
		String sql = "select * from pricerange where cataname='电脑配件'";
		return view_pricerange(sql);
	}
	
	//比价商城_价格区间_运动产品
	public static List<Pricerange> pricerange_sports(){
		String sql = "select * from pricerange where cataname='运动产品'";
		return view_pricerange(sql);
	}
	
	//比价商城_价格区间_化妆护肤品
	public static List<Pricerange> pricerange_comestic(){
		String sql = "select * from pricerange where cataname='化妆护肤品'";
		return view_pricerange(sql);
	}
	
	//比价商城_价格区间_礼品箱包
	public static List<Pricerange> pricerange_gift(){
		String sql = "select * from pricerange where cataname='礼品箱包'";
		return view_pricerange(sql);
	}
	
	private static List<Pricerange> view_pricerange(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Pricerange> list = new ArrayList<Pricerange>();
		try {
			while (rs.next()) {
				Pricerange pricerange = new Pricerange();
				pricerange.setRangeid(rs.getInt(1));
				pricerange.setRangename(rs.getString(2));
				pricerange.setCataname(rs.getString(3));
				list.add(pricerange);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//比价商城_热门类目_户外鞋服
	public static List<Hotcata> hotcata_outdoor(){
		String sql = "select * from hotcata where cataname='户外鞋服'";
		return view_hotcata(sql);
	}
	
	//比价商城_热门类目_图书
	public static List<Hotcata> hotcata_book(){
		String sql = "select * from hotcata where cataname='图书'";
		return view_hotcata(sql);
	}
	
	//比价商城_热门类目_手机数码
	public static List<Hotcata> hotcata_digital(){
		String sql = "select * from hotcata where cataname='手机数码'";
		return view_hotcata(sql);
	}
	
	//比价商城_热门类目_电脑整机
	public static List<Hotcata> hotcata_computer(){
		String sql = "select * from hotcata where cataname='电脑整机'";
		return view_hotcata(sql);
	}
	
	//比价商城_热门类目_电脑配件
	public static List<Hotcata> hotcata_fitting(){
		String sql = "select * from hotcata where cataname='电脑配件'";
		return view_hotcata(sql);
	}
	
	//比价商城_热门类目_运动产品
	public static List<Hotcata> hotcata_sports(){
		String sql = "select * from hotcata where cataname='运动产品'";
		return view_hotcata(sql);
	}
	
	//比价商城_热门类目_化妆护肤品
	public static List<Hotcata> hotcata_comestic(){
		String sql = "select * from hotcata where cataname='化妆护肤品'";
		return view_hotcata(sql);
	}
	
	//比价商城_热门类目_礼品箱包
	public static List<Hotcata> hotcata_gift(){
		String sql = "select * from hotcata where cataname='礼品箱包'";
		return view_hotcata(sql);
	}
	
	private static List<Hotcata> view_hotcata(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Hotcata> list = new ArrayList<Hotcata>();
		try {
			while (rs.next()) {
				Hotcata hotcata = new Hotcata();
				hotcata.setHotid(rs.getInt(1));
				hotcata.setCataname(rs.getString(2));
				hotcata.setHotname(rs.getString(3));
				list.add(hotcata);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 查看所有评论
	public static List<Catalog> view() {
		String sql = "select * from catalog";
		return findBySQL(sql);
	}

	private static List<Catalog> findBySQL(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Catalog> list = new ArrayList<Catalog>();
		try {
			while (rs.next()) {
				Catalog catalog = new Catalog();
				catalog.setCatalogid(rs.getInt(1));
				catalog.setCataname(rs.getString(2));
				
				list.add(catalog);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	//管理员查看该商品目录对应的热门类目
	public static List<Hotcata> hot_view(String cataname) {
		String sql = "select * from hotcata where cataname='" + cataname + "'";
		return findBySQL_hotcata(sql);
	}
	
	private static List<Hotcata> findBySQL_hotcata(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Hotcata> list = new ArrayList<Hotcata>();
		try {
			while (rs.next()) {
				Hotcata hotcata = new Hotcata();
				hotcata.setHotid(rs.getInt(1));
				hotcata.setCataname(rs.getString(2));
				hotcata.setHotname(rs.getString(3));
				list.add(hotcata);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//管理员查看该商品目录对应的价格区间
	public static List<Pricerange> pricerange_view(String cataname) {
		String sql = "select * from pricerange where cataname='" + cataname + "'";
		return findBySQL_pricerange(sql);
	}
	
	private static List<Pricerange> findBySQL_pricerange(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Pricerange> list = new ArrayList<Pricerange>();
		try {
			while (rs.next()) {
				Pricerange pricerange = new Pricerange();
				pricerange.setRangeid(rs.getInt(1));
				pricerange.setRangename(rs.getString(2));
				pricerange.setCataname(rs.getString(3));
				list.add(pricerange);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//管理员查看该商品目录对应的活动推荐
	public static List<Active> active_view(String cataname) {
		String sql = "select * from active where cataname='" + cataname + "'";
		return findBySQL_active(sql);
	}
	
	private static List<Active> findBySQL_active(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Active> list = new ArrayList<Active>();
		try {
			while (rs.next()) {
				Active active = new Active();
				active.setActiveid(rs.getInt(1));
				active.setActivecontent(rs.getString(2));
				active.setCataname(rs.getString(3));
				list.add(active);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//管理员查看该商品目录对应的推荐品牌
	public static List<Brand> brand_view(String cataname) {
		String sql = "select * from brand where cataname='" + cataname + "'";
		return findBySQL_brand(sql);
	}
	
	private static List<Brand> findBySQL_brand(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Brand> list = new ArrayList<Brand>();
		try {
			while (rs.next()) {
				Brand brand = new Brand();
				brand.setBrandid(rs.getInt(1));
				brand.setImgaddr(rs.getString(2));
				brand.setCataname(rs.getString(3));
				list.add(brand);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 根据目录ID取回目录名称
	public static Catalog catalod_name(int id) {
		String sql = "select * from catalog where catalogid =" + id;
		return findBySQL_catalogname(sql);
	}
	
	//查看所有推荐商品
	public static List<Recomm> recomm_all(String search_content) {
		String sql = "select * from recomm";
		return findBySQL_recomm(sql);
	}
	
	//查看图书类目下的推荐商品
	public static List<Recomm> recomm_book(String search_content) {
		String sql = "select * from recomm where cataname ='" + "图书" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//查看化妆护肤品类目下的推荐商品
	public static List<Recomm> recomm_cosmetic(String search_content) {
		String sql = "select * from recomm where cataname ='" + "化妆护肤品" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//查看户外鞋服类目下的推荐商品
	public static List<Recomm> recomm_outdoor(String search_content) {
		String sql = "select * from recomm where cataname ='" + "户外鞋服" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//查看手机数码类目下的推荐商品
	public static List<Recomm> recomm_digital(String search_content) {
		String sql = "select * from recomm where cataname ='" + "手机数码" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//查看电脑整机类目下的推荐商品
	public static List<Recomm> recomm_computer(String search_content) {
		String sql = "select * from recomm where cataname ='" + "电脑整机" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//查看电脑配件类目下的推荐商品
	public static List<Recomm> recomm_fitting(String search_content) {
		String sql = "select * from recomm where cataname ='" + "电脑配件" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//查看礼品箱包类目下的推荐商品
	public static List<Recomm> recomm_gift(String search_content) {
		String sql = "select * from recomm where cataname ='" + "礼品箱包" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//查看运动产品类目下的推荐商品
	public static List<Recomm> recomm_sports(String search_content) {
		String sql = "select * from recomm where cataname ='" + "运动产品" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	private static List<Recomm> findBySQL_recomm(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		List<Recomm> list = new ArrayList<Recomm>();
		try {
			while (rs.next()) {
				Recomm recomm = new Recomm();
				recomm.setGoodsid(rs.getString(1));
				recomm.setImage(rs.getString(2));
				recomm.setGoodsname(rs.getString(3));
				recomm.setDescribe(rs.getString(4));
				recomm.setPrice(rs.getString(5));
				recomm.setLevel(rs.getString(6));
				recomm.setAddr(rs.getString(7));
				recomm.setCataname(rs.getString(8));
				list.add(recomm);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private static Catalog findBySQL_catalogname(String sql) {
		ResultSet rs = (ResultSet) DBHelper.search(sql);
		Catalog catalog = new Catalog();
		try {
			while (rs.next()) {
				catalog.setCatalogid(rs.getInt(1));
				catalog.setCataname(rs.getString(2));
			}
			return catalog;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
