<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing Information</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
  }
  .container {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  .form-group {
    margin-bottom: 20px;
  }
  label {
    display: block;
    font-weight: bold;
  }
  input[type="text"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
  }
  input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  input[type="submit"]:hover {
    background-color: #0056b3;
  }
  #message {
    margin-top: 20px;
    color: green;
    font-weight: bold;
  }
</style>
</head>
<body>

<div class="container">
  <h2>Billing Information</h2>
  <form id="billingForm" action="saveBilling" method="post">
    <div class="form-group">
      <label for="billingAddress">Billing Address:</label>
      <input type="text" id="billingAddress" name="billingAddress" placeholder="Enter billing address" required>
    </div>
    <div class="form-group">
      <label for="cardNumber">Card Number:</label>
      <input type="text" id="cardNumber" name="cardNumber" placeholder="Enter card number" required>
    </div>
    <div class="form-group">
      <label for="cardType">Card Type:</label>
      <select id="cardType" name="cardType" required>
        <option value="">Select card type</option>
        <option value="Visa">Visa</option>
        <option value="Mastercard">Mastercard</option>
        <option value="American Express">American Express</option>
      </select>
    </div>
    <div class="form-group">
      <label for="cvv">CVV:</label>
      <input type="text" id="cvv" name="cvv" placeholder="Enter CVV" required>
    </div>
    <input type="submit" value="Save Billing Information">
  </form>
  <div id="message">${message}</div>
</div>

<script>
  // Add JavaScript here if needed
</script>

</body>
</html>
