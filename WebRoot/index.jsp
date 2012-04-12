<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>欢迎来到Talk（逃课）</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>

	<body>					
					<jsp:include page="include/head.jsp" flush="true" />		
			<div id="body_area">
				<div class="left">
					<div class="left_menutop"></div>
					<div class="left_menu_area">
						<div align="right">
							<a href="#" class="left_menu">Home</a>
							<br />
							<a href="#" class="left_menu">About us</a>
							<br />
							<a href="#" class="left_menu">Companies success</a>
							<br />
							<a href="#" class="left_menu">Client testimonials</a>
							<br />
							<a href="#" class="left_menu">Methods of Develop</a>
							<br />
							<a href="#" class="left_menu">Questions</a>
							<br />
							<a href="#" class="left_menu">Online Support</a>
							<br />
							<a href="#" class="left_menu">Newsletter</a>
							<br />
							<a href="#" class="left_menu">Subscribe info</a>
							<br />
							<a href="#" class="left_menu">Oppotunities</a>
							<br />
							<a href="#" class="left_menu">Current events</a>
							<br />
							<a href="#" class="left_menu">Contact us</a>
						</div>
					</div>
					<div class="comments_area">
						<div class="comment_head">
							<div align="right">
								Comments
							</div>
						</div>
						<div class="comments_text">
							<div align="right">
								Justo praesent
								<br />
								<a href="#" class="comments_link">ourna tempus imperdiet
									llentes Pellentesque</a>
							</div>
						</div>
						<div class="comments_text">
							<div align="right">
								At leo at elitconsequat
								<br />
								<a href="#" class="comments_link">uctus pellentesque et erat
									nec </a>
							</div>
						</div>
						<div class="comments_text">
							<div align="right">
								Vestibulum vepusl
								<br />
								<a href="#" class="comments_link">vamus et magna et
									torpraesent accumsan</a>
							</div>
						</div>
					</div>
					<div class="comments_area">
						<div class="Services_head">
							<div align="right">
								Services
							</div>
						</div>
						<div class="comments_text">
							<div align="right">
								Justo praesent
								<br />
								<a href="#" class="comments_link">ourna tempus imperdiet
									llentes Pellentesque</a>
							</div>
						</div>
						<div class="comments_text">
							<div align="right">
								At leo at elitconsequat
								<br />
								<a href="#" class="comments_link">uctus pellentesque et erat
									nec </a>
							</div>
						</div>
						<div class="comments_text">
							<div align="right">
								Vestibulum vepusl
								<br />
								<a href="#" class="comments_link">vamus et magna et
									torpraesent accumsan</a>
							</div>
						</div>
						<div class="comments_text">
							<div align="right">
								Justo praesent
								<br />
								<a href="#" class="comments_link">ourna tempus imperdiet
									llentes Pellentesque</a>
							</div>
						</div>
					</div>
				</div>
				<div class="midarea">
					<div class="head">
						Welcome to temper
					</div>
					<div class="body_textarea">
						<div align="justify">
							These templates are licensed under a Creative Commons Attribution
							2.5 License.
						</div>
					</div>
					<div class="body_textarea">
						<div align="justify">
							<p>
								temper is a free, tableless, W3C-compliant web design layout by
								Template World. This template has been tested and proven
								compatible with all major browser environments and operating
								systems. You are free to modify the design to suit your tastes
								in any way you like.
							</p>
							<p>
								We only ask you to not remove &quot;Design by Template
								World&quot; and the link http://www.templateworld.com from the
								footer of the template.
							</p>
						</div>
					</div>
					<div class="body_textarea">
						<div align="center">
							<a href="#" class="readmore">Read More </a>
						</div>
					</div>
					<div class="innerbanner">
						<span class="innerbanner_head">Blandit ultricies urna velit
							congue ligula sed vulputate urna </span>
						<br />
						<span class="innerbanner_head">Turpis eu tortor ut quis
							quam</span>
					</div>
				</div>
				<div class="right">
					<div class="comments_area">
						<div class="events_head">
							Events
						</div>
						<div class="comments_text">
							<div align="left">
								On 12th January 2008
								<br />
								<a href="#" class="comments_link">ourna tempus imperdiet
									llentes Pellentesque</a>
							</div>
						</div>
						<div class="comments_text">
							<div align="left">
								On 14th January 2008
								<br />
								<a href="#" class="comments_link">uctus pellentesque et erat
									nec </a>
							</div>
						</div>
						<div class="comments_text">
							<div align="left">
								On 16th January 2008
								<br />
								<a href="#" class="comments_link">vamus et magna et
									torpraesent accumsan</a>
							</div>
						</div>
					</div>
					<div class="login_area">
						<div class="login_top"></div>
						<div class="login_bodyarea">
							<div class="right_head">
								<div align="center">
									Join Us For Membership
								</div>
							</div>
							<div class="right_textbox">
								<label>
									<input name="textfield2" type="text" class="righttextbox"
										value="Name" />
								</label>
							</div>
							<div class="right_textbox">
								<label>
									<input name="textfield22" type="password" class="righttextbox"
										value="Password" />
								</label>
							</div>
							<div class="right_text">
								<label>
									<input type="checkbox" name="checkbox" value="checkbox" />
								</label>
								Remember Me
							</div>
							<div class="right_text">
								<div align="center">
									<a href="#" class="login">Login</a>
								</div>
							</div>
						</div>
						<div class="login_bottom"></div>
					</div>
					<div class="login_area">
						<div class="login_top"></div>
						<div class="login_bodyarea">
							<div class="right_head">
								<div align="center">
									<strong>Newsletter Signup </strong>
								</div>
							</div>
							<div class="right_textbox">
								<label>
									<input name="textfield23" type="text" class="righttextbox"
										value="Email Id" />
								</label>
							</div>
							<div class="right_text">
								<div align="center">
									<a href="#" class="login">Signup</a>
								</div>
							</div>
						</div>
						<div class="login_bottom"></div>
					</div>
					<div class="comments_area">
						<div class="newletter_head">
							Newslinks
						</div>
						<div class="comments_text">
							<div align="left">
								<a href="#" class="news_link">Sed massa Integer tincidunt </a>
							</div>
						</div>
						<div class="comments_text">
							<div align="left">
								<a href="#" class="news_link">Dapibus nunc</a>
							</div>
						</div>
						<div class="comments_text">
							<div align="left">
								<a href="#" class="news_link">Phasellus ac Nunc</a>
							</div>
						</div>
						<div class="comments_text">
							<div align="left">
								<a href="#" class="news_link">Quisque rhoncus felis in </a>
							</div>
						</div>
						<div class="comments_text">
							<div align="left">
								<a href="#" class="news_link">Ultricies sollicitudin diam
									orci </a>
							</div>
						</div>
						<div class="comments_text">
							<div align="left">
								<a href="#" class="news_link">Mollis risusin rhoncus velit </a>
							</div>
						</div>
						<div class="comments_text">
							<div align="left">
								<a href="#" class="news_link">Nulla ege</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="include/fotter.jsp" flush="true" />
	</body>
</html>
