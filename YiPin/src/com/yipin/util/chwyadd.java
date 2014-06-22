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
        citys.add("������");citys.add("������");citys.add("������");citys.add("������");citys.add("�Ϸ���");citys.add("�ӳ���");citys.add("��Դ��");
        citys.add("������");citys.add("�ױ���");citys.add("�׸���");citys.add("�ں���");citys.add("��ˮ��");citys.add("������");citys.add("���ͺ�����");
        citys.add("������");citys.add("������");citys.add("��«����");citys.add("������");citys.add("������");citys.add("������");citys.add("������");
        citys.add("��ɽ��");citys.add("�Ƹ���");citys.add("��ɽ��");citys.add("��ʯ��");citys.add("������");citys.add("������");citys.add("������");
        citys.add("������");citys.add("������");citys.add("������");citys.add("������");citys.add("��Դ��");citys.add("��ľ˹��");citys.add("������");
        citys.add("�׳���");citys.add("������");citys.add("������");citys.add("������");citys.add("�����");citys.add("����");citys.add("������");
        citys.add("��ɽ��");citys.add("������");citys.add("������");citys.add("������");citys.add("������");citys.add("��������");citys.add("�Ž���");
        citys.add("������");citys.add("��Ȫ��");citys.add("������");citys.add("������");citys.add("������");citys.add("������");citys.add("������");
        citys.add("��ͷ��");citys.add("�ȷ���");citys.add("��ɽ��");citys.add("�����");citys.add("��ˮ��");citys.add("���Ƹ���");citys.add("�ĳ���");
        citys.add("������");citys.add("������");citys.add("��Դ��");citys.add("�ٷ���");citys.add("������");citys.add("������");citys.add("������");
        citys.add("������");citys.add("������");citys.add("¦����");citys.add("������");citys.add("������");citys.add("������");citys.add("��ɽ��");
        citys.add("������");citys.add("ï����");citys.add("÷����");citys.add("üɽ��");citys.add("������");citys.add("ĵ������");citys.add("�ϲ���");
        citys.add("������");citys.add("�ϳ���");citys.add("�Ͼ���");citys.add("������");citys.add("��ƽ��");citys.add("��ͨ��");citys.add("������");
        citys.add("������");citys.add("�ڽ���");citys.add("������");citys.add("������");citys.add("������");citys.add("��֦����");citys.add("�̽���");
        citys.add("��Ϫ��");citys.add("ƽ��ɽ��");citys.add("Ƽ����");citys.add("�����");citys.add("��̨����");citys.add("���������");citys.add("Ǳ����");
        citys.add("������");citys.add("�ػʵ���");citys.add("��Զ��");citys.add("�ൺ��");citys.add("������");citys.add("������");citys.add("Ȫ����");
        citys.add("������");citys.add("�տ���");citys.add("������");citys.add("����Ͽ��");citys.add("������");citys.add("������");citys.add("��ͷ��");
        citys.add("������");citys.add("��β");citys.add("������");citys.add("������");citys.add("�Ϻ���");citys.add("������");citys.add("�ع���");
        citys.add("������");citys.add("����");citys.add("������");citys.add("������");citys.add("��ũ����");citys.add("������");citys.add("ʮ����");
        citys.add("������");citys.add("ʯ��ׯ");citys.add("˫Ѽɽ��");citys.add("˷����");citys.add("��ƽ��");citys.add("��ԭ��");citys.add("������");
        citys.add("������");citys.add("��Ǩ��");citys.add("������");citys.add("�绯��");citys.add("������");citys.add("������");citys.add("̨����");
        citys.add("��ɳ��");citys.add("̫ԭ��");citys.add("̩����");citys.add("̩����");citys.add("��ɽ��");citys.add("�����");citys.add("������");
        citys.add("������");citys.add("������");citys.add("ͨ����");citys.add("ͭ����");citys.add("ͭ����");citys.add("��³����");citys.add("������");
        citys.add("������");citys.add("Ϋ����");citys.add("μ����");citys.add("������");citys.add("��³ľ����");citys.add("������");citys.add("�ߺ���");
        citys.add("������");citys.add("�人��");citys.add("������");citys.add("������");citys.add("������");citys.add("������");citys.add("��˫������");
        citys.add("������");citys.add("������");citys.add("������");citys.add("������");citys.add("��̶��");citys.add("�差��");citys.add("Т����");
        citys.add("�ɶ���");citys.add("������");citys.add("������");citys.add("������");citys.add("������");citys.add("��̨��");citys.add("������");
        citys.add("�е���");citys.add("�����");citys.add("������");citys.add("�Ű���");citys.add("��̨��");citys.add("�Ӱ���");citys.add("�Ӽ���");
        citys.add("������");citys.add("�γ���");citys.add("������");citys.add("������");citys.add("��Ȫ��");citys.add("������");citys.add("�˱���");
        citys.add("�����");citys.add("�˲���");citys.add("�˴���");citys.add("������");citys.add("������");citys.add("ӥ̶��");citys.add("Ӫ����");
        citys.add("������");citys.add("������");citys.add("������");citys.add("��Ϫ��");citys.add("������");citys.add("�Ƹ���");citys.add("�˳���");
        citys.add("������");citys.add("��ׯ��");citys.add("տ����");citys.add("�żҽ���");citys.add("�żҿ���");citys.add("������");citys.add("��ͨ��");
        citys.add("������");citys.add("������");citys.add("����");citys.add("֣����");citys.add("��ɽ��");citys.add("�ܿ���");citys.add("��ɽ��");
        citys.add("������");citys.add("������");citys.add("�麣��");citys.add("פ�����");citys.add("�Ͳ���");citys.add("������");citys.add("�Թ���");
        citys.add("������");
        citys.add("������");
        citys.add("������");
        citys.add("��ͬ��");
        citys.add("������");
        citys.add("������");
        citys.add("������");
        citys.add("��ݸ��");
        citys.add("��Ӫ��");
        citys.add("������");
        citys.add("��ʩ��");
        citys.add("���Ǹ���");
        citys.add("��ɽ��");
        citys.add("��Ӫ��");
        citys.add("������");
        citys.add("��˳��");
        citys.add("������");
        citys.add("������");
        citys.add("������");
        citys.add("������");
        citys.add("�㰲��");
        citys.add("��Ԫ��");
        citys.add("������");
        citys.add("������");
        citys.add("������");
        citys.add("������");
        citys.add("��������");
        citys.add("������");
        
        
//        for(int u = 0; u<citys.size(); u++){
//        	 List<Item> listttt = new ArrayList<Item>();
//        	 List<Item> listttt2 = new ArrayList<Item>();
//     		title = fetchTitle("http://openapi.aibang.com/search?app_key=48464e73d160851386ad1800b150e568&city=" + citys.get(u)+"&q=����&from=1&to=300",listttt,citys.get(u),"live");
//     		title = fetchTitle("http://openapi.aibang.com/search?app_key=48464e73d160851386ad1800b150e568&city=" + citys.get(u)+"&q=�͹�&from=1&to=300",listttt2,citys.get(u),"hotel");
//        }
   	 List<Item> listttt = new ArrayList<Item>();
   	 List<Item> listttt2 = new ArrayList<Item>();
 		title = fetchTitle("http://openapi.aibang.com/search?app_key=48464e73d160851386ad1800b150e568&city=" + "������"+"&q=����&from=1&to=300",listttt,"������","live");
 		title = fetchTitle("http://openapi.aibang.com/search?app_key=48464e73d160851386ad1800b150e568&city=" + "������"+"&q=�͹�&from=1&to=300",listttt2,"������","hotel");
		


	}
	

	private static String fetchTitle(String requestUrl,List<Item> listItems,String city ,String islive) {
		String title = null;
		try {
//			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			SAXBuilder db = new SAXBuilder(false);
			Document doc = db.build(requestUrl);
//			Format format = Format.getPrettyFormat();
//			format.setEncoding("gb2312");//����xml�ļ����ַ�Ϊgb2312�������������
//			XMLOutputter xmlout = new XMLOutputter(format);
//			ByteArrayOutputStream bo = new ByteArrayOutputStream();
//			xmlout.output(doc,bo);
//			String xmlStr = bo.toString();
//			System.out.println("yangxu--->" + xmlStr);
			
			 Element root = doc.getRootElement(); // ȡ�ø��ڵ�
			 List list = root.getChildren(); // ȡ�ø��ڵ���һ�����нڵ����List����
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
