package com.yipin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yipin.dao.FaceDAO;
import com.yipin.model.Active;
import com.yipin.model.Brand;
import com.yipin.model.Catalog;
import com.yipin.model.Hotcata;
import com.yipin.model.Pricerange;
import com.yipin.model.Recomm;

public class FaceServlet extends HttpServlet{
	 public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
	    	doPost(request, response);
	    }
	    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
	    	request.setCharacterEncoding("utf-8");
	    	response.setCharacterEncoding("utf-8");
	    	response.setContentType("text/html");
	    	PrintWriter out = response.getWriter();
	    	String condition = request.getParameter("condition");
	    	String search_content = request.getParameter("search_content");
	    	String catalogid = request.getParameter("catalogid");
	    	String path = null;
	    	String flag = request.getParameter("flag");
	    	
	    	//从首页进入用户口碑
	    	if(flag != null && flag.equals("reputation")){
	    		String item = "4";
	    		request.setAttribute("item", item);
	    		path="yipin/reputation.jsp";
	    	}
	    	
	    	//从首页进入返利专区
	    	if(flag != null && flag.equals("return")){
	    		String item = "3";
	    		request.setAttribute("item", item);
	    		path="yipin/return.jsp";
	    	}
	    	
	    	//从首页进入比价商城
	    	if(flag != null && flag.equals("bijia")){
	    		String item = "2";
//	    		List<Pricerange> pricerange_outdoor = FaceDAO.pricerange_outdoor();
//	    		List<Pricerange> pricerange_book = FaceDAO.pricerange_book();
//	    		List<Pricerange> pricerange_computer = FaceDAO.pricerange_computer();
//	    		List<Pricerange> pricerange_fitting = FaceDAO.pricerange_fitting();
//	    		List<Pricerange> pricerange_digital = FaceDAO.pricerange_digital();
//	    		List<Pricerange> pricerange_gift = FaceDAO.pricerange_gift();
//	    		List<Pricerange> pricerange_sports = FaceDAO.pricerange_sports();
//	    		List<Pricerange> pricerange_comestic = FaceDAO.pricerange_comestic();
	    		List<Recomm> recomm_outdoor = FaceDAO.recomm_outdoor();
	    		List<Hotcata> hotcata_book = FaceDAO.hotcata_book();
	    		List<Hotcata> hotcata_comestic = FaceDAO.hotcata_comestic();
	    		List<Hotcata> hotcata_computer = FaceDAO.hotcata_computer();
	    		List<Hotcata> hotcata_digital = FaceDAO.hotcata_digital();
	    		List<Hotcata> hotcata_fitting = FaceDAO.hotcata_fitting();
	    		List<Hotcata> hotcata_gift = FaceDAO.hotcata_gift();
	    		List<Hotcata> hotcata_outdoor = FaceDAO.hotcata_outdoor();
	    		List<Hotcata> hotcata_sports = FaceDAO.hotcata_sports();
	    		request.setAttribute("recomm_outdoor", recomm_outdoor);
	    		
	    		request.setAttribute("hotcata_outdoor", hotcata_outdoor);
	    		request.setAttribute("hotcata_book", hotcata_book);
	    		request.setAttribute("hotcata_digital", hotcata_digital);
	    		request.setAttribute("hotcata_computer", hotcata_computer);
	    		request.setAttribute("hotcata_fitting", hotcata_fitting);
	    		request.setAttribute("hotcata_sports", hotcata_sports);
	    		request.setAttribute("hotcata_comestic", hotcata_comestic);
	    		request.setAttribute("hotcata_gift", hotcata_gift);
	    		request.setAttribute("item", item);
	    		path="yipin/bijia.jsp";
	    	}
	    	
	    	//管理员查看所有商品目录
	    	if(flag != null && flag.equals("view")){
	    		List<Catalog> list = FaceDAO.view();
	    		request.setAttribute("list", list);
	    		path="face/catalog.jsp";
	    	}
	    	//管理员查看该商品目录对应的热门类目
	    	if(flag != null && flag.equals("hot")){
	    		Catalog catalog = FaceDAO.catalod_name(Integer.parseInt(catalogid));
	    		String cataname = catalog.getCataname();
	    		List<Hotcata> list = FaceDAO.hot_view(cataname);
	    		request.setAttribute("list", list);
	    		path="face/hotcata.jsp";
	    	}
	    	//管理员查看该商品目录对应的价格区间
	    	if(flag != null && flag.equals("pricerange")){
	    		Catalog catalog = FaceDAO.catalod_name(Integer.parseInt(catalogid));
	    		String cataname = catalog.getCataname();
	    		List<Pricerange> list = FaceDAO.pricerange_view(cataname);
	    		request.setAttribute("list", list);
	    		path="face/pricerange.jsp";
	    	}
	    	//管理员查看该商品目录对应的活动推荐
	    	if(flag != null && flag.equals("active")){
	    		Catalog catalog = FaceDAO.catalod_name(Integer.parseInt(catalogid));
	    		String cataname = catalog.getCataname();
	    		List<Active> list = FaceDAO.active_view(cataname);
	    		request.setAttribute("list", list);
	    		path="face/active.jsp";
	    	}
	    	//管理员查看该商品目录对应的推荐品牌
	    	if(flag != null && flag.equals("brand")){
	    		Catalog catalog = FaceDAO.catalod_name(Integer.parseInt(catalogid));
	    		String cataname = catalog.getCataname();
	    		List<Brand> list = FaceDAO.brand_view(cataname);
	    		request.setAttribute("list", list);
	    		path="face/brand.jsp";
	    	}
	    	
	    	//管理员查看推荐商品
	    	if(flag != null && flag.equals("recomm_view")){
	    		path = "face/recomm_view.jsp";
	    	}
	    	
	    	//管理员查看推荐商品
	    	if(flag != null && flag.equals("recomment")){
	    		if(condition.equals("all")){
	    			List<Recomm> list = FaceDAO.recomm_all(search_content);
		    		request.setAttribute("list", list);
		    		
	    		}else if(condition.equals("book")){
	    			List<Recomm> list = FaceDAO.recomm_book(search_content);
		    		request.setAttribute("list", list);
		    	
	    		}else if(condition.equals("cosmetic")){
	    			List<Recomm> list = FaceDAO.recomm_cosmetic(search_content);
		    		request.setAttribute("list", list);
		   
	    		}else if(condition.equals("outdoor")){
	    			List<Recomm> list = FaceDAO.recomm_outdoor(search_content);
		    		request.setAttribute("list", list);
	    		}else if(condition.equals("digital")){
	    			List<Recomm> list = FaceDAO.recomm_digital(search_content);
		    		request.setAttribute("list", list);
	    		}else if(condition.equals("computer")){
	    			List<Recomm> list = FaceDAO.recomm_computer(search_content);
		    		request.setAttribute("list", list);
	    		}else if(condition.equals("fitting")){
	    			List<Recomm> list = FaceDAO.recomm_fitting(search_content);
		    		request.setAttribute("list", list);
	    		}else if(condition.equals("gift")){
	    			List<Recomm> list = FaceDAO.recomm_gift(search_content);
		    		request.setAttribute("list", list);
	    		}else if(condition.equals("sports")){
	    			List<Recomm> list = FaceDAO.recomm_sports(search_content);
		    		request.setAttribute("list", list);
	    		}
	    		path="/face/recomment.jsp";
	    	}
	    	if(flag != null && flag.equals("coupons")){
	    		String item = "5";
	    		request.setAttribute("item", item);
	    		path="/yipin/coupons.jsp";
	    	}
	    	request.getRequestDispatcher(path).forward(request, response);
	    	out.flush();
	    	out.close();
	    }
}
