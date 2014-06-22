package com.yipinnet.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yipinnet.dao.PriceDAO;
import com.yipinnet.dao.TopItemDAO;
import com.yipinnet.model.Item;
import com.yipinnet.model.Price;
import com.yipinnet.util.JDomeGetItem;

public class ScanServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    	doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    	request.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	String goodsid = request.getParameter("goodsid");
    	
    	String path = null;
    	String flag = request.getParameter("flag");
        
    	if(flag != null && flag.equals("scan")){
    		String price = null;
    		List<Item> list = TopItemDAO.findAll();
    		for(int i = 0;i < list.size();i++){
    			Item item = list.get(i);
    			JDomeGetItem Jdom = new JDomeGetItem();
    			try {
    				price = Jdom.scan(item.getGoodsid());
    				Price prices = new Price();
    				prices.setGoodsid(item.getGoodsid());
    				prices.setGoodsprice(price);
    				DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    				prices.setPricetime(format.format(new Date()));
                    PriceDAO.save(prices);
    			} catch (IOException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
    		path="/admin/scan_price.jsp";
    	}
    	
    	request.getRequestDispatcher(path).forward(request, response);
    	out.flush();
    	out.close();
    }
    }
}
