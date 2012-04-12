<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div id="fotter">
	<div class="fotter_links">
		<div align="center">
			<a href="#" class="fotterlink">Home</a> |
			<a href="#" class="fotterlink">About Us</a> |
			<a href="#" class="fotterlink">Companies Success</a> |
			<a href="#" class="fotterlink">Client Testimonials</a> |
			<a href="#" class="fotterlink">Methods of Development</a> |
			<a href="#" class="fotterlink">Newsletter</a> |
			<a href="#" class="fotterlink">Subscribe Info</a> |
			<a href="#" class="fotterlink">Oppotunities</a> |
			<a href="#" class="fotterlink">Current Events</a> |
			<a href="#" class="fotterlink">Contact Us</a>
		</div>
	</div>
	<div class="fotter_copyrights">
		<div align="center">
			&copy; Copyright Information Goes Here. All Rights Reserved
		</div>
	</div>
	<div class="fotter_validation">
		<div align="center">
			<a href="http://validator.w3.org/check?uri=referer" target="_blank"
				class="xhtml">XHTML</a>
			<a href="http://jigsaw.w3.org/css-validator/check/referer"
				target="_blank" class="css">CSS</a>
			<br />
		</div>
	</div>
	<div class="fotter_designed">
		<div align="center">
			Designed By :
			<a href="#" class="fotter_designedlink">Template World</a>
		</div>
	</div>
</div>