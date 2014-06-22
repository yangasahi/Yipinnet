<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.yipin.model.Catalog" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'catalog.jsp' starting page</title>
    
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
    <table align="center" width="95%" border="1" cellpadding="2" cellspacing="0">
		           <tr class="title">
		                <th>
		                                               目录ID
		                </th>
		                <th> 
		                                                目录名称 
		                </th>
		                <th> 
		                                                操作 
		                </th>
		                
		           </tr>
		           
		                 <%
	  		                List<Catalog> list=(List)request.getAttribute("list");        
	  		                for(Catalog catalog : list){
	  		             %>
		                  <tr>
		                  <td>
		                   <%=catalog.getCatalogid() %>
		                  </td>
		                     <td>
		                        <%=catalog.getCataname() %>

		                     </td>
		                    
		                     
		                     <td>
		                      <div align="center"> 
		                           <a href="FaceServlet?flag=hot&catalogid=<%=catalog.getCatalogid() %>">热门类目</a>
		                           <a href="FaceServlet?flag=pricerange&catalogid=<%=catalog.getCatalogid() %>">价格区间</a>
		                           <a href="FaceServlet?flag=active&catalogid=<%=catalog.getCatalogid() %>">活动推荐</a>
		                           <a href="FaceServlet?flag=brand&catalogid=<%=catalog.getCatalogid() %>">推荐品牌</a>
		                         </div>
		                   
		                     </td>
		                  </tr>
		             <%
	 	      }
	            %>
		     </table>
  </body>
</html>
