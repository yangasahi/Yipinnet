package com.yipin.util;

import java.util.List;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ItemHandler extends DefaultHandler{
	private List<Item> infos = null;
    private Item LocationInfo = null;
    private String tagName = null;
    
    public ItemHandler(List<Item> infos) {
		super();
		this.infos = infos;
	}
    
    @Override
	public void startDocument() throws SAXException {
		// TODO Auto-generated method stub
		super.startDocument();
	}
    @Override
	public void startElement(String uri, String localName, String qName,
			Attributes attributes) throws SAXException {
		// TODO Auto-generated method stub
		this.tagName = localName;
		if(tagName.equals("biz")){
			LocationInfo = new Item();
		}
	}
	@Override
	public void characters(char[] ch, int start, int length)
			throws SAXException {
		// TODO Auto-generated method stub
		String temp = new String(ch,start,length);
		if(tagName.equals("id")){
			LocationInfo.setId(temp);
		}else if(tagName.equals("name")){
			LocationInfo.setName(temp);
		}else if(tagName.equals("addr")){
		    LocationInfo.setAddress(temp);
		}else if(tagName.equals("tel")){
			LocationInfo.setTelnumber(temp);
		}else if(tagName.equals("cate")){
			LocationInfo.setType(temp);
		}else if(tagName.equals("rate")){
			LocationInfo.setRate(temp);
		}else if(tagName.equals("cost")){
			LocationInfo.setCost(temp);
		}else if(tagName.equals("desc")){
			LocationInfo.setDesribe(temp);
		}else if(tagName.equals("img_url")){
			LocationInfo.setImage(temp);
		}
		
	}

	@Override
	public void endElement(String uri, String localName, String qName)
			throws SAXException {
		// TODO Auto-generated method stub
		if(qName.equals("biz")){
		     infos.add(LocationInfo);
		}
		tagName = "";
	}

	
	@Override
	public void endDocument() throws SAXException {
		// TODO Auto-generated method stub
		
	}

	

	public List<Item> getInfos() {
		return infos;
	}

	public void setInfos(List<Item> infos) {
		this.infos = infos;
	}

	

	
}
