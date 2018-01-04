<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="icon" href="./img/icon.png">
	<meta charset="utf-8">
	<meta name="author" content="pixelhint.com">
	<meta name="description" content=""/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/reset.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>">
	<script src="<c:url value="/resources/jquery/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/angular/angular.min.js" />"></script>
	
    <script type="text/javascript" src="<c:url value="/resources/js/app.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/service/service.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller/controller.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/main.js"/>"></script>
</head>
<body ng-app="myApp" ng-controller="HeaderController as ctrl">

	<header>
		<div class="logo">
			<a style="text-decoration: none; font-family: cursive; font-size: 25px; font-weight: bold;" href="index.html">STORY ONLINE</a>
		</div><!-- end logo -->
		<div id="menu_icon"></div>
		<nav>
			<ul>
				<li><a href="./" class="selected">Home</a></li> 
				<ul ng-repeat="tl in listTL">
					<li><a  ng-click="cates()" ng-bind="tl.name"></a></li>
					<div ng-bind="count"></div>
				</ul>
				<li><a href="./contact">Contact Us</a></li>
				<li><a href="./login">Login</a></li>
			</ul>

		</nav><!-- end navigation menu -->
		<div class="footer clearfix">
			<div class="rights">
				<p>Copyright Â© 2017 story.</p>
				<p>Template by <a href="">Team 1</a></p>
			</div><!-- end rights -->
		</div ><!-- end footer -->
	</header><!-- end header -->