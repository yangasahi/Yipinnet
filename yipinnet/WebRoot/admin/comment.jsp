<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.yipinnet.model.Comments" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'comment.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/css.css">

     <script type="text/javascript">
            function doDelCheck(){
               if(confirm('确定要删除吗？')){
                    fom1.submit();
               }else{
                 return false;
               }
            }
     </script>

  </head>
  
  <body>
    <table align="center" width="70%" border="1" cellpadding="2" cellspacing="0">
		           <tr class="title">
		                
		                <th>
		                                                评论ID
		                </th>
		                <th>
		                                                商品ID
		                </th>
		                <th>
		                                                 评论内容
		                </th>
		                <th>
		                                                 评论时间
		                </th>
		                <th>
		                                                 所属用户
		                </th>
		                <th>操作指令</th>
		                
		           </tr>
		           
		                 <%
	  		                List<Comments> list=(List)request.getAttribute("list");        
	  		                for(Comments comment : list){
	  		             %>
		                  <tr>
		                     <td>
		                        <%=comment.getCommentid() %>

		                     </td>
		                     <td>
		                         <%=comment.getGoodsid() %>
		                     </td>
		                      <td>
		                         <%=comment.getContent() %>
		                     </td>
		                      <td>
		                         <%=comment.getContenttime() %>
		                     </td>
		                      <td>
		                         <%=comment.getUsername() %>
		                     </td>
		                     
		                     
		                     <td>
		                      <div align="center"> 
		                           <a href="CommentServlet?flag=del&id=<%=comment.getCommentid() %>"
		                                  onclick="if (confirm('确定要删除吗？'))return true;else return false;">删除</a>
		                         </div>
		                   
		                     </td>
		                  </tr>
		             <%
	 	      }
	            %> 
		     </table>
  </body>
</html>
