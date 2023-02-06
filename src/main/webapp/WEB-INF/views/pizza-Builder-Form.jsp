<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Pizza Builder</title>
</head>
<body>
	<h1>Custom Pizza Builder</h1>
	<form action="Pizza-Builder-Results" method="post">
		<p>
			<label for="size">Size:</label>
			<select id="size" name="size">
				<option value="small">Small</option>
				<option value="medium">Medium</option>
				<option value="large">Large</option>
			</select>
		</p>
		<p>
			<label for="toppings">Number of Toppings:</label>
			<input type="number" id="toppings" name="toppings">
		</p>
		<p>
			<label for="glutenFree">Gluten-Free Crust:</label>
			<input type="checkbox" id="glutenFree" name="glutenFree" value="yes">
		</p>
		<p>
			<label for="specialInstructions">Special Instructions:</label>
			<textarea id="specialInstructions" name="specialInstructions"></textarea>
		</p>
		<input type="submit" value="Submit">
	</form>
	<a href="/">Back to Homepage</a>
</body>
</html>
