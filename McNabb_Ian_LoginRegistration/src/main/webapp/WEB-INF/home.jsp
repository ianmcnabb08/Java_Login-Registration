<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">


<title>Home</title>
</head>
<body>
	<div class="container border border-solid">
		<h1 class="text-center">Hello, <c:out value="${user.userName}"/>!</h1>
		<p class="text-center">Welcome to your home page.</p>
		<a href="/logout" class="btn btn-danger text-center">Logout</a>
	</div>

</body>
</html>