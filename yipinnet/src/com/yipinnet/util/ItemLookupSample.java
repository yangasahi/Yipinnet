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

package com.yipinnet.util;
import org.jdom.xpath.XPath;
//import java.io.File;
//import java.io.FileInputStream;
//import java.io.FileNotFoundException;
import java.io.FileWriter;
//import java.io.Writer;
//import org.jdom.output.XMLOutputter;
import org.jdom.output.*;
import java.io.FileOutputStream;
//import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

//import javax.xml.parsers.DocumentBuilder;
//import javax.xml.parsers.DocumentBuilderFactory;
//import org.jdom.Attribute;
//import org.jdom.Comment;
//import org.jdom.Element;
//import org.jdom.Text;

//import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jdom.Document;
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
public class ItemLookupSample {
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
	//private static final String ITEM_ID = "B008BLVJD2";//B004UBXOAI

	public void main(String ITEM_ID) {
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

		title = fetchTitle(requestUrl);
		System.out.println("Signed Title is \"" + title + "\"");
	}
	private static String fetchTitle(String requestUrl) {
		String title = null;
		try {
			SAXBuilder db = new SAXBuilder(false);
			Document doc = db.build(requestUrl);

			XMLOutputter outputter = new XMLOutputter();
			outputter.output(doc, new FileOutputStream("E://Workspaces/AmazonProductAdvtApiSampleJavaQuery/zhuchenghe.xml"));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return title;
		
	}
	public static void outputDocument(Document doc){
	try {
		XMLOutputter outputter = new XMLOutputter();
	    outputter.output(doc, System.out);
	} catch (java.io.IOException e) {
	    e.printStackTrace();
	                                 }
	}
	public static void outputDocumentToFile(Document myDocument) {
        //setup this like outputDocument
        try {
            XMLOutputter outputter = new XMLOutputter();

            //output to a file
            FileWriter writer = new FileWriter("xml/myFile.xml");
            outputter.output(myDocument, writer);
            writer.close();

        } catch(java.io.IOException e) {
            e.printStackTrace();
        }
    }

	private static String fetchPrice(String requestUrl) {
		String price = null;
		try {
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return price;

	}


      


























}
