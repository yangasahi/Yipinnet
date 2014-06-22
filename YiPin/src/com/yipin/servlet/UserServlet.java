package com.yipin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yipin.dao.TopDAO;
import com.yipin.dao.UserDAO;
import com.yipin.model.Top;
import com.yipin.model.User;
import com.yipin.util.JSONKit;
import com.yipin.util.Md5Encrypt;

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
    	//�û���¼
    	if(flag != null && flag.equals("user_log")){
    		String item = "1";
    		User user = new User();
    		user.setUsername(username);
    		user.setPassword(Md5Encrypt.md5(password));
    		List<User> user_list = UserDAO.u_login(user);
    		if(user_list.isEmpty()){
    			
    			path="yipin/user_login.jsp";
    			request.getSession().setAttribute("error", "�û������������û�������Ϊ�գ�");
    		}else{
    			path="yipin/top.jsp";
    			request.getSession().setAttribute("username", username);
    		}
    		List<Top> list = TopDAO.view();
  			request.setAttribute("list", list);
    		request.setAttribute("item", item);
    	}
    	//����Ա��¼
    	if(flag != null && flag.equals("Login")){
    		String random = request.getParameter("validate");
     	   String random2 = request.getSession().getAttribute("randomCode").toString();
     	   if(!random.equals(random2)){
     		   request.setAttribute("error1", "�������֤�벻��ȷ��");
     		   path="/admin.jsp"; 
     	   }else{
    		User user = new User();
    		user.setUsername(username);
    		user.setPassword(Md5Encrypt.md5(password));
    		List<User> list = UserDAO.login(user);
    		if(list.isEmpty()){
    			
    			path="/admin.jsp";
    			request.getSession().setAttribute("error", "�û������������û�������Ϊ�գ�");
    		}else{
    			path="/admin_work.jsp";
    			request.getSession().setAttribute("username", user.getUsername());
    		}
     	   }
    	}
    	//��������û�����
    	if(flag != null && flag.equals("regist")){
    		path="/Regist.jsp";
    	}
    	//����Ա����û��Լ��û�ע��
    	if(flag != null && flag.equals("save")){
    		
    		String isface = request.getParameter("isface");
    		if(isface.equals("y")){
    			User user = new User();
     		   user.setUsername(username);
     		   user.setPassword(Md5Encrypt.md5(password));
     		   user.setEmail(email);
     		   user.setPrivileges(privileges);
     		   UserDAO.save(user);
     		  String item = "1";
  			List<Top> list = TopDAO.view();
  			request.setAttribute("item", item);
  			request.setAttribute("list", list);
     		request.setAttribute("user_name", username);  
     		path="yipin/top.jsp";
    		}else{
    	   String random = request.getParameter("validate");
    	   String random2 = request.getSession().getAttribute("randomCode").toString();
    	   if(!random.equals(random2)){
    		   request.setAttribute("error1", "�������֤�벻��ȷ��");
    		   path="/Regist.jsp"; 
    	   }else{
    		   User user = new User();
     		   user.setUsername(username);
     		   user.setPassword(Md5Encrypt.md5(password));
     		   user.setEmail(email);
     		   user.setPrivileges(privileges);
     		   UserDAO.save(user);
     		   
     		   List<User> list = UserDAO.view();
     		   request.setAttribute("list", list);
    		   path="/admin_user.jsp";
    	   }  
    	   }
    	}
    	//����Ա�鿴�û�
    	if(flag != null && flag.equals("view")){
    		List<User> list = UserDAO.view();
 		   request.setAttribute("list", list);
 		   path="/admin_user.jsp";
    	}
    	//����Աɾ���û�
    	if(flag != null && flag.equals("del")){
    		UserDAO.delete(Integer.parseInt(id));
    		List<User> list = UserDAO.view();
  		   request.setAttribute("list", list);
  		   path="/admin_user.jsp";
    	}
    	//�õ�Ҫ�޸ĵ��û�
    	if(flag != null && flag.equals("preupdate")){
    		request.setAttribute("user", UserDAO.getObj(Integer.parseInt(id)));
    		path="/user_update.jsp";
    	}
    	//����Ա�޸��û���Ϣ
    	if(flag != null && flag.equals("update")){
    		User user = UserDAO.getObj(Integer.parseInt(id));
    		user.setUsername(username);
    		user.setPassword(Md5Encrypt.md5(password));
    		user.setEmail(email);
    		user.setPrivileges(privileges);
    		UserDAO.update(user);
    		List<User> list = UserDAO.view();
   		   request.setAttribute("list", list);
   		   path="/admin_user.jsp";
    	}
    	//����Ա�����޸������������
    	if(flag != null && flag.equals("update_pwd")){
    		path="/user_updatePWD.jsp";
    	}
    	//����Ա�޸���������
    	if(flag != null && flag.equals("update_user_pwd")){
    		String user_name = request.getSession().getAttribute("user").toString();
    		UserDAO.update_PWD(user_name,Md5Encrypt.md5(newpwd));
    		request.getSession().setAttribute("success", "�����޸ĳɹ���");
    		path="/user_updatePWD.jsp";
    	}
    	//����Ա�˳���¼
    	if(flag != null && flag.equals("logout")){
    		request.getSession().removeAttribute("username");
    		path="/admin.jsp";
    	}
    	//�û��˳���¼
    	if(flag != null && flag.equals("user_logout")){
    		String item = "1";
    		List<Top> list = TopDAO.view();
    		request.getSession().removeAttribute("username");
    		 request.setAttribute("list", list);
    		 request.setAttribute("item", item);
    		path="yipin/top.jsp";
    	}
    	//����û����Ƿ�ռ��
    	if(flag != null && flag.equals("isUsername")){
    		String name = request.getParameter("username");
    		boolean res = UserDAO.findUserByUsername(name);
    		if(res){
    			JSONKit.outJSONInfo("{success:false,msg:'�û����ظ�!'}", response);
    		}else{
    			JSONKit.outJSONInfo("{success:true,msg:'���û�������ע��!'}", response);
    		}
    		flag="null";
    	}
    	//�û�����ע��
    	if(flag != null && flag.equals("user_regist")){
    		String item = "0";
    		request.setAttribute("item", item);
    	    path="yipin/user_regist.jsp";
    	}
    	//�û���¼
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
