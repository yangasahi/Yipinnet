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
 AIzaSyCghnKnR4DQWqcqNu104ThjgAsEzSXxm4M
 *  API Version: 2009-03-31
 *
 */

package com.yipin.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilderFactory;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jdom.output.XMLOutputter;

import com.yipin.db.DBHelper;
import com.yipin.model.TopItem;

//import org.w3c.dom.Node;
//import org.w3c.dom.Document;
//import org.w3c.dom.Element;
//import org.w3c.dom.Node;
//import org.w3c.dom.NodeList;
/*
 * This class shows how to make a simple authenticated ItemLookup call to the
 * Amazon Product Advertising API.
 * 
 * See the README.html that came with this sample for instructions on
 * configuring and running the sample.
 */

public class addGoods {

	/*
	 * Your AWS Access Key ID, as taken from the AWS Your Account page.
	 */
	private static final String AWS_ACCESS_KEY_ID = "AKIAJNWS3SR5VVQFO7FA";

	/*
	 * Your AWS Secret Key corresponding to the above ID, as taken from the AWS
	 * Your Account page.
	 */
	private static final String AWS_SECRET_KEY = "lkXUnHO8fXK4zzilWZDjsXXWtXoQer0pHBdOQwat";

	/*
	 * Use one of the following end-points, according to the region you are
	 * interested in:
	 * 
	 * US: ecs.amazonaws.com CA: ecs.amazonaws.ca UK: ecs.amazonaws.co.uk DE:
	 * ecs.amazonaws.de FR: ecs.amazonaws.fr JP: ecs.amazonaws.jp
	 */
	private static final String ENDPOINT = "ecs.amazonaws.com";

	/*
	 * The Item ID to lookup. The value below was selected for the US locale.
	 * You can choose a different value if this value does not work in the
	 * locale of your choice.
	 */
	private static final String ITEM_ID = "B004561FTK";// B004UBXOAI

	public static void main(String[] args) {
		/*
		 * Set up the signed requests helper
		 */
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

		/* The helper can sign requests in two forms - map form and string form */

		/*
		 * Here is an example in map form, where the request parameters are
		 * stored in a map.
		 */
		System.out.println("Map form example:");
		Map<String, String> params = new HashMap<String, String>();
		params.put("AssociateTag", "yao184447555-23");
		params.put("Service", "AWSECommerceService");
		params.put("Version", "2009-03-31");
		params.put("Operation", "ItemSearch");
		params.put("Availability", "Available");
		params.put("Keywords", "Mustang");
		params.put("SearchIndex", "Blended");
		params.put("ResponseGroup", "Large");
		params.put("ReviewsPage", "100");

		requestUrl = helper.sign(params);
		System.out.println("Signed Request is \"" + requestUrl + "\"");

		title = fetchTitle(requestUrl);
		System.out.println("Signed Title is \"" + title + "\"");

	}

	/*
	 * Utility function to fetch the response from the service and extract the
	 * title from the XML.
	 */

	private static String fetchTitle(String requestUrl) {
		String title = null;
		List<TopItem> listttt = new ArrayList<TopItem>();
		try {
			 DocumentBuilderFactory dbf =
			 DocumentBuilderFactory.newInstance();
			 SAXBuilder db = new SAXBuilder(false);
			 Document doc = db.build(requestUrl);
			
			 XMLOutputter outputter = new XMLOutputter();
			 outputter.output(doc, new FileOutputStream("E://testwewe.xml"));

//			SAXBuilder sb = new SAXBuilder(); // 新建立构造器
//			Document doc = null;
//			try {
//				doc = sb.build(new FileInputStream("E://testwewe.xml")); // 读入.xml
//			} catch (FileNotFoundException ex) {
//			} catch (JDOMException ex) {
//			}

			Element root = doc.getRootElement(); // 取得根节点
			List list = root.getChildren(); // 取得根节点下一层所有节点放入List类中

			Element Items = (Element) list.get(1);

			List itemsList = Items.getChildren();
			Element items = null;
			for (int i = 4; i < itemsList.size() - 4; i++) {

				items = (Element) itemsList.get(i);

				List itemmmm = items.getChildren();
				if (itemmmm.size() > 2) {
					TopItem topItem = new TopItem();
					String sbIntro = null;
					for (int j = 0; j < itemmmm.size(); j++) {
						Element itemsss = (Element) itemmmm.get(j);
						System.out.println("zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz--->"+itemsss.getText());
						if (itemsss.getName().equals("ASIN")) {
							
							topItem.setGoodsid(itemsss.getText());
							
						} else if (itemsss.getName().equals("DetailPageURL")) {
							topItem.setAddr(itemsss.getText());
						} else if (itemsss.getName().equals("MediumImage")) {
							List image = itemsss.getChildren();
							for (int l = 0; l < image.size(); l++) {
								Element imagee = (Element) image.get(l);
								if (imagee.getName().equals("URL")) {
									topItem.setImage(imagee.getText());
								}
							}
						} else if (itemsss.getName().equals("ItemAttributes")) {
							List intross = itemsss.getChildren();
							for (int o = 0; o < intross.size(); o++) {
								Element into = (Element) intross.get(o);
								if (into.getName().equals("Title")) {
									topItem.setGoodsname(into.getText());
								} else if (into.getName().equals("Feature")) {
									sbIntro = into.getText();
								}
							}
						} else if (itemsss.getName().equals("OfferSummary")) {
							List prices = itemsss.getChildren();
							for (int p = 0; p < prices.size(); p++) {
								Element pricess = (Element) prices.get(p);
								if (pricess.getName().equals("LowestNewPrice")) {
									List pricesss = pricess.getChildren();
									for (int e = 0; e < pricesss.size(); e++) {
										Element pri = (Element) pricesss.get(e);
										if (pri.getName().equals(
												"FormattedPrice")) {
											topItem.setPrice(pri.getText());
										}
									}
								}
							}
						}
					}
					topItem.setIntroduce(sbIntro);
					topItem.setIstop("is");
					DateFormat format = new SimpleDateFormat(
							"yyyy-MM-dd HH:mm:ss");
					topItem.setTime(format.format(new Date()));
					System.out.println("yangxu--->" + topItem.getGoodsid()
							+ topItem.getGoodsname() + topItem.getImage());
					listttt.add(topItem);
					for (int q = 0; q < listttt.size(); q++) {
						save(listttt.get(q));
					}
				}

			}

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return title;

	}

	public static int save(TopItem item) {
		StringBuffer sbf = new StringBuffer();
		sbf
				.append("insert into topitem(goodsid,goodsname,introduce,image,addr,istop,price,time) values(");
		sbf.append("'" + item.getGoodsid() + "',");
		sbf.append("'" + item.getGoodsname() + "',");
		sbf.append("'" + item.getIntroduce() + "',");
		sbf.append("'" + item.getImage() + "',");
		sbf.append("'" + item.getAddr() + "',");
		sbf.append("'" + item.getIstop() + "',");
		sbf.append("'" + item.getPrice() + "',");
		sbf.append("'" + item.getTime() + "')");
		return DBHelper.executeSQL(sbf.toString());
	}

}
