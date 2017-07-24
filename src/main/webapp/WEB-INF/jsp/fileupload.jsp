<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>

<title>Title</title>
</head>
<body>
	<form method="POST" action="/fileapi/uploadFile" enctype="multipart/form-data">
		File to upload: <input type="file" name="file"><br />
<input type="checkbox"  name="publicity" value="true" checked="checked" />
                <input type="submit" value="Upload">
		Press here to upload the file!
	</form>
</body>
</html>