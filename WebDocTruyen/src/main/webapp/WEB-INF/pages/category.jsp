<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>    
	<!-- END LERT-BAR -->
	<section class="main clearfix" ng-controller="HeaderController">
	<div ng-repeat="tr in listTR">
		<div class="work">
			<a href="./detail">
				<img src="<c:url value="/resources/img/{{tr.images}}"/>" class="media" alt=""/>
				<div class="caption">
					<div class="work_title">
						<h1 ng-bind="tr.name"></h1>
					</div>
				</div>
			</a>
		</div>
		</div>
	</section><!-- end main -->
	
</body>
</html>