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
import com.yipinnet.dao.TopDAO;
import com.yipinnet.dao.UserDAO;
import com.yipinnet.model.Comments;
import com.yipinnet.model.Item;
import com.yipinnet.model.User;
import com.yipinnet.util.JSONKit;
import com.yipinnet.util.Md5Encrypt;

public class UserServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    	doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    	request.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	String email = request.getParameter("email");
    	String privileges = request.getParameter("privileges");
        String id = request.getParameter("id");
        String newpwd = request.getParameter("newpwd");
    	String path = null;
    	String flag = request.getParameter("flag");
    	//用户登录
    	if(flag != null && flag.equals("user_log")){
    		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    		String item = "1";
    		User user = new User();
    		user.setUsername(username);
    		user.setPassword(Md5Encrypt.md5(password));
    		List<User> user_list = UserDAO.u_login(user);
    		if(user_list.isEmpty()){
    			
    			path="yipin/user_login.jsp";
    			request.getSession().setAttribute("error", "用户名密码错误或用户名密码为空！");
    		}else{
    			path="yipin/top.jsp";
    			request.getSession().setAttribute("username", username);
    		}
    		List<Item> list = TopDAO.view(format.format(new Date()));
  			request.setAttribute("list", list);
    		request.setAttribute("item", item);
    		 List<Comments> commentList = CommentDAO.view();
			 request.setAttribute("comment", commentList);
    	}
    	//管理员登录
    	if(flag != null && flag.equals("Login")){
    		String random = request.getParameter("validate");
     	   String random2 = request.getSession().getAttribute("randomCode").toString();
     	   if(!random.equals(random2)){
     		   request.setAttribute("error1", "输入的验证码不正确！");
     		   path="admin/admin.jsp"; 
     	   }else{
    		User user = new User();
    		user.setUsername(username);
    		user.setPassword(Md5Encrypt.md5(password));
    		List<User> list = UserDAO.login(user);
    		if(list.isEmpty()){
    			
    			path="admin/admin.jsp";
    			request.getSession().setAttribute("error", "用户名密码错误或用户名密码为空！");
    		}else{
    			path="admin/admin_work.jsp";
    			request.getSession().setAttribute("zzz", user.getUsername());
    		}
     	   }
    	}
    	//进入添加用户界面
    	if(flag != null && flag.equals("regist")){
    		path="/admin/Regist.jsp";
    	}
    	//管理员添加用户以及用户注册
    	if(flag != null && flag.equals("save")){
    		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    		String isface = request.getParameter("isface");
    		if(isface.equals("y")){
    			User user = new User();
     		   user.setUsername(username);
     		   user.setPassword(Md5Encrypt.md5(password));
     		   user.setEmail(email);
     		   user.setPriviledge(privileges);
     		   UserDAO.save(user);
     		  String item = "1";
  			List<Item> list = TopDAO.view(format.format(new Date()));
  			request.setAttribute("item", item);
  			request.setAttribute("list", list);
  			 List<Comments> commentList = CommentDAO.view();
			 request.setAttribute("comment", commentList);
     		request.setAttribute("user_name", username);  
     		path="yipin/top.jsp";
    		}else{
    	   String random = request.getParameter("validate");
    	   String random2 = request.getSession().getAttribute("randomCode").toString();
    	   if(!random.equals(random2)){
    		   request.setAttribute("error1", "输入的验证码不正确！");
    		   path="/admin/Regist.jsp"; 
    	   }else{
    		   User user = new User();
     		   user.setUsername(username);
     		   user.setPassword(Md5Encrypt.md5(password));
     		   user.setEmail(email);
     		   user.setPriviledge(privileges);
     		   UserDAO.save(user);
     		   
     		   List<User> list = UserDAO.view();
     		   request.setAttribute("list", list);
    		   path="/admin/admin_user.jsp";
    	   }  
    	   }
    	}
    	//管理员查看用户
    	if(flag != null && flag.equals("view")){
    		List<User> list = UserDAO.view();
 		   request.setAttribute("list", list);
 		   path="/admin/admin_user.jsp";
    	}
    	//管理员删除用户
    	if(flag != null && flag.equals("del")){
    		UserDAO.delete(Integer.parseInt(id));
    		List<User> list = UserDAO.view();
  		   request.setAttribute("list", list);
  		   path="/admin/admin_user.jsp";
    	}
    	//得到要修改的用户
    	if(flag != null && flag.equals("preupdate")){
    		request.setAttribute("user", UserDAO.getObj(Integer.parseInt(id)));
    		path="/admin/user_update.jsp";
    	}
    	//管理员修改用户信息
    	if(flag != null && flag.equals("update")){
    		User user = UserDAO.getObj(Integer.parseInt(id));
    		user.setUsername(username);
    		user.setPassword(Md5Encrypt.md5(password));
    		user.setEmail(email);
    		user.setPriviledge(privileges);
    		UserDAO.update(user);
    		List<User> list = UserDAO.view();
   		   request.setAttribute("list", list);
   		   path="/admin/admin_user.jsp";
    	}
    	//管理员进入修改自身密码界面
    	if(flag != null && flag.equals("update_pwd")){
    		path="/admin/user_updatePWD.jsp";
    	}
    	//管理员修改自身密码
    	if(flag != null && flag.equals("update_user_pwd")){
    		String user_name = request.getSession().getAttribute("zzz").toString();
    		System.out.println(user_name);
    		UserDAO.update_PWD(user_name,Md5Encrypt.md5(newpwd));
    		request.getSession().setAttribute("success", "密码修改成功！");
    		path="/admin/user_updatePWD.jsp";
    	}
    	//管理员退出登录
    	if(flag != null && flag.equals("logout")){
    		request.getSession().removeAttribute("username");
    		path="/admin/admin.jsp";
    	}
    	//用户退出登录
    	if(flag != null && flag.equals("user_logout")){
    		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    		String item = "1";
    		List<Item> list = TopDAO.view(format.format(new Date()));
    		request.getSession().removeAttribute("username");
    		 request.setAttribute("list", list);
    		 request.setAttribute("item", item);
    		 List<Comments> commentList = CommentDAO.view();
			 request.setAttribute("comment", commentList);
    		path="yipin/top.jsp";
    	}
    	//检测用户名是否被占用
    	if(flag != null && flag.equals("isUsername")){
    		String name = request.getParameter("username");
    		boolean res = UserDAO.findUserByUsername(name);
    		if(res){
    			JSONKit.outJSONInfo("{success:false,msg:'用户名重复!'}", response);
    		}else{
    			JSONKit.outJSONInfo("{success:true,msg:'此用户名可以注册!'}", response);
    		}
    		flag="null";
    	}
    	//用户自由注册
    	if(flag != null && flag.equals("user_regist")){
    		String item = "0";
    		request.setAttribute("item", item);
    	    path="yipin/user_regist.jsp";
    	}
    	//用户登录
    	if(flag != null && flag.equals("user_login")){
    		String item = "0";
    		request.setAttribute("item", item);
    	    path="yipin/user_login.jsp";
    	}
    	if(!flag.equals("null")){
    	request.getRequestDispatcher(path).forward(request, response);
    	out.flush();
    	out.close();
    	}
    	
    }
}
