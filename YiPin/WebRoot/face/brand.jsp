<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.yipin.model.Brand" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'brand.jsp' starting page</title>
    
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
		                                                推荐品牌ID 
		                </th>
		                <th>
		                                                目录名称
		                </th>
		                <th>
		                                                推荐品牌名称
		                </th>
		                <th> 
		                                                操作 
		                </th>
		                
		           </tr>
		           
		                 <%
	  		                List<Brand> list=(List)request.getAttribute("list");        
	  		                for(Brand brand : list){
	  		             %>
		                  <tr>
		                     <td>
		                        <%=brand.getBrandid() %>

		                     </td>
		                    <td>
		                       <%=brand.getCataname() %>
		                       
		                    </td>
		                     <td>
		                       <%=brand.getImgaddr() %>
		                     </td>
		                     <td>
		                      <div align="center"> 
		                            <a href="GoodsServlet?flag=del&goodsid=<%=brand.getBrandid() %>"
		                                  onclick="if (confirm('确定要删除吗？'))return true;else return false;">删除</a>
		                           <a href="GoodsServlet?flag=preupdate&goodsid=<%=brand.getBrandid() %>">修改</a>
		                           
		                         </div>
		                   
		                     </td>
		                  </tr>
		             <%
	 	      }
	            %>
		     </table>
  </body>
</html>
