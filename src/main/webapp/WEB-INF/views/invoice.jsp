<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invoice</title>
</head>
<body>

<h1>Invoice Details</h1>
<form action="saveInvoice" method="post">
    <label for="invoiceDetails">Invoice Details:</label>
    <textarea id="invoiceDetails" name="invoiceDetails" required></textarea><br><br>
    <input type="submit" value="Save Invoice Info">
</form>

</body>
</html>
