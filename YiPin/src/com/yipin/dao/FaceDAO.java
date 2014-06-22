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
	
	//�ȼ��̳�_�Ƽ���Ʒ_����Ь��
	public static List<Recomm> recomm_outdoor(){
		String sql = "select * from recomm where cataname='����Ь��'";
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
	
	//�ȼ��̳�_�۸�����_����Ь��
	public static List<Pricerange> pricerange_outdoor(){
		String sql = "select * from pricerange where cataname='����Ь��'";
		return view_pricerange(sql);
	}
	
	//�ȼ��̳�_�۸�����_ͼ��
	public static List<Pricerange> pricerange_book(){
		String sql = "select * from pricerange where cataname='ͼ��'";
		return view_pricerange(sql);
	}
	
	//�ȼ��̳�_�۸�����_�ֻ�����
	public static List<Pricerange> pricerange_digital(){
		String sql = "select * from pricerange where cataname='�ֻ�����'";
		return view_pricerange(sql);
	}
	
	//�ȼ��̳�_�۸�����_��������
	public static List<Pricerange> pricerange_computer(){
		String sql = "select * from pricerange where cataname='��������'";
		return view_pricerange(sql);
	}
	
	//�ȼ��̳�_�۸�����_�������
	public static List<Pricerange> pricerange_fitting(){
		String sql = "select * from pricerange where cataname='�������'";
		return view_pricerange(sql);
	}
	
	//�ȼ��̳�_�۸�����_�˶���Ʒ
	public static List<Pricerange> pricerange_sports(){
		String sql = "select * from pricerange where cataname='�˶���Ʒ'";
		return view_pricerange(sql);
	}
	
	//�ȼ��̳�_�۸�����_��ױ����Ʒ
	public static List<Pricerange> pricerange_comestic(){
		String sql = "select * from pricerange where cataname='��ױ����Ʒ'";
		return view_pricerange(sql);
	}
	
	//�ȼ��̳�_�۸�����_��Ʒ���
	public static List<Pricerange> pricerange_gift(){
		String sql = "select * from pricerange where cataname='��Ʒ���'";
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
	
	//�ȼ��̳�_������Ŀ_����Ь��
	public static List<Hotcata> hotcata_outdoor(){
		String sql = "select * from hotcata where cataname='����Ь��'";
		return view_hotcata(sql);
	}
	
	//�ȼ��̳�_������Ŀ_ͼ��
	public static List<Hotcata> hotcata_book(){
		String sql = "select * from hotcata where cataname='ͼ��'";
		return view_hotcata(sql);
	}
	
	//�ȼ��̳�_������Ŀ_�ֻ�����
	public static List<Hotcata> hotcata_digital(){
		String sql = "select * from hotcata where cataname='�ֻ�����'";
		return view_hotcata(sql);
	}
	
	//�ȼ��̳�_������Ŀ_��������
	public static List<Hotcata> hotcata_computer(){
		String sql = "select * from hotcata where cataname='��������'";
		return view_hotcata(sql);
	}
	
	//�ȼ��̳�_������Ŀ_�������
	public static List<Hotcata> hotcata_fitting(){
		String sql = "select * from hotcata where cataname='�������'";
		return view_hotcata(sql);
	}
	
	//�ȼ��̳�_������Ŀ_�˶���Ʒ
	public static List<Hotcata> hotcata_sports(){
		String sql = "select * from hotcata where cataname='�˶���Ʒ'";
		return view_hotcata(sql);
	}
	
	//�ȼ��̳�_������Ŀ_��ױ����Ʒ
	public static List<Hotcata> hotcata_comestic(){
		String sql = "select * from hotcata where cataname='��ױ����Ʒ'";
		return view_hotcata(sql);
	}
	
	//�ȼ��̳�_������Ŀ_��Ʒ���
	public static List<Hotcata> hotcata_gift(){
		String sql = "select * from hotcata where cataname='��Ʒ���'";
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
	
	// �鿴��������
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

	//����Ա�鿴����ƷĿ¼��Ӧ��������Ŀ
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
	
	//����Ա�鿴����ƷĿ¼��Ӧ�ļ۸�����
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
	
	//����Ա�鿴����ƷĿ¼��Ӧ�Ļ�Ƽ�
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
	
	//����Ա�鿴����ƷĿ¼��Ӧ���Ƽ�Ʒ��
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
	
	// ����Ŀ¼IDȡ��Ŀ¼����
	public static Catalog catalod_name(int id) {
		String sql = "select * from catalog where catalogid =" + id;
		return findBySQL_catalogname(sql);
	}
	
	//�鿴�����Ƽ���Ʒ
	public static List<Recomm> recomm_all(String search_content) {
		String sql = "select * from recomm";
		return findBySQL_recomm(sql);
	}
	
	//�鿴ͼ����Ŀ�µ��Ƽ���Ʒ
	public static List<Recomm> recomm_book(String search_content) {
		String sql = "select * from recomm where cataname ='" + "ͼ��" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//�鿴��ױ����Ʒ��Ŀ�µ��Ƽ���Ʒ
	public static List<Recomm> recomm_cosmetic(String search_content) {
		String sql = "select * from recomm where cataname ='" + "��ױ����Ʒ" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//�鿴����Ь����Ŀ�µ��Ƽ���Ʒ
	public static List<Recomm> recomm_outdoor(String search_content) {
		String sql = "select * from recomm where cataname ='" + "����Ь��" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//�鿴�ֻ�������Ŀ�µ��Ƽ���Ʒ
	public static List<Recomm> recomm_digital(String search_content) {
		String sql = "select * from recomm where cataname ='" + "�ֻ�����" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//�鿴����������Ŀ�µ��Ƽ���Ʒ
	public static List<Recomm> recomm_computer(String search_content) {
		String sql = "select * from recomm where cataname ='" + "��������" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//�鿴���������Ŀ�µ��Ƽ���Ʒ
	public static List<Recomm> recomm_fitting(String search_content) {
		String sql = "select * from recomm where cataname ='" + "�������" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//�鿴��Ʒ�����Ŀ�µ��Ƽ���Ʒ
	public static List<Recomm> recomm_gift(String search_content) {
		String sql = "select * from recomm where cataname ='" + "��Ʒ���" + "'" + "and goodsname like '%"
				+ search_content + "%'";
		return findBySQL_recomm(sql);
	}
	
	//�鿴�˶���Ʒ��Ŀ�µ��Ƽ���Ʒ
	public static List<Recomm> recomm_sports(String search_content) {
		String sql = "select * from recomm where cataname ='" + "�˶���Ʒ" + "'" + "and goodsname like '%"
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
