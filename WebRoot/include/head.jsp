<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div id="topheader">
	<div class="logo"></div>
	<div class="menu_area">
		<a href="#" class="ideas">Ideas <span class="menu_text">Maecenas
				lacin</span> </a>
		<a href="#" class="links">Links <span class="menu_text">Maecenas</span>
		</a>
		<a href="#" class="info">Info <span class="menu_text">Maecenas</span>
		</a>
		<a href="#" class="works">Works <span class="menu_text">Maecenas</span>
		</a>
	</div>
</div>
<div id="search_strip">
	<div class="freeregistration">
		<div class="registration">
			<a href="#" class="free">FREE</a> Registration
		</div>
	</div>
	<div class="search_area">
		<div class="search_box">
			<label>
				<input name="textfield" type="text" class="searchtextbox" />
			</label>
		</div>
		<div class="search_go">
			<div align="center">
				<a href="#" class="go">GO</a>
			</div>
		</div>
		<div class="search_box">
			&raquo;
			<a href="#" class="advancesearch">Advance Search</a>
		</div>
	</div>
</div>
