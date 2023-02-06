<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leave a Review</title>
</head>
<body>
  <h1>Leave a Review</h1>
  <form action="/review" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name"><br><br>
    <label for="comment">Comment:</label>
    <textarea id="comment" name="comment"></textarea><br><br>
    <label for="rating">Rating:</label>
    <input type="number" id="rating" name="rating" min="1" max="5"><br><br>
    <input type="submit" value="Submit">
  </form>
</body>
</html>