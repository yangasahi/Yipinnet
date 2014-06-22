<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add_goods.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	
    <script type="text/javascript">
   
  function changeimg()   
   
  {   
   
  var myimg = document.getElementById("myimg");   
   
  myimg.src="yzm.jsp?"+Math.random();//随机生成一个数字，让图片缓冲区认为不是同一个缓冲区   
   
  }   
  
  function validate_request(field,alerttext){
     with(field)
        {
        if(value==null || value==""){
          alert(alerttext);return false
        }
        else{return true}
        }
  }
  function 	validate_form(thisform){
   with(thisform){
     if(validate_required(email,"还没有填写邮箱！")==false)
     {email.focus();return false}
   }
  
  } 
   
   
 </script>

  </head>
  
  <body>
    <center>
    <h2>增加商品</h2>
    <hr>
    
    <form action="GoodsServlet?flag=save" method="post" onsubmit="return validate_form(this)">
       <div align="center">
       <table>
       <tr>
          <td> 商品ID:</td><td><input type="text" name="goodsid"></td>
        </tr> 
         <tr>  
          <td>商品名称:</td><td><input type="text" name="goodsname"></td>
           </tr> 
           <tr>      
          <td>商品描述:</td><td><input type="text" name="introduce"></td>
           </tr>
           <tr>
           <td> 图片地址：</td><td><input type="text" name="image"></td>
           </tr>
           <tr>
           <td> 商品地址：</td><td><input type="text" name="addr"></td>
           </tr>
           <tr>
           <td> 商品类型：</td><td><select name="goodstypeid">
                    <option value="1">DVD</option>
                    <option value="2">software</option>
                    <option value="3">clothes</option>
                 </select> </td>
                 </tr>
                 <tr>
                 <td> 验证码：</td><td><input type="text" name="validate"></td>
          	<td><img alt="验证码" src="yzm.jsp" id="myimg">
          	
          	<a href="javascript:changeimg()">看不清，换一张</a>  
          
              <div align="center" style="color: red;">
                   ${error1}
              </div>
          	
          	</td>
          	
          </tr>
        </table>
           <input type="submit" value="提交">
       </div>
    </form>
    </center>
  </body>
</html>
