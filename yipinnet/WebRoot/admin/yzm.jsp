<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.Font"%>
<%@page import="javax.imageio.ImageIO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'yzm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
	int width = 60;
	int height = 20;
	// �������пɷ���ͼ�����ݻ�������Image
	BufferedImage buffImg = new BufferedImage(width, height,
			BufferedImage.TYPE_INT_RGB);
	Graphics2D g = buffImg.createGraphics();
	
	// ����һ�������������
	Random random = new Random();
	
	g.setColor(Color.WHITE);
	g.fillRect(0, 0, width, height);
	
	// �������壬����Ĵ�СӦ�ø���ͼƬ�ĸ߶�����
	Font font = new Font("Times New Roman", Font.PLAIN, 18);
	// ��������
	g.setFont(font);
	
	// ���߿�
	g.setColor(Color.BLACK);
	g.drawRect(0, 0, width - 1, height - 1);
	
	// �������160��������
	g.setColor(Color.LIGHT_GRAY);
	for (int i = 0; i < 160; i++) {
		int x = random.nextInt(width);
		int y = random.nextInt(height);
		int x1 = random.nextInt(12);
		int y1 = random.nextInt(12);
		g.drawLine(x, y, x + x1, y + y1);
	}
	
	// randomCode ���ڱ��������������֤��
	StringBuffer randomCode = new StringBuffer();
	int red = 0, green = 0, blue = 0;
	
	// �������4λ���ֵ���֤��
	for (int i = 0; i < 4; i++) {
		// �õ������������֤������
		String strRand = String.valueOf(random.nextInt(10));
	
		// �����������ɫ������������ɫֵ
		red = random.nextInt(110);
		green = random.nextInt(50);
		blue = random.nextInt(50);
	
		// �������������ɫ����֤����Ƶ�ͼ����
		g.setColor(new Color(red, green, blue));
		g.drawString(strRand, 13 * i + 6, 16);
	
		randomCode.append(strRand);
	}
	
	// ����λ���ֵ���֤�뱣�浽session��
	//HttpSession session = request.getSession();
	session.setAttribute("randomCode", randomCode.toString());
	
	// ��ֹͼ�񻺴�
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
	
	response.setContentType("image/jpeg");
	// ��ͼ�������servlet�������
	ServletOutputStream sos = response.getOutputStream();
	ImageIO.write(buffImg, "jpeg", sos);
	sos.close();
	//sos = null;
	out.clear();
	out = pageContext.pushBody();
%>

  </body>
</html>
