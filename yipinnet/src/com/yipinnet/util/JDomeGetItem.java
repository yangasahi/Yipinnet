package com.yipinnet.util;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Vector;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;


public class JDomeGetItem {
public String ReadXmlElement[][];
private Vector innerVectName = new Vector();
private Vector innerVectValue = new Vector();



private String price;




public String getPrice() {
	return price;
}

public void setPrice(String price) {
	this.price = price;
}




public String scan(String ITEM_ID) throws IOException { // 如果有任何异常则抛出
	ItemLookupSample item = new ItemLookupSample();
	item.main(ITEM_ID);
	
	
    SAXBuilder sb = new SAXBuilder(); // 新建立构造器
    Document doc = null;
    try {
        doc = sb.build(new FileInputStream("E://Workspaces/AmazonProductAdvtApiSampleJavaQuery/zhuchenghe.xml")); // 读入.xml
    } catch (FileNotFoundException ex) {
    } catch (JDOMException ex) {
    }
    Element root = doc.getRootElement(); // 取得根节点
List list = root.getChildren(); // 取得根节点下一层所有节点放入List类中
    JDomeGetItem JDome=new JDomeGetItem();
    return JDome.XMLReader3(list);
}

//专门针对amazon的api
public String XMLReader3(List list){
	Element totle = null;
	 for (int i = 0; i < list.size(); i++) {
	      Element item = (Element) list.get(i);
	      if(item.getName()=="Items"){
	    	  totle = item;
	    	  i=list.size();
	      }
	 }
	 
	List items = totle.getChildren();
	for(int i = 0; i < items.size(); i++){
		Element item = (Element)items.get(i);
		if(item.getName()=="Request"){
			totle = item;
			i=items.size();
		}
	}
	
	List Request  = totle.getChildren();
	for(int i = 0; i < Request.size(); i++){
		Element item = (Element)Request.get(i);
		if(item.getName()=="ItemLookupRequest"){
			totle = item;
			i=Request.size();
		}
	}
	
	List ItemLookupRequest = totle.getChildren();
	for(int i = 0; i < ItemLookupRequest.size(); i++){
		Element item = (Element)ItemLookupRequest.get(i);
		if(item.getName()=="ItemId"){
			totle = item;
			i=ItemLookupRequest.size();
		}
	}
	System.out.println("ItemId: " + totle.getText());//获得产品Id
	
    for(int i = 0; i < items.size(); i++){
		Element item = (Element)items.get(i);
		if(item.getName()=="Item"){
			totle = item;
			i=items.size();
		}
	}
	List Item = totle.getChildren();
	for(int i = 0; i < Item.size(); i++){
		Element item = (Element)Item.get(i);
		if(item.getName()=="ItemLinks"){
			totle = item;
			i=Item.size();
		}
	}
	
	List ItemLinks = totle.getChildren();
	Element ItemLink = (Element)ItemLinks.get(6);
	List itemlink = ItemLink.getChildren();
	Element Uri = (Element)itemlink.get(1);
	System.out.println("All Offers: " + Uri.getText());//获得所有提供产品的页面
	
	for(int i = 0; i < Item.size(); i++){
		Element item = (Element)Item.get(i);
		if(item.getName()=="SmallImage"){
			totle = item;
			i=Item.size();
		}
	}
	List SmallImage = totle.getChildren();
	for(int i = 0; i < SmallImage.size(); i++){
		Element item = (Element)SmallImage.get(i);
		if(item.getName()=="URL"){
			totle = item;
			i=SmallImage.size();
		}
	}
	System.out.println("Small Image: " + totle.getText());//获得产品的图片
	
	for(int i = 0; i < Item.size(); i++){
		Element item = (Element)Item.get(i);
		if(item.getName()=="OfferSummary"){
			totle = item;
			i=Item.size();
		}
	}
	List OfferSummary = totle.getChildren();
	for(int i = 0; i < OfferSummary.size(); i++){
		Element item = (Element)OfferSummary.get(i);
		if(item.getName()=="TotalNew"){
			totle = item;
			i=OfferSummary.size();
		}
	}
	System.out.println("TotalNew: " + totle.getText());//物品的剩余数量
	
	for(int i = 0; i < OfferSummary.size(); i++){
		Element item = (Element)OfferSummary.get(i);
		if(item.getName()=="LowestNewPrice"){
			totle = item;
			i=OfferSummary.size();
		}
	}
	List LowestNewPrice = totle.getChildren();
	for(int i = 0; i < LowestNewPrice.size(); i++){
		Element item = (Element)LowestNewPrice.get(i);
		if(item.getName()=="FormattedPrice"){
			totle = item;
			i=LowestNewPrice.size();
		}
	}
	setPrice(totle.getText());
	System.out.println("yangxu--->"+getPrice());
	System.out.println("LowerPrice: " + totle.getText());//物品的最低价格
	//seeds.setPrice(lowerprc.getText());
	//seeds.setTime(new Date());
	//dao.save(seeds);
	return totle.getText();
}



}