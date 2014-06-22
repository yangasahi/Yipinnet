<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link rel="stylesheet" type="text/css" href="css/templatemo_style.css">
  </head>
  
  <body>
   <div id="templatemo_background_section_top">
	  <div class="templatemo_container">
	    <div id="templatemo_header">
	      <div id="templatemo_logo_section">
	        <h1>Food Blog Layout</h1>            
		  <h2>Free CSS Template</h2>
				</div>
               
    </div><!-- end of headder -->
                
    		<div id="templatemo_menu_panel">
            
    			<div id="templatemo_menu_section">
                
            		<ul>
		                <li><a href="index.html"  class="current">Home</a></li>
        		        <li><a href="#">Menus</a></li>
		                <li><a href="#">Drinks</a></li>
		                <li><a href="#">Services</a></li>  
        		        <li><a href="#">About</a></li> 
                		<li><a href="#">Contact</a></li>                     
		            </ul> 
                    
				</div>
                
		    </div> <!-- end of menu -->
            
		</div><!-- end of container-->
        
	</div><!-- end of templatemo_background_section_top-->
    
    <div id="templatemo_background_section_middle">
    
    	<div class="templatemo_container">
        
        	<div id="templatemo_left_section">
            	
                <div class="templatemo_post">
                
                	<div class="templatemo_post_top">
                    	<h1>Blog Post Title 1 goes here</h1>
                    </div>
                    <div class="templatemo_post_mid_top">
                    </div>
                    
              <div class="templatemo_post_mid">
                    	                        
                        <p><img alt="Blog" src="images/templatemo_061_phone.jpg" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec dui. Donec nec neque ut quam sodales feugiat. Nam vehicula dapibus lectus. Integer imperdiet pretium dolor. Vivamus felis. </p>
                        <p>Vivamus vulputate vehicula mi. Maecenas consectetur purus. Vestibulum id mi vitae nunc vulputate ullamcorper. Donec feugiat orci sed sapien. </p>
                        <p>Fusce risus sem, egestas quis, imperdiet id, pellentesque vel, tortor. Fusce ante. Nunc at mi nec urna mollis ullamcorper. Nam aliquet, ligula in aliquet molestie, nunc arcu tristique nibh. </p>
                <div class="clear"></div>
                        
                    </div>
                    <div class="templatemo_post_bottom">
                    	<span class="post">Posted By: Admin | Category: <a href="#">Javascripts</a> | Added: 15:45, 31 March 2024</span>
                        
                    </div>
                    
				</div><!-- end of templatemo_post-->
                
                <div class="templatemo_post">
                
                	<div class="templatemo_post_top">
                    	<h1>Blog Post Title 2 goes here</h1>
                    </div>
                    <div class="templatemo_post_mid_top">
                    </div>
              <div class="templatemo_post_mid">
                    	
                        <p><img alt="Blog" src="images/templatemo_060_hosting.jpg" />Donec nec neque ut quam sodales feugiat. Nam vehicula dapibus lectus. Integer imperdiet pretium dolor. Vivamus felis. Vivamus vulputate vehicula mi. Maecenas consectetur purus. </p>
                <p>Vestibulum id mi vitae nunc vulputate ullamcorper. Donec feugiat orci sed sapien. Fusce risus sem, egestas quis, imperdiet id, pellentesque vel, tortor. Fusce ante. Nunc at mi nec urna mollis ullamcorper. </p>
                <p>Nam aliquet, ligula in aliquet molestie, nunc arcu tristique nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec dui.</p>
                <div class="clear"></div>
                                                
                    </div>
                    <div class="templatemo_post_bottom">
                    		
                    		<span class="post">Posted By: Admin | Category: <a href="#">Web Design</a> | Added: 20:24, 14 February 2024</span>

                    </div>
                    
				</div><!-- end of templatemo_post-->
                
            </div><!-- end of left section-->
            
            <div id="templatemo_right_section">
            	
                <div class="templatemo_section_box">
                	<div class="templatemo_section_box_top">
                    	<h1>Advertisements</h1>
                    </div>
					<div class="templatemo_section_box_mid">
                   		
						<img alt="125x125 Banner"  src="images/templatemo_ads.jpg" /> 
                    	<img alt="Advertise Here"  src="images/templatemo_ads.jpg"/>
                    	<img alt="Advertisement"  src="images/templatemo_ads.jpg"/>
                        <img alt="Your Banner"  src="images/templatemo_ads.jpg"/>
                        
                        <div class="clear">&nbsp;</div>
					</div>
                    <div class="templatemo_section_box_bottom"></div>
                </div><!-- end of section box -->
                
                <div class="templatemo_section_box">
                	<div class="templatemo_section_box_top">
                    	<h1>About This Blog</h1>
                    </div>
					<div class="templatemo_section_box_mid">
                   		
						<p>This free website blog layout is provided by <a href="http://www.cssmoban.com" target="_parent">网页模板</a>. You may download, modify and apply this layout for any web blog CMS templates.</p>
					</div>
                    <div class="templatemo_section_box_bottom"></div>
                </div><!-- end of section box -->
                
                <div class="templatemo_section_box">
                	<div class="templatemo_section_box_top">
                    
                    	<h1>Categories</h1>
                        
                    </div>
					<div class="templatemo_section_box_mid">
                   		
						<ul>
                        	<li><a href="#/blog" target="_parent">Web Design</a></li>
                            <li><a href="#">JavaScripts</a></li>
                            <li><a href="http://www.cssmoban.com" target="_parent">CSS Templates</a></li>
                            <li><a href="#" target="_parent">Flash Templates</a></li>
                            <li><a href="#">Photo Gallery</a></li>
                        </ul>
					</div>
                    <div class="templatemo_section_box_bottom"></div>
                </div><!-- end of section box -->

            </div><!-- end of right Section -->

        </div><!-- end of container-->

	</div><!-- end of background middle-->
    
    <div id="templatemo_bottom_section">
    	<div class="templatemo_container">
        	<div id="templatemo_footer">
            	Copyright © 2024 Your Company Name | from <a href="http://www.cssmoban.com" target="_parent">网站模板</a>
          </div>
        </div>
</div><!-- end of background bottom-->
  </body>
</html>
