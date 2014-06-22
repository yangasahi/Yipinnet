function validateUser() {
		$.ajax( {
					url : 'ValidataServlet',
					type : 'post',
					data : "username=" + $("#txtRegUser").val(),
					dataType : 'json',
					success : function(data) {
                        alert(data);  
						if (data.su == false) {

							$("#RegUser")
									.html(
											"<img src='http://misc.manmanbuy.com/images/user/error.gif' align='absmiddle' /> <font color=red>你输入的会员名 <font color=000000 style=font-size:16px>"
													+ strUser
													+ "</font> 已被注册,请输入其它会员名尝试</font>");
						} else {
							
							$("#RegUser")
									.html(
											"<img src='http://misc.manmanbuy.com/images/user/checkbullet.gif' align='absmiddle' /> 恭喜你! 会员名 <font style=font-size:16px color=green>"
													+ strUser + "</font> 可以注册");
						}
					}
				});

	
}