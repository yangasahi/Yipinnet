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

import com.yipinnet.dao.CommentDAO;
import com.yipinnet.dao.GoodsDAO;
import com.yipinnet.dao.PriceDAO;
import com.yipinnet.dao.TopDAO;
import com.yipinnet.dao.TopItemDAO;
import com.yipinnet.model.Comments;
import com.yipinnet.model.Item;
import com.yipinnet.model.Price;
import com.yipinnet.util.JDomeGetItem;
import com.yipinnet.util.JDomeScanKey;

public class YipinServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		String price = request.getParameter("price");
		String username = request.getParameter("username");
		String content = request.getParameter("content");
		String search_content = request.getParameter("search_content");
		String goodstypename = request.getParameter("goodstypename");
		String path = null;
		String flag = request.getParameter("flag");
		// 跳转到首页
		if (flag != null && flag.equals("top")) {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			
			String item = "1";
			List<Item> list = TopDAO.view(format.format(new Date()));
			request.setAttribute("item", item);
			request.setAttribute("list", list);
			List<Comments> commentList = CommentDAO.view();
			request.setAttribute("comment", commentList);
			path = "yipin/top.jsp";
		}
		if (flag != null && flag.equals("Books")) {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String item = "1";
			List<Item> list = TopDAO.view_Books(format.format(new Date()));
			request.setAttribute("item", item);
			request.setAttribute("list", list);
			List<Comments> commentList = CommentDAO.view();
			request.setAttribute("comment", commentList);
			path = "yipin/top.jsp";
		}
		if (flag != null && flag.equals("Software")) {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String item = "1";
			List<Item> list = TopDAO.view_Software(format.format(new Date()));
			request.setAttribute("item", item);
			request.setAttribute("list", list);
			List<Comments> commentList = CommentDAO.view();
			request.setAttribute("comment", commentList);
			path = "yipin/top.jsp";
		}
		if (flag != null && flag.equals("Sporting")) {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String item = "1";
			List<Item> list = TopDAO.view_Sporting(format.format(new Date()));
			request.setAttribute("item", item);
			request.setAttribute("list", list);
			List<Comments> commentList = CommentDAO.view();
			request.setAttribute("comment", commentList);
			path = "yipin/top.jsp";
		}
		if (flag != null && flag.equals("Toys")) {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String item = "1";
			List<Item> list = TopDAO.view_Toys(format.format(new Date()));
			request.setAttribute("item", item);
			request.setAttribute("list", list);
			List<Comments> commentList = CommentDAO.view();
			request.setAttribute("comment", commentList);
			path = "yipin/top.jsp";
		}
		if (flag == null && search_content != null) {
			String item = "1";
			List<Item> list = TopDAO.view_search(search_content);
			request.setAttribute("item", item);
			request.setAttribute("list", list);
			List<Comments> commentList = CommentDAO.view();
			request.setAttribute("comment", commentList);
			path = "yipin/top.jsp";
		}
		// 进入添加商品页面
		if (flag != null && flag.equals("tianjia")) {
			path = "/admin/add_top.jsp";
		}
		if (flag != null && flag.equals("view")) {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			List<Item> list = TopDAO.view(format.format(new Date()));
			request.setAttribute("list", list);
			path = "/admin/Top.jsp";
		}
		// 管理员删除Top100中的商品
		if (flag != null && flag.equals("del")) {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			TopDAO.delete(goodsid);
			List<Item> list = TopDAO.view(format.format(new Date()));
			request.setAttribute("list", list);
			path = "/admin/Top.jsp";
		}
		// 得到要修改的Top100商品信息
		if (flag != null && flag.equals("preupdate")) {
			request.setAttribute("top", TopDAO.getObj(goodsid));
			path = "/admin/top_update.jsp";
		}
		// 管理员修改商品信息
		if (flag != null && flag.equals("update")) {
			
			Item item = TopDAO.getObj(goodsid);
			item.setGoodsname(goodsname);
			item.setIntroduce(introduce);
			item.setImage(image);
			item.setAddr(addr);
			item.setIstop(istop);
			item.setPrice(price);
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			item.setTime(format.format(new Date()));
			item.setGoodstypename(goodstypename);
			TopDAO.update(item);
			List<Item> list = TopDAO.view(format.format(new Date()));
			request.setAttribute("list", list);
			path = "/admin/Top.jsp";
		}
		// 管理员添加Top100商品
		if (flag != null && flag.equals("add_top")) {
			String random = request.getParameter("validate");
			String random2 = request.getSession().getAttribute("randomCode")
					.toString();
			if (!random.equals(random2)) {
				request.setAttribute("error1", "输入的验证码不正确！");
				path = "/admin/add_top.jsp";
			} else {
				Item item = new Item();
				item.setGoodsid(goodsid);
				item.setGoodsname(goodsname);
				item.setIntroduce(introduce);
				item.setImage(image);
				item.setAddr(addr);
				item.setIstop(istop);
				item.setPrice(price);
				DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				item.setTime(format.format(new Date()));
				item.setGoodstypename(goodstypename);
				TopDAO.save(item);
				List<Item> list = TopDAO.view(format.format(new Date()));
				request.setAttribute("list", list);
				path = "/admin/Top.jsp";
			}

		}
		if (flag != null && flag.equals("addComment")) {
			Comments comment = new Comments();
			comment.setContent(content);
			comment.setGoodsid(goodsid);
			comment.setUsername(username);
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			comment.setContenttime(format.format(new Date()));
			CommentDAO.save(comment);
			String item = "1";
			List<Item> list = TopDAO.view(format.format(new Date()));
			request.setAttribute("item", item);
			request.setAttribute("list", list);
			List<Comments> commentList = CommentDAO.view();
			request.setAttribute("comment", commentList);
			path = "/yipin/top.jsp";
		}
		if (flag != null && flag.equals("addkey")) {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			StringBuilder sb = new StringBuilder();
			List<Item> list = TopDAO.view(format.format(new Date()));
			for(int i=0;i<list.size();i++){
				Item item = list.get(i);
				String name = item.getGoodsname();
				if(name != null){
					char[] ch=name.toCharArray();
					for(int j=0;j<ch.length;j++){
						if(ch[j]!=' '){
							sb.append(ch[j]);
						}else{
							System.out.println(sb.toString());
							GoodsDAO.update_key(sb.toString());
							sb.delete(0, sb.length());
						}
					}
				}
				
				String intro = item.getIntroduce();
				if(intro != null){
					char[] ch=intro.toCharArray();
					for(int k=0;k<ch.length;k++){
						if(ch[k]!=' ' && ch[k]!='\'' && ch[k]!= '\"'){
							sb.append(ch[k]);
						}else{
							System.out.println(sb.toString());
							GoodsDAO.update_key(sb.toString());
							sb.delete(0, sb.length());
						}
					}
				}
			}
    		for(int i = 0;i < list.size();i++){
    			Item item = list.get(i);
    			JDomeScanKey Jdom = new JDomeScanKey();
    			try {
    				Jdom.scan(item.getGoodsid());
    			} catch (IOException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
    		}
			path = "/admin/scan_price.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
		out.flush();
		out.close();
	}
}
