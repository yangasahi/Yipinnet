package com.yipinnet.dao;

import com.yipinnet.db.DBHelper;
import com.yipinnet.model.Price;

public class PriceDAO {
	// 添加价格信息
	public static int save(Price price) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into price(goodsprice,pricetime,goodsid) values(");
		sbf.append("'" + price.getGoodsprice() + "',");
		sbf.append("'" + price.getPricetime() + "',");
		sbf.append("'" + price.getGoodsid() + "')");
		return DBHelper.executeSQL(sbf.toString());
	}

}
