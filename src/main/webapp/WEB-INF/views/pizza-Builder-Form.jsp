<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<h1>Custom Pizza Builder</h1>
	<form action="/Pizza-Builder-Results" method="post">
		<div>
			<label for="size">Size:</label>
			<select name="size">
				<option value="small">Small</option>
				<option value="medium">Medium</option>
				<option value="large">Large</option>
			</select>
		</div>
		<div>
			<label for="toppings">Number of Toppings:</label>
			<input type="number" name="toppings" min="0" max="10" required />
		</div>
		<div>
			<label for="glutenFree">Gluten-Free?</label>
			<input type="radio" name="glutenFree" value="yes" required />Yes
			<input type="radio" name="glutenFree" value="no" required />No
		</div>
		<div>
			<label for="specialInstructions">Special Instructions:</label>
			<textarea name="specialInstructions"></textarea>
		</div>
		<c:forEach items="${toppingsList}" var="topping">
			<li>${topping}</li>
		</c:forEach>
		<input type="submit" value="Submit"/>
	</form>
</body>
</html>
