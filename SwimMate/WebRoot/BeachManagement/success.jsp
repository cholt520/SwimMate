<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>

<body>
<h1>Struts 2 <s:file> file upload example</s:file></h1>

<div class="ads-in-post hide_if_width_less_800">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- new 728x90 - After2ndH4 -->
<ins class="adsbygoogle hide_if_width_less_800"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-2836379775501347"
     data-ad-slot="3642936086"
	 data-ad-region="mkyongregion"></ins>
</div><h2>
   File Name : <s:property value="fileUploadFileName"/>
</h2>

<h2>
   Content Type : <s:property value="fileUploadContentType"/>
</h2>

<h2>
   File : <s:property value="fileUpload"/>
</h2>