<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<s:head />
</head>

<body>
<h1>Struts 2 <s:file> file upload example</s:file></h1>

<s:form action="resultAction" method="POST" enctype="multipart/form-data">

<s:file name="fileUpload" label="Select a File to upload" size="40" />

<s:submit value="submit" name="submit" />

</s:form>

</body>
</html>