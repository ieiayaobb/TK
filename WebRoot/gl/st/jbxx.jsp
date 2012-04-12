<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<link rel="stylesheet" type="text/css" href="css/mycss.css">
		<link rel="stylesheet" type="text/css" href="css/left.css">
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/left.js"></script>
	</head>

	<body>
		<jsp:include page="../../include/head.jsp" flush="true" />
		<div id="body_area">
			<div class="left_area">
				<jsp:include page="left.jsp" flush="true" />
			</div>

			<div class="right_area">
				<div align="left">
					<input type="button" value="编辑" onclick="location.href='gl/gotoStJbxxBj';"/>
					<form action="stxx">
						<table>
							<tr>
								<td>头像</td>
								<td><img src="${st_pri.toux}"  alt="头像" /></td>
							</tr>
							<tr>
								<td>用户名</td>
								<td>${st_pri.name}</td>
							</tr>
							<tr>
								<td>金币数</td>
								<td>${st_pri.gold}</td>
							</tr>
							<tr>
								<td>签名</td>
								<td>${st_pri.brief}</td>
							</tr>
							<tr>
								<td>简介</td>
								<td>${st_pri.introduction}</td>
							</tr>
						</table>
					</form>
					
				</div>
			</div>
		</div>
		<jsp:include page="../../include/fotter.jsp" flush="true" />

	</body>
</html>