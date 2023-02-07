<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<style>
	.delivery {
		color: green;
		font-size: larger;
	}
</style>
</head>
<body>
	<h2>Pizza Builder Results</h2>

	<p>Size: <c:out value="${size}" /></p>
	<p>Toppings: <c:out value="${toppings}" /></p>
	<p>Gluten Free: <c:out value="${isGlutenFree}" /></p>
	<p>Special Instructions: <c:out value="${specialInstructions}" /></p>
	<p>Price: <fmt:formatNumber type="currency" value="${price}" /></p>

	<c:if test="${price >= 15.00}">
		<p class="delivery">FREE DELIVERY</p>
	</c:if>
</body>
</html>
