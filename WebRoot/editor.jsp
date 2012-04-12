<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'editor.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script>
        var editor;
        KindEditor.ready(function(K) {
                editor = K.create('#editor_id');
        });
        var options = {
        cssPath : '/css/index.css',
        filterMode : true
		};
	var editor = K.create('textarea[name="content"]', options);
    // 取得HTML内容
/*	html = editor.html();
	// 同步数据后可以直接取得textarea的value
	editor.sync();
	html = document.getElementById('editor_id').value; // 原生API
	html = $('#editor_id').val(); // jQuery
	html = K('#editor_id').val(); // KindEditor Node API
	// 设置HTML内容
	editor.html("HTML内容");*/
	function f(){
	//	editor.html("HTML内容");
		alert(editor.html());
	}
</script>
  </head>
  
  <body>
    <textarea id="editor_id" name="content" style="width:700px;height:300px;">
</textarea>
<input type="button"/ onclick="f()">