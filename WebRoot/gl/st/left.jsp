<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div id="wrapper">
	<div id="content">
		<ul>
			<li>
				<a href="gl/gotoStJbxx"><div class="fader" style="opacity: 0;"></div>
					<img src="images/twitter.png" style="margin-left: 10px;"><strong>基本信息</strong>
				</a>
				<a href="gl/gotoStGggl?currPage=1"><div class="fader" style="opacity: 0;"></div>
					<img src="images/twitter.png" style="margin-left: 10px;"><strong>公告管理</strong>
				</a>
			</li>

		</ul>
		<div class="clear"></div>
	</div>
</div>