<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container login">
        <h1>Login</h1>
        <form action="LoginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit" value="Submit">Login</button>
        </form>
        <p class="para">Don't have an account? <a href="index.html">Back to Home</a></p>
        
        <%-- Display error message if login fails --%>
        <% String error = request.getParameter("error");
        if(error != null && error.equals("1")){ %>
        <p style="color:red;">Invalid username or Password. Please enter again.</p>
        <% } %>
    </div>
</body>
</html>
