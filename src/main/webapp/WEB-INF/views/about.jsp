<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About - Hospital Management System</title>
</head>
<body>

<h1>About ${systemName}</h1>
<p>${overview}</p>

<p>Key Features:</p>
<ul>
    <% 
    List<String> features = (List<String>) request.getAttribute("keyFeatures");
    for (String feature : features) {
    %>
        <li><%= feature %></li>
    <% } %>
</ul>

</body>
</html>
