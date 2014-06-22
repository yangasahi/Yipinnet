package com.yipinnet.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;

import com.yipinnet.dao.GoodsDAO;

public class JDomeScanKey {
	public String ReadXmlElement[][];
	private Vector innerVectName = new Vector();
	private Vector innerVectValue = new Vector();
	private static final String AWS_ACCESS_KEY_ID = "AKIAJNWS3SR5VVQFO7FA";

	private static final String AWS_SECRET_KEY = "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";

	private static final String ENDPOINT = "ecs.amazonaws.com";

	public void scan(String ITEM_ID) throws IOException { // 如果有任何异常则抛出
		ItemLookupSample item = new ItemLookupSample();
//		item.main(ITEM_ID);
		SignedRequestsHelper helper;
		try {
			helper = SignedRequestsHelper.getInstance(ENDPOINT,
					AWS_ACCESS_KEY_ID, AWS_SECRET_KEY);
		} catch (Exception e) {
			e.printStackTrace();
			return;
		}

		String requestUrl = null;
		
		String title = null;
		String price = null;
		System.out.println("Map form example:");
		Map<String, String> params = new HashMap<String, String>();
		params.put("AssociateTag", "yao184447555-23");
		params.put("Service", "AWSECommerceService");
		params.put("Version", "2009-03-31");
		params.put("Operation", "ItemLookup");
		params.put("ItemId", ITEM_ID);
		params.put("ResponseGroup", "Large");

		

		requestUrl = helper.sign(params);
		System.out.println("Signed Request is \"" + requestUrl + "\"");

		SAXBuilder db = new SAXBuilder(false);
		Document doc;
		try {
			doc = db.build(requestUrl);
			 Element root = doc.getRootElement(); // 取得根节点
				List list = root.getChildren(); // 取得根节点下一层所有节点放入List类中
				    JDomeGetItem JDome=new JDomeGetItem();
				    JDomeScanKey.XMLReader3(list);
		} catch (JDOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//	    SAXBuilder sb = new SAXBuilder(); // 新建立构造器
//	    Document doc = null;
//	    try {
//	        doc = sb.build(new FileInputStream("E://Workspaces/AmazonProductAdvtApiSampleJavaQuery/zhuchenghe.xml")); // 读入.xml
//	    } catch (FileNotFoundException ex) {
//	    } catch (JDOMException ex) {
//	    }
	   
	}

	
	public static void XMLReader3(List list){
		StringBuilder sb = new StringBuilder();
		Element Items = (Element) list.get(1);
		List itemsList = Items.getChildren();
		Element Item = (Element)list.get(1);
		List itemList = Item.getChildren();
		for(int i = 0;i<itemList.size();i++){
			Element itemsimiler = (Element) itemList.get(i);
			if (itemsimiler.getName().equals("SimilarProducts")) {
				List similar = itemsimiler.getChildren();
				for(int j=0;j<similar.size();j++){
					Element similarproduct = (Element)similar.get(j);
					List pro = similarproduct.getChildren();
					Element pr = (Element)pro.get(1);
					String text = pr.getText();
					if(text != null){
						char[] ch=text.toCharArray();
						for(int k=0;k<ch.length;k++){
							if(ch[k]!=' ' && ch[k]!='\'' && ch[k]!='\"'){
								sb.append(ch[k]);
							}else{
								System.out.println("gaosiwei--->" + sb.toString());
								GoodsDAO.update_key(sb.toString());
								sb.delete(0, sb.length());
							}
						}
					}
				}
			}
		}
	}
}
