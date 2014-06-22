<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.yipinnet.model.Item" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_goods.jsp' starting page</title>
    
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
		                                                商品ID
		                </th>
		                <th>
		                                                商品名称
		                </th>
		                <th>
		                                                 商品介绍
		                </th>
		                <th>
		                                                 图片地址
		                </th>
		                <th>
		                                                 商品地址
		                </th>
		                <th>
		                                                 是否Top100
		                </th>
		                <th>
		                                                 商品类型
		                </th>
		                <th>操作指令</th>
		                
		           </tr>
		           
		                 <%
	  		                List<Item> list=(List)request.getAttribute("list");        
	  		                for(Item topItem : list){
	  		             %>
		                  <tr>
		                     <td>
		                        <%=topItem.getGoodsid() %>

		                     </td>
		                     <td>
		                         <%=topItem.getGoodsname() %>
		                     </td>
		                      <td>
		                         <%=topItem.getIntroduce() %>
		                     </td>
		                      <td>
		                         <%=topItem.getImage() %>
		                     </td>
		                      <td>
		                         <%=topItem.getAddr() %>
		                     </td>
		                      <td>
		                         <%=topItem.getIstop() %>
		                     </td>
		                     <td>
		                         <%=topItem.getGoodstypename() %>
		                     </td>
		                     
		                     <td>
		                      <div align="center"> 
		                           <a href="GoodsServlet?flag=del&goodsid=<%=topItem.getGoodsid() %>"
		                                  onclick="if (confirm('确定要删除吗？'))return true;else return false;">删除</a>
		                           <a href="GoodsServlet?flag=preupdate&goodsid=<%=topItem.getGoodsid() %>">修改</a>
		                           <a href="GoodsServlet?flag=price_view&goodsid=<%=topItem.getGoodsid() %>">价格</a>
		                           <a href="GoodsServlet?flag=comment_view&goodsid=<%=topItem.getGoodsid() %>">评价</a>
		                         </div>
		                   
		                     </td>
		                  </tr>
		             <%
	 	      }
	            %>
		     </table>
  </body>
</html>
