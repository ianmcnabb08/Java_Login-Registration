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


<title>Login</title>
</head>
<body>
	<div>
	<h1 class="text-center">Welcome!</h1>
	<p class="text-center">Join Our Growing Community!</p>
	<div class="border border-solid m-5"></div>
       <div class="d-flex">
         <div class="col-3 border-2 rounded mt-4 mx-auto my-auto">
	        <h1 class="text-center text-primary my-auto mx-auto mt-2">Register</h1>
			<form:form action="/register" method="POST" modelAttribute="newUser">
				<form:label path="userName" class="form-label">User Name:</form:label>
				<form:errors path="userName" class="text-danger "/>
				<form:input type="text" path="userName" class="form-control mb-2 col-2"/>
				
				<form:label path="email" class="form-label">Email:</form:label>
				<form:errors path="email" class="text-danger"/>
				<form:input type="text" path="email" class="form-control mb-2"/>
				
				<form:label path="password" class="form-label">Password:</form:label>
				<form:errors path="password" class="text-danger"/>
				<form:input type="password" path="password" class="form-control mb-2"/>
				
				<form:label path="confirm" class="form-label">Confirm Password:</form:label>
				<form:errors path="confirm" class="text-danger"/>
				<form:input type="password" path="confirm" class="form-control mb-2"/>
				
				<input type="submit" value="Register" class="btn btn-outline-primary mt-2">
			</form:form>
           </div>
           <div class="col-3 mx-auto my-auto border-2 rounded mt-4">
               <form:form action="/login" method = "post" modelAttribute="newLogin">
                   <h1 class="text-danger text-center mt-2">Login</h1>
       
					<form:label path="email" class="form-label">Email:</form:label>
					<form:errors path="email" class="text-danger"/>
					<form:input type="text" path="email" class="form-control mb-2"/>
					
					<form:label path="password" class="form-label">Password:</form:label>
					<form:errors path="password" class="text-danger"/>
					<form:input type="password" path="password" class="form-control mb-2"/>
       
                   <div class="col-3 my-auto mx-auto">
                       <input type="submit" value="Login" class="btn btn-outline-danger"></input>
                   </div>
               </form:form>
           </div>
       </div>
    </div>
</body>
</html>