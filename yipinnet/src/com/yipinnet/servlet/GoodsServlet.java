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

import com.yipinnet.dao.GoodsDAO;
import com.yipinnet.dao.TopItemDAO;
import com.yipinnet.model.Comments;
import com.yipinnet.model.Item;
import com.yipinnet.model.Key;
import com.yipinnet.model.Price;
import com.yipinnet.model.Top;
import com.yipinnet.util.addGoods;

public class GoodsServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    	doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    	request.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	String goodsid = request.getParameter("goodsid");
    	String goodsname = request.getParameter("goodsname");
    	String introduce = request.getParameter("introduce");
    	String image = request.getParameter("image");
        String addr = request.getParameter("addr");
        String istop = request.getParameter("istop");
        String condition = request.getParameter("condition");
    	String search_content = request.getParameter("search_content");
        String goodstypename = request.getParameter("goodstypename");
    	String path = null;
    	String flag = request.getParameter("flag");
        
    	if(flag != null && flag.equals("view")){
    		List<Item> list = TopItemDAO.view();
    		request.setAttribute("list", list);
    		path="/admin/admin_goods.jsp";
    	}
    	//查看当前商品价格
    	if(flag != null && flag.equals("price_view")){
    		List<Price> list = GoodsDAO.prc_view(goodsid);
    		request.setAttribute("list", list);
    		path = "/admin/admin_price.jsp";
    	}
    	//查看当前商品评论
    	if(flag != null && flag.equals("comment_view")){
    		List<Comments> list = GoodsDAO.comment_view(goodsid);
    		request.setAttribute("list", list);
    		path = "/admin/admin_comment.jsp";
    	}
    	//进入添加商品页面
    	if(flag != null && flag.equals("add")){
    		path = "/admin/add_goods.jsp";
    	}
//    	//管理员添加商品
//    	if(flag != null && flag.equals("save")){
//    		String random = request.getParameter("validate");
//    		String random2 = request.getSession().getAttribute("randomCode").toString();
//    	    if(!random.equals(random2)){
//    	    	request.setAttribute("error1", "输入的验证码不正确！");
//    	    	path = "/add_goods.jsp";
//    	    }else{
//    	    	Goods goods = new Goods();
//    	    	goods.setGoodsid(goodsid);
//    	    	goods.setGoodsname(goodsname);
//    	    	goods.setIntroduce(introduce);
//    	    	goods.setImage(image);
//    	    	goods.setAddr(addr);
//    	    	goods.setGoodstypeid(Integer.parseInt(goodstypeid));
//    	        GoodsDAO.save(goods);
//    	        List<Goods> list = GoodsDAO.view();
//    	        request.setAttribute("list", list);
//    	        path = "/admin_goods.jsp";
//    	    }
//    	}
    	//管理员删除商品
    	if(flag != null && flag.equals("del")){
    		GoodsDAO.delete(goodsid);
    		List<Item> list = GoodsDAO.view();
    		request.setAttribute("list", list);
    		path = "/admin/admin_goods.jsp";
    	}
    	//得到要修改的商品
    	if(flag != null && flag.equals("preupdate")){
    		request.setAttribute("goods", GoodsDAO.getObj(goodsid));
    	    path = "/admin/goods_update.jsp";
    	}
    	//管理员修改物品信息
    	if(flag != null && flag.equals("update")){
    		Item item = GoodsDAO.getObj(goodsid);
    		item.setGoodsname(goodsname);
    		item.setIntroduce(introduce);
    		item.setImage(image);
    		item.setAddr(addr);
    		item.setIstop(istop);
//			topItem.setPrice(rs.getString(7));
//			topItem.setTime(rs.getString(8));
    		item.setGoodstypename(goodstypename);
    	    GoodsDAO.update(item);
    	    List<Item> list = GoodsDAO.view();
    	    request.setAttribute("list", list);
    	    path = "/admin/admin_goods.jsp";
    	}
    	//根据表单扫描并返回结果
    	if(flag != null && flag.equals("scangoods")){
    		addGoods add = new addGoods(condition, search_content);
    		add.scan();
    		path="/admin/scan_price.jsp";
    	}
    	if(flag != null && flag.equals("scanitems")){
    		System.out.println("aosiwesb");
    		String[] con = {"Books","Software","SportingGoods","Toys"};
    		List<Key> list = TopItemDAO.view_key();
    		for(int i = 0; i<con.length;i++){
    			for(int j=0;j<list.size();j++){
    				Key key = list.get(j);
    				addGoods add = new addGoods(con[i], key.getKey());
    				add.scan();
    			}
    		}
    		
    		path="/admin/scan_price.jsp";
    	}
    	if(flag != null && flag.equals("addTop100")){
    		String pri = null;
    		StringBuilder sb = new StringBuilder();
    		int min = 0;
    		int nowPrice = 0;
    		int count = 0;
    		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    		String time = format.format(new Date());
    		List<Item> items = GoodsDAO.view();
    		for(int i=0;i<items.size();i++){
    			Item item = items.get(i);
    			List<Price> listPrice = GoodsDAO.find_price(item.getGoodsid());
    			for(int j=0;j<listPrice.size();j++){
    				Price price = listPrice.get(j);
    				if(price.getPricetime().equals(time)){
    					if(price.getPricetime().equals(time)){
        					if(price.getGoodsprice().equals("0")){
        						count = 0;
        					}else{
        						for(int l = 0;l < price.getGoodsprice().toCharArray().length;l++){
            						if(price.getGoodsprice().toCharArray()[l] != '.' && price.getGoodsprice().toCharArray()[l] != '$'&& price.getGoodsprice().toCharArray()[l] != ','){
            							sb.append(price.getGoodsprice().toCharArray()[l]);
            						}else if(price.getGoodsprice().toCharArray()[l] == '.'){
            							break;
            						}
            						
            					}
        						nowPrice = Integer.parseInt(sb.toString());
        					}
    				
    					pri = price.getGoodsprice();
    					
    					min = nowPrice;
    					sb.delete(0, sb.length());
    				}
    			}
    			for(int k=0; k<listPrice.size();k++){
    				Price price2 = listPrice.get(k);
    				if(price2.getPricetime().equals(time)){
    					if(price2.getGoodsprice().equals("0")){
    						count = 0;
    					}else{
    						for(int l = 1;l < price2.getGoodsprice().toCharArray().length;l++){
        						if(price2.getGoodsprice().toCharArray()[l] != '.' && price2.getGoodsprice().toCharArray()[l] != '$'&& price2.getGoodsprice().toCharArray()[l] != ','){
        							sb.append(price2.getGoodsprice().toCharArray()[l]);
        						}else if(price2.getGoodsprice().toCharArray()[l] == '.'){
        							break;
        						}
        						
        					}
        					count = Integer.parseInt(sb.toString());
    					}
    					
    					if(count<min){
    						min = count;
    					}
    					sb.delete(0, sb.length());
    				}
 
    			}
    			if(min == nowPrice){
    				Top top = new Top();
    				top.setGoodsid(item.getGoodsid());
    				top.setGoodsname(item.getGoodsname());
    				top.setIntroduce(item.getIntroduce());
    				top.setImage(item.getImage());
    				top.setAddr(item.getAddr());
    				top.setIstop("is");
    				top.setPrice(pri);
    				DateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
    	    		top.setTime(format2.format(new Date()));
    	    		top.setGoodstypename(item.getGoodstypename());
    				GoodsDAO.save(top);
    			}
    			
    		}
    		
    		path="/admin/scan_price.jsp";
    	}
    	request.getRequestDispatcher(path).forward(request, response);
    	out.flush();
    	out.close();
    }
    }
}