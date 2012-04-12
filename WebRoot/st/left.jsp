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
				<a href="st/gotoYhby?currPage=1"><div class="fader" style="opacity: 0;"></div>
					<img src="images/twitter.png" style="margin-left: 10px;"><strong>一呼百应</strong>
				</a>
			</li>
			<li>
				<a href="st/gotoStgg"><div class="fader" style="opacity: 0;"></div> <img
						src="images/flickr.png" style="margin-left: 10px;"><strong>社团公告</strong>
				</a>
			</li>
			<li>
				<a href="st/gotoStjj"><div class="fader" style="opacity: 0;"></div> <img
						src="images/twitter.png" style="margin-left: 10px;"><strong>社团简介</strong>
				</a>
			</li>
			<li>
				<a href=""><div class="fader" style="opacity: 0;"></div> <img
						src="images/flickr.png" style="margin-left: 10px;"><strong>山寨排行</strong>
				</a>
			</li>

		</ul>
		<div class="clear"></div>
	</div>
</div>