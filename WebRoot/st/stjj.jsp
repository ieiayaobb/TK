<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//	System.out.println(basePath);
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

		<style type="text/css">
.list_img {
	width: 125px;
	height: 125px;
	top: 0px;
	left: 0px;
	display: block;
}
</style>
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
		<script type="text/javascript" src="js/left.js"></script>
		<script type="text/javascript" src="js/stjj.js"></script>
		<script type="text/javascript">
	$(function() {
		// Tabs
		$('#tabs').tabs();

		// Dialog			
		$('#dialog').dialog({
			autoOpen : false,
			width : 600,
			buttons : {
				"关闭" : function() {
					$(this).dialog("close");
				}
			}
		});

		// Dialog Link
		$('#dialog_link').click(function() {
			$('#dialog').dialog('open');
			return false;
		});

	});
	function DialogClick() {
		$('#dialog').dialog('open');
	}
</script>
	</head>

	<body>
		<jsp:include page="../include/head.jsp" flush="true" />
		<div id="body_area">
			<div class="left_area">
				<jsp:include page="left.jsp" flush="true" />
			</div>

			<div class="right_area">
					<div style=" width: 670px">
					<c:forEach var="node" items="${list}">
					<div class="item_cap" id="dialog_link">
								<img src="images/twitter.png" class="list_img">
								<div class="caption" style="display: none;">
									<a href="">${node.stmc}</a>
									<p>
										${node.brief}
									</p>
								</div>
					</div>
					</c:forEach>
							
						</div>
			</div>
			<jsp:include page="../include/fotter.jsp" flush="true" />
	</body>
</html>
