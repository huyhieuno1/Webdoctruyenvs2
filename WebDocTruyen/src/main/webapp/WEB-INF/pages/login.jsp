<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" href="./img/icon.png">
<meta charset="utf-8">
<meta name="author" content="pixelhint.com">
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/reset.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>">
<script src="<c:url value="/resources/jquery/jquery.min.js" />"></script>
<script src="<c:url value="/resources/angular/angular.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/main.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/app.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/service/service.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/controller/controller.js"/>"></script>

</head>
<body>

	<form class="modal-content animate" action="/action_page.php">

		<div class="container">
			<label><b>Username</b></label> <input type="text" placeholder="Enter Username" name="uname" required> <label><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="psw" required>
			<button type="submit">Login</button>
			<input type="checkbox" checked="checked"> Remember me
		</div>
		<div class="container" style="background-color: #f1f1f1">
			<a class="cancelbtn" href="./" style="text-decoration: none">Cancel</a> <span class="psw">
			</span>
		</div>
	</form>
</body>
</html>