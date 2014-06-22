package com.yipin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yipin.dao.GoodsDAO;
import com.yipin.model.Comments;
import com.yipin.model.Goods;
import com.yipin.model.Price;

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
        String goodstypeid = request.getParameter("goodstypeid");
    	String path = null;
    	String flag = request.getParameter("flag");
        
    	if(flag != null && flag.equals("view")){
    		List<Goods> list = GoodsDAO.view();
    		request.setAttribute("list", list);
    		path="/admin_goods.jsp";
    	}
    	//查看当前商品价格
    	if(flag != null && flag.equals("price_view")){
    		List<Price> list = GoodsDAO.prc_view(goodsid);
    		request.setAttribute("list", list);
    		path = "/admin_price.jsp";
    	}
    	//查看当前商品评论
    	if(flag != null && flag.equals("comment_view")){
    		List<Comments> list = GoodsDAO.comment_view(goodsid);
    		request.setAttribute("list", list);
    		path = "/admin_comment.jsp";
    	}
    	//进入添加商品页面
    	if(flag != null && flag.equals("add")){
    		path = "/add_goods.jsp";
    	}
    	//管理员添加商品
    	if(flag != null && flag.equals("save")){
    		String random = request.getParameter("validate");
    		String random2 = request.getSession().getAttribute("randomCode").toString();
    	    if(!random.equals(random2)){
    	    	request.setAttribute("error1", "输入的验证码不正确！");
    	    	path = "/add_goods.jsp";
    	    }else{
    	    	Goods goods = new Goods();
    	    	goods.setGoodsid(goodsid);
    	    	goods.setGoodsname(goodsname);
    	    	goods.setIntroduce(introduce);
    	    	goods.setImage(image);
    	    	goods.setAddr(addr);
    	    	goods.setGoodstypeid(Integer.parseInt(goodstypeid));
    	        GoodsDAO.save(goods);
    	        List<Goods> list = GoodsDAO.view();
    	        request.setAttribute("list", list);
    	        path = "/admin_goods.jsp";
    	    }
    	}
    	//管理员删除商品
    	if(flag != null && flag.equals("del")){
    		GoodsDAO.delete(goodsid);
    		List<Goods> list = GoodsDAO.view();
    		request.setAttribute("list", list);
    		path = "/admin_goods.jsp";
    	}
    	//得到要修改的商品
    	if(flag != null && flag.equals("preupdate")){
    		request.setAttribute("goods", GoodsDAO.getObj(goodsid));
    	    path = "/goods_update.jsp";
    	}
    	//管理员修改物品信息
    	if(flag != null && flag.equals("update")){
    		Goods goods = GoodsDAO.getObj(goodsid);
    		goods.setGoodsname(goodsname);
    		goods.setIntroduce(introduce);
    		goods.setImage(image);
    		goods.setAddr(addr);
    		goods.setGoodstypeid(Integer.parseInt(goodstypeid));
    	    GoodsDAO.update(goods);
    	    List<Goods> list = GoodsDAO.view();
    	    request.setAttribute("list", list);
    	    path = "/admin_goods.jsp";
    	}
    	request.getRequestDispatcher(path).forward(request, response);
    	out.flush();
    	out.close();
    }
}