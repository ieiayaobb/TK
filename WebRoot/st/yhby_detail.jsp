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
		<style type="text/css">
.zt { /*	border: black solid thin;*/
	
}

.zt .title {
	font-size: 20px;
	font-weight: bold;
}

.zt .detail {
	font-size: 15px;
	font-weight: normal;
}

.ly {
	font-size: 15px;
	font-weight: normal;
}
</style>
		<script class="example" type="text/javascript">
	// Create the tooltips only on document load
	$(document).ready(function() {
		$("#newly").hide();
		$("#addly").click(function() {
			$("#newly").show();
		});
		$("#add").click(function() {
			$("#newly").hide();
		});

	});
	
	function saveReport() {  
	var id=$("#pri_id").val();
	var gold=$("#gold").val();
	var detail=$("#detail").val();
	/*$.post(
		"ajax/addyhbyDetail",
		{
			id:id,
			gold:gold,
			detail:detail
		},
		function(result){
			alert(result);
 	 });*/
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
				<div class="zt">
					<div class="title">
						${pri.title}
					</div>
					<div class="detail">
						${pri.detail}
						<hr />
					</div>
				</div>
				<c:if test="${fn:length(list)>0}">   
				<div class="ly_container">
					<c:forEach var="node" items="${list}">
						<br />
						<div class="ly">
							${node.detail}
							<hr />
						</div>

					</c:forEach>
				</div>
				</c:if>
				<div class="">
					<div id="content">
						<ul style="width: 90%;">
							<li>
								<div style="float: left;" id="addrq">
									<a href="st/gotoYhby"><div class="fader"
											style="opacity: 0;"></div> <img src="images/twitter.png"
											style="margin-left: 10px;"><strong>捧个人场</strong> </a>
								</div>
							</li>
							<li>
								<div style="float: right;" id="addly">
									<a href="javascript:;"><div class="fader"
											style="opacity: 0;"></div> <img src="images/flickr.png"
											style="margin-left: 10px;"><strong>捧个钱场</strong> </a>
								</div>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
				</div>
				<div name="page">
				${pageString}
				</div>
				<div id="newly">
					<form action="st/addyhbyDetail" method="post" onsubmit="return saveReport();">
						追加金币数：
						<input type="text" name="gold" />
						<br />
						顺便说两句：
						<textarea rows="3" cols="70" name="detail">
					</textarea>
						<br />
						<input type="hidden" value="${pri.id}" name="Yhbypri_id" />
						<input type="submit" value="提交" />
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="../include/fotter.jsp" flush="true" />

	</body>
</html>
