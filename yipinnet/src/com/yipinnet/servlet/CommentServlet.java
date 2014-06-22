package com.yipinnet.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yipinnet.dao.CommentDAO;
import com.yipinnet.model.Comments;

public class CommentServlet extends HttpServlet{
	 public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
	    	doPost(request, response);
	    }
	    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
	    	request.setCharacterEncoding("utf-8");
	    	response.setCharacterEncoding("utf-8");
	    	response.setContentType("text/html");
	    	PrintWriter out = response.getWriter();
	    	String goodsid = request.getParameter("id");
	    	String condition = request.getParameter("condition");
	    	String search_content = request.getParameter("search_content");
	    	String path = null;
	    	String flag = request.getParameter("flag");
	    	//管理员查看所有评论
	    	if(flag != null && flag.equals("view")){
	    		List<Comments> list = CommentDAO.view();
	    		request.setAttribute("list", list);
	    		path="/admin/comment.jsp";
	    	}
	    	//管理员删除评论
	    	if(flag != null && flag.equals("del")){
	    		CommentDAO.delete(Integer.parseInt(goodsid));
	    		List<Comments> list = CommentDAO.view();
	    		request.setAttribute("list", list);
	    		path="/admin/comment.jsp";
	    	}
	    	//根据条件查找评论
	    	if(flag != null && flag.equals("comm_search")){
	    		path="/admin/comment_search.jsp";
	    	}
	    	//根据表单查找评论并返回结果
	    	if(flag != null && flag.equals("comm_sear")){
	    		if(condition.equals("username")){
	    			List<Comments> list = CommentDAO.username(search_content);
		    		request.setAttribute("list", list);
		    		
	    		}else if(condition.equals("goodsid")){
	    			List<Comments> list = CommentDAO.goodsid(search_content);
		    		request.setAttribute("list", list);
		   
	    		}
	    		path="/admin/comment.jsp";
	    	}
	    	
	    	request.getRequestDispatcher(path).forward(request, response);
	    	out.flush();
	    	out.close();
	    }
}
