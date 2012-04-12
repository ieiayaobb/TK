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
		<script charset="utf-8" src="editor/kindeditor.js"></script>
		<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
		<script charset="utf-8" src="editor/plugins/code/prettify.js"></script>
		<link rel="stylesheet" href="editor/themes/default/default.css" />
	<link rel="stylesheet" href="editor/plugins/code/prettify.css" />
		<script>
	var editor;
	KindEditor.ready(function(K) {
		editor = K.create('#editor_id');
	});
	var options = {
		cssPath : '/css/index.css',
		filterMode : true
	};
	var editor = K.create('textarea[name="introduction"]', options);

	// 取得HTML内容
	/*	html = editor.html();
	 // 同步数据后可以直接取得textarea的value
	 editor.sync();
	 html = document.getElementById('editor_id').value; // 原生API
	 html = $('#editor_id').val(); // jQuery
	 html = K('#editor_id').val(); // KindEditor Node API
	 // 设置HTML内容
	 editor.html("HTML内容");*/
	function mySubmit() {
		//alert(editor.html());
		$.post("gl/stJbxxUpdate", {
			toux : $("#toux").val(),
			brief : $("#brief").val(),
			introduction : editor.html()
		}, function(result) {
			location.href ="gl/gotoStJbxx";
		});

	}
</script>
	</head>

	<body>
		<jsp:include page="../../include/head.jsp" flush="true" />
		<div id="body_area">
			<div class="left_area">
				<jsp:include page="left.jsp" flush="true" />
			</div>

			<div class="right_area">
				<div align="left">
					<table>
						<tr>
							<td>
								头像
							</td>
							<td>
								<input type="hidden" name="toux" id="toux"
									value="${st_pri.toux}" />
							</td>
						</tr>
						<tr>
							<td>
								签名
							</td>
							<td>
								<input type="text" name="brief" id="brief"
									value="${st_pri.brief}" />
							</td>
						</tr>
						<tr>
							<td>
								简介
							</td>
							<td>
								<textarea id="editor_id" id="introduction" name="introduction"
									style="width: 700px; height: 300px;">
										${st_pri.introduction}
</textarea>
							</td>
						</tr>
						<tr>
							<td>
								<input type="button" value="提交" onclick="mySubmit()" />
							</td>
							<td>
								<input type="reset" value="取消" />
								<input type="button" value="返回"
									onclick="location.href='gl/gotoStJbxx';" />
							</td>
						</tr>
					</table>


				</div>
			</div>
		</div>
		<jsp:include page="../../include/fotter.jsp" flush="true" />

	</body>
</html>