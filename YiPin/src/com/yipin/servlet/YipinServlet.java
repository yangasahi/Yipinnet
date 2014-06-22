package com.yipin.servlet;

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

import com.yipin.dao.GoodsDAO;
import com.yipin.dao.TopDAO;
import com.yipin.model.Price;
import com.yipin.model.Top;

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
		String price = request.getParameter("price");
		String goodstypeid = request.getParameter("goodstypeid");
		String path = null;
		String flag = request.getParameter("flag");
		// 跳转到首页
		if (flag != null && flag.equals("top")) {
		
			String item = "1";
			List<Top> list = TopDAO.view();
			request.setAttribute("item", item);
			request.setAttribute("list", list);
			
			path = "yipin/top.jsp";
		}
		// 进入添加商品页面
		if (flag != null && flag.equals("tianjia")) {
			path = "/add_top.jsp";
		}
		if (flag != null && flag.equals("view")) {
			List<Top> list = TopDAO.view();
			request.setAttribute("list", list);
			path = "/Top.jsp";
		}
		// 管理员删除Top100中的商品
		if (flag != null && flag.equals("del")) {
			TopDAO.delete(goodsid);
			List<Top> list = TopDAO.view();
			request.setAttribute("list", list);
			path = "/Top.jsp";
		}
		// 得到要修改的Top100商品信息
		if (flag != null && flag.equals("preupdate")) {
			request.setAttribute("top", TopDAO.getObj(goodsid));
			path = "/top_update.jsp";
		}
		// 管理员修改商品信息
		if (flag != null && flag.equals("update")) {
			Top top = TopDAO.getObj(goodsid);
			top.setGoodsname(goodsname);
			top.setIntroduce(introduce);
			top.setImage(image);
			top.setAddr(addr);
			top.setPrice(price);
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			top.setTime(format.format(new Date()));
			top.setGoodstypeid(Integer.parseInt(goodstypeid));
			TopDAO.update(top);
			List<Top> list = TopDAO.view();
			request.setAttribute("list", list);
			path = "/Top.jsp";
		}
		// 管理员添加Top100商品
		if (flag != null && flag.equals("add_top")) {
			String random = request.getParameter("validate");
			String random2 = request.getSession().getAttribute("randomCode")
					.toString();
			if (!random.equals(random2)) {
				request.setAttribute("error1", "输入的验证码不正确！");
				path = "/add_top.jsp";
			} else {
				Top top = new Top();
				top.setGoodsid(goodsid);
				top.setGoodsname(goodsname);
				top.setIntroduce(introduce);
				top.setImage(image);
				top.setAddr(addr);
				top.setPrice(price);
				DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				top.setTime(format.format(new Date()));
				top.setGoodstypeid(Integer.parseInt(goodstypeid));
				TopDAO.save(top);
				List<Top> list = TopDAO.view();
				request.setAttribute("list", list);
				path = "/Top.jsp";
			}
			
		}
		request.getRequestDispatcher(path).forward(request, response);
		out.flush();
		out.close();
	}
}
