<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

 <div class="container" class="Register">
        <h1>Register</h1>
        <form action="RegisterServlet" method="post">
            
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required>
            
            <label for="email">Email:</label>
            <input type="Email" id="email" name="email" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit" value="Submit">Register</button>
        </form>
        <p class="para">Don't have an account? <a href="index.html">Back to Home</a></p>

    </div>

</body>
</html>