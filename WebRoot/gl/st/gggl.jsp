<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  

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
			<div align="right" class="list">
				<a href="gl/st/ggxj.jsp">新建</a>
			</div>
			<c:if test="${fn:length(list)>0}">   
				<div align="left" id="list">
					<c:forEach var="node" items="${list}">
						<a href='st/gotoyhbyDetail?id=${node.id}' class='list'>${node.title}</a>
					<br/>
					</c:forEach>
				</div>
				</c:if>
				<div align="right" class="list">
					${pageString}
				</div>
			</div>
		</div>
		<jsp:include page="../../include/fotter.jsp" flush="true" />

	</body>
</html>
