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
		<link rel="stylesheet" type="text/css" href="css/mycss.css">
		<script type="text/javascript" src="js/left.js"></script>
		<script type="text/javascript" src="js/jquery.js"></script>
	</head>

	<body>
		<jsp:include page="include/head.jsp" flush="true" />
		<div id="body_area">
			<div class="left_area">
				
			</div>

			<div class="right_area">
			</div>
		</div>
		<jsp:include page="include/fotter.jsp" flush="true" />

	</body>
</html>
