/**********************************************************************************************
 * Copyright 2009 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file 
 * except in compliance with the License. A copy of the License is located at
 *
 *       http://aws.amazon.com/apache2.0/
 *
 * or in the "LICENSE.txt" file accompanying this file. This file is distributed on an "AS IS"
 * BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under the License. 
 *
 * ********************************************************************************************
 *
 *  Amazon Product Advertising API
 *  Signed Requests Sample Code
 *
 *  API Version: 2009-03-31
 *
 */

package com.yipin.util;
import java.util.ArrayList;
import java.util.List;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;

import com.yipin.db.DBHelper;

/*
 * This class shows how to make a simple authenticated ItemLookup call to the
 * Amazon Product Advertising API.
 * 
 * See the README.html that came with this sample for instructions on
 * configuring and running the sample.
 */
public class chwyadd {
	

	
	public static void main(String[] args) {
		/*
		 * Set up the signed requests helper
		 */
		SignedRequestsHelper helper;
		

		String requestUrl = null;
		
		String title = null;
		String price = null;
	
		List<String> citys = new ArrayList<String>();
        citys.add("安康市");citys.add("邯郸市");citys.add("汉中市");citys.add("杭州市");citys.add("合肥市");citys.add("河池市");citys.add("河源市");
        citys.add("安庆市");citys.add("鹤壁市");citys.add("鹤岗市");citys.add("黑河市");citys.add("衡水市");citys.add("衡阳市");citys.add("呼和浩特市");
        citys.add("安阳市");citys.add("湖州市");citys.add("葫芦岛市");citys.add("怀化市");citys.add("淮安市");citys.add("淮北市");citys.add("淮南市");
        citys.add("鞍山市");citys.add("黄冈市");citys.add("黄山市");citys.add("黄石市");citys.add("惠州市");citys.add("鸡西市");citys.add("吉安市");
        citys.add("巴中市");citys.add("吉林市");citys.add("济南市");citys.add("济宁市");citys.add("济源市");citys.add("佳木斯市");citys.add("嘉兴市");
        citys.add("白城市");citys.add("江门市");citys.add("焦作市");citys.add("揭阳市");citys.add("金昌市");citys.add("金华市");citys.add("锦州市");
        citys.add("白山市");citys.add("晋城市");citys.add("晋中市");citys.add("荆门市");citys.add("荆州市");citys.add("景德镇市");citys.add("九江市");
        citys.add("白银市");citys.add("酒泉市");citys.add("开封市");citys.add("昆明市");citys.add("拉萨市");citys.add("莱芜市");citys.add("兰州市");
        citys.add("包头市");citys.add("廊坊市");citys.add("乐山市");citys.add("漯河市");citys.add("丽水市");citys.add("连云港市");citys.add("聊城市");
        citys.add("保定市");citys.add("辽阳市");citys.add("辽源市");citys.add("临汾市");citys.add("临沂市");citys.add("柳州市");citys.add("六安市");
        citys.add("宝鸡市");citys.add("龙岩市");citys.add("娄底市");citys.add("泸州市");citys.add("洛阳市");citys.add("吕梁市");citys.add("马鞍山市");
        citys.add("蚌埠市");citys.add("茂名市");citys.add("梅州市");citys.add("眉山市");citys.add("绵阳市");citys.add("牡丹江市");citys.add("南昌市");
        citys.add("北海市");citys.add("南充市");citys.add("南京市");citys.add("南宁市");citys.add("南平市");citys.add("南通市");citys.add("南阳市");
        citys.add("北京市");citys.add("内江市");citys.add("宁波市");citys.add("宁德市");citys.add("莆田市");citys.add("攀枝花市");citys.add("盘锦市");
        citys.add("本溪市");citys.add("平顶山市");citys.add("萍乡市");citys.add("濮阳市");citys.add("七台河市");citys.add("齐齐哈尔市");citys.add("潜江市");
        citys.add("滨州市");citys.add("秦皇岛市");citys.add("清远市");citys.add("青岛市");citys.add("衢州市");citys.add("曲靖市");citys.add("泉州市");
        citys.add("亳州市");citys.add("日喀则");citys.add("日照市");citys.add("三门峡市");citys.add("三明市");citys.add("三亚市");citys.add("汕头市");
        citys.add("沧州市");citys.add("汕尾");citys.add("商洛市");citys.add("商丘市");citys.add("上海市");citys.add("上饶市");citys.add("韶关市");
        citys.add("常德市");citys.add("绍兴");citys.add("邵阳市");citys.add("深圳市");citys.add("神农架市");citys.add("沈阳市");citys.add("十堰市");
        citys.add("常州市");citys.add("石家庄");citys.add("双鸭山市");citys.add("朔州市");citys.add("四平市");citys.add("松原市");citys.add("苏州市");
        citys.add("长春市");citys.add("宿迁市");citys.add("宿州市");citys.add("绥化市");citys.add("遂宁市");citys.add("随州市");citys.add("台州市");
        citys.add("长沙市");citys.add("太原市");citys.add("泰安市");citys.add("泰州市");citys.add("唐山市");citys.add("天津市");citys.add("天门市");
        citys.add("长治市");citys.add("铁岭市");citys.add("通化市");citys.add("铜川市");citys.add("铜陵市");citys.add("吐鲁番市");citys.add("威海市");
        citys.add("巢湖市");citys.add("潍坊市");citys.add("渭南市");citys.add("温州市");citys.add("乌鲁木齐市");citys.add("无锡市");citys.add("芜湖市");
        citys.add("潮州市");citys.add("武汉市");citys.add("武威市");citys.add("厦门市");citys.add("西安市");citys.add("西宁市");citys.add("西双版纳市");
        citys.add("郴州市");citys.add("仙桃市");citys.add("咸宁市");citys.add("咸阳市");citys.add("湘潭市");citys.add("襄樊市");citys.add("孝感市");
        citys.add("成都市");citys.add("析州市");citys.add("新乡市");citys.add("新余市");citys.add("信阳市");citys.add("邢台市");citys.add("徐州市");
        citys.add("承德市");citys.add("许昌市");citys.add("宣城市");citys.add("雅安市");citys.add("烟台市");citys.add("延安市");citys.add("延吉市");
        citys.add("池州市");citys.add("盐城市");citys.add("扬州市");citys.add("阳江市");citys.add("阳泉市");citys.add("伊春市");citys.add("宜宾市");
        citys.add("赤峰市");citys.add("宜昌市");citys.add("宜春市");citys.add("益阳市");citys.add("银川市");citys.add("鹰潭市");citys.add("营口市");
        citys.add("滁州市");citys.add("永州市");citys.add("榆林市");citys.add("玉溪市");citys.add("岳阳市");citys.add("云浮市");citys.add("运城市");
        citys.add("朝阳市");citys.add("枣庄市");citys.add("湛江市");citys.add("张家界市");citys.add("张家口市");citys.add("漳州市");citys.add("昭通市");
        citys.add("重庆市");citys.add("肇庆市");citys.add("镇江市");citys.add("郑州市");citys.add("中山市");citys.add("周口市");citys.add("舟山市");
        citys.add("达州市");citys.add("株洲市");citys.add("珠海市");citys.add("驻马店市");citys.add("淄博市");citys.add("资阳市");citys.add("自贡市");
        citys.add("大理市");
        citys.add("大连市");
        citys.add("大庆市");
        citys.add("大同市");
        citys.add("丹东市");
        citys.add("德阳市");
        citys.add("德州市");
        citys.add("东莞市");
        citys.add("东营市");
        citys.add("鄂州市");
        citys.add("恩施市");
        citys.add("防城港市");
        citys.add("佛山市");
        citys.add("东营市");
        citys.add("福州市");
        citys.add("抚顺市");
        citys.add("抚州市");
        citys.add("阜新市");
        citys.add("阜阳市");
        citys.add("赣州市");
        citys.add("广安市");
        citys.add("广元市");
        citys.add("广州市");
        citys.add("桂林市");
        citys.add("贵阳市");
        citys.add("菏泽市");
        citys.add("哈尔滨市");
        citys.add("海口市");
        
        
//        for(int u = 0; u<citys.size(); u++){
//        	 List<Item> listttt = new ArrayList<Item>();
//        	 List<Item> listttt2 = new ArrayList<Item>();
//     		title = fetchTitle("http://openapi.aibang.com/search?app_key=48464e73d160851386ad1800b150e568&city=" + citys.get(u)+"&q=宾馆&from=1&to=300",listttt,citys.get(u),"live");
//     		title = fetchTitle("http://openapi.aibang.com/search?app_key=48464e73d160851386ad1800b150e568&city=" + citys.get(u)+"&q=餐馆&from=1&to=300",listttt2,citys.get(u),"hotel");
//        }
   	 List<Item> listttt = new ArrayList<Item>();
   	 List<Item> listttt2 = new ArrayList<Item>();
 		title = fetchTitle("http://openapi.aibang.com/search?app_key=48464e73d160851386ad1800b150e568&city=" + "长春市"+"&q=宾馆&from=1&to=300",listttt,"长春市","live");
 		title = fetchTitle("http://openapi.aibang.com/search?app_key=48464e73d160851386ad1800b150e568&city=" + "长春市"+"&q=餐馆&from=1&to=300",listttt2,"长春市","hotel");
		


	}
	

	private static String fetchTitle(String requestUrl,List<Item> listItems,String city ,String islive) {
		String title = null;
		try {
//			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			SAXBuilder db = new SAXBuilder(false);
			Document doc = db.build(requestUrl);
//			Format format = Format.getPrettyFormat();
//			format.setEncoding("gb2312");//设置xml文件的字符为gb2312，解决中文问题
//			XMLOutputter xmlout = new XMLOutputter(format);
//			ByteArrayOutputStream bo = new ByteArrayOutputStream();
//			xmlout.output(doc,bo);
//			String xmlStr = bo.toString();
//			System.out.println("yangxu--->" + xmlStr);
			
			 Element root = doc.getRootElement(); // 取得根节点
			 List list = root.getChildren(); // 取得根节点下一层所有节点放入List类中
			 System.out.println(list.size());
			Element rootBizs = (Element) list.get(5);
			System.out.println(rootBizs.getName());
			List listBiz = rootBizs.getChildren();
			Element rootBiz = null;
			System.out.println(listBiz.size());
			
		
			
			for(int i = 0 ; i <listBiz.size(); i++ ){
				
				Item yangxu = new Item();
				
				rootBiz = (Element) listBiz.get(i);
				List Biz = rootBiz.getChildren();
				 for (int j = 0; j < Biz.size(); j++) {
				      Element itemsss = (Element) Biz.get(j);
//				      System.out.println("yangxu--->" + itemsss.getText());
				      if(itemsss.getName().equals("id")){
				    	  yangxu.setId(itemsss.getText());
				      }else if(itemsss.getName().equals("name")){
				    	  yangxu.setName(itemsss.getText());
				      }else if(itemsss.getName().equals("addr")){
				    	  yangxu.setAddress(itemsss.getText());
				      }else if(itemsss.getName().equals("tel")){
				    	  yangxu.setTelnumber(itemsss.getText());
				      }else if(itemsss.getName().equals("cate")){
				    	  yangxu.setType(itemsss.getText());
				      }else if(itemsss.getName().equals("cost")){
				    	  yangxu.setCost(itemsss.getText());
				      }else if(itemsss.getName().equals("img_url")){
				    	  yangxu.setImage(itemsss.getText().toString());
				      }
				 }
				 listItems.add(yangxu);
				 System.out.println(yangxu.getId() + yangxu.getName() + yangxu.getAddress() + yangxu.getCost() + yangxu.getDesribe() + "   "+ yangxu.getImage() + "   " +  yangxu.getRate() + "       "+ yangxu.getTelnumber() + yangxu.getType());
				System.out.println(Biz.size());
			}
			System.out.println(listItems.size());
			
			for(int h = 0 ; h<listItems.size(); h++){
				save(listItems.get(h), city, islive);
			}

				
			} catch (Exception e) {
				e.printStackTrace();
			}

		return title;
		
	}
	
	public static int save(Item item,String city ,String itemtype) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into item(BusinessID,address,businessName,city,cost,img,itemtype,teleNum,type) values(");
		sbf.append("\"" + item.getId() + "\",");
		sbf.append("\"" + item.getAddress() + "\",");
		sbf.append("\"" + item.getName() + "\",");
		sbf.append("\"" + city + "\",");
		sbf.append("\"" + item.getCost() + "\",");
		sbf.append("\"" + item.getImage() + "\",");
		sbf.append("\"" + itemtype + "\",");
		sbf.append("\"" + item.getTelnumber() + "\",");
		sbf.append("\"" + item.getType() + "\")");
		return DBHelper.executeSQL(sbf.toString());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	/*
//	 * Your AWS Access Key ID, as taken from the AWS Your Account page.
//	 */
//	private static final String AWS_ACCESS_KEY_ID = "AKIAJNWS3SR5VVQFO7FA";
//
//	/*
//	 * Your AWS Secret Key corresponding to the above ID, as taken from the AWS
//	 * Your Account page.
//	 */
//	private static final String AWS_SECRET_KEY = "lkXUnHO8fXK4zzilWZDjsXXWtXoQer0pHBdOQwat";
//
//	/*
//	 * Use one of the following end-points, according to the region you are
//	 * interested in:
//	 * 
//	 * US: ecs.amazonaws.com CA: ecs.amazonaws.ca UK: ecs.amazonaws.co.uk DE:
//	 * ecs.amazonaws.de FR: ecs.amazonaws.fr JP: ecs.amazonaws.jp
//	 */
//	private static final String ENDPOINT = "ecs.amazonaws.com";
//
//	/*
//	 * The Item ID to lookup. The value below was selected for the US locale.
//	 * You can choose a different value if this value does not work in the
//	 * locale of your choice.
//	 */
//	//private static final String ITEM_ID = "B008BLVJD2";//B004UBXOAI
//
//	public void main(String ITEM_ID) {
//		/*
//		 * Set up the signed requests helper
//		 */
//		SignedRequestsHelper helper;
//		try {
//			helper = SignedRequestsHelper.getInstance(ENDPOINT,
//					AWS_ACCESS_KEY_ID, AWS_SECRET_KEY);
//		} catch (Exception e) {
//			e.printStackTrace();
//			return;
//		}
//
//		String requestUrl = null;
//		
//		String title = null;
//		String price = null;
//		System.out.println("Map form example:");
//		Map<String, String> params = new HashMap<String, String>();
//		params.put("AssociateTag", "yao184447555-23");
//		params.put("Service", "AWSECommerceService");
//		params.put("Version", "2009-03-31");
//		params.put("Operation", "ItemLookup");
//		params.put("ItemId", ITEM_ID);
//		params.put("ResponseGroup", "Large");
//
//		
//
//		requestUrl = helper.sign(params);
//		System.out.println("Signed Request is \"" + requestUrl + "\"");
//
//		title = fetchTitle(requestUrl);
//		System.out.println("Signed Title is \"" + title + "\"");
//	}
//	private static String fetchTitle(String requestUrl) {
//		String title = null;
//		try {
//			SAXBuilder db = new SAXBuilder(false);
//			Document doc = db.build(requestUrl);
//
//			XMLOutputter outputter = new XMLOutputter();
//			outputter.output(doc, new FileOutputStream("E://Workspaces/AmazonProductAdvtApiSampleJavaQuery/zhuchenghe.xml"));
//		} catch (Exception e) {
//			throw new RuntimeException(e);
//		}
//		return title;
//		
//	}
//	public static void outputDocument(Document doc){
//	try {
//		XMLOutputter outputter = new XMLOutputter();
//	    outputter.output(doc, System.out);
//	} catch (java.io.IOException e) {
//	    e.printStackTrace();
//	                                 }
//	}
//	public static void outputDocumentToFile(Document myDocument) {
//        //setup this like outputDocument
//        try {
//            XMLOutputter outputter = new XMLOutputter();
//
//            //output to a file
//            FileWriter writer = new FileWriter("xml/myFile.xml");
//            outputter.output(myDocument, writer);
//            writer.close();
//
//        } catch(java.io.IOException e) {
//            e.printStackTrace();
//        }
//    }
//
//	private static String fetchPrice(String requestUrl) {
//		String price = null;
//		try {
//		} catch (Exception e) {
//			throw new RuntimeException(e);
//		}
//		return price;
//
//	}


      


























}
