<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.yipin.model.Recomm" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'recomment.jsp' starting page</title>
    
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
		                                                推荐商品ID 
		                </th>
		                <th>
		                                                商品图片
		                </th>
		                <th>
		                                               商品名称
		                </th>
		                <th> 
		                                                商品描述
		                </th>
		                <th> 
		                                                商品价格
		                </th>
		                <th> 
		                                                商品评价等级
		                </th>
		                <th> 
		                                                商品地址
		                </th>
		                <th> 
		                                                商品所属目录
		                </th>
		                <th>
		                                                   操作
		                </th>
		           </tr>
		           
		                 <%
	  		                List<Recomm> list=(List)request.getAttribute("list");        
	  		                for(Recomm recomm : list){
	  		             %>
		                  <tr>
		                     <td>
		                        <%=recomm.getGoodsid() %>

		                     </td>
		                    <td>
		                       <%=recomm.getImage() %>
		                       
		                    </td>
		                     <td>
		                       <%=recomm.getGoodsname() %>
		                     </td>
		                      <td>
		                       <%=recomm.getDescribe() %>
		                     </td>
		                      <td>
		                       <%=recomm.getPrice() %>
		                     </td>
		                      <td>
		                       <%=recomm.getLevel() %>
		                     </td>
		                      <td>
		                       <%=recomm.getAddr() %>
		                     </td>
		                      <td>
		                       <%=recomm.getCataname() %>
		                     </td>
		                     <td>
		                      <div align="center"> 
		                            <a href="GoodsServlet?flag=del&goodsid=<%=recomm.getGoodsid() %>"
		                                  onclick="if (confirm('确定要删除吗？'))return true;else return false;">删除</a>
		                           <a href="GoodsServlet?flag=preupdate&goodsid=<%=recomm.getGoodsid() %>">修改</a>
		                           
		                         </div>
		                   
		                     </td>
		                  </tr>
		             <%
	 	      }
	            %>
		     </table>
  </body>
</html>
