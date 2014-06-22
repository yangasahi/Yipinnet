package com.yipin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yipin.dao.CommentDAO;
import com.yipin.model.Comments;

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
	    	//����Ա�鿴��������
	    	if(flag != null && flag.equals("view")){
	    		List<Comments> list = CommentDAO.view();
	    		request.setAttribute("list", list);
	    		path="/comment.jsp";
	    	}
	    	//����Աɾ������
	    	if(flag != null && flag.equals("del")){
	    		CommentDAO.delete(Integer.parseInt(goodsid));
	    		List<Comments> list = CommentDAO.view();
	    		request.setAttribute("list", list);
	    		path="/comment.jsp";
	    	}
	    	//����������������
	    	if(flag != null && flag.equals("comm_search")){
	    		path="/comment_search.jsp";
	    	}
	    	//���ݱ��������۲����ؽ��
	    	if(flag != null && flag.equals("comm_sear")){
	    		if(condition.equals("username")){
	    			List<Comments> list = CommentDAO.username(search_content);
		    		request.setAttribute("list", list);
		    		
	    		}else if(condition.equals("userid")){
	    			List<Comments> list = CommentDAO.userid(search_content);
		    		request.setAttribute("list", list);
		    	
	    		}else if(condition.equals("goodsid")){
	    			List<Comments> list = CommentDAO.goodsid(search_content);
		    		request.setAttribute("list", list);
		   
	    		}
	    		path="/comment.jsp";
	    	}
	    	request.getRequestDispatcher(path).forward(request, response);
	    	out.flush();
	    	out.close();
	    }
}
