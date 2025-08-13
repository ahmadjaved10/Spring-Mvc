<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom CSS -->
    <style>
      body {
        background-color: #e9ecef; /* Light gray background */
      }
      .container {
        margin-top: 50px;
        max-width: 600px;
        padding: 20px;
        background-color: #ffffff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
      }
      .form-group label {
        font-weight: bold;
      }
      .text-center {
        margin-bottom: 30px;
      }
      .btn-success {
        width: 100%;
      }
      .registration-box {
        padding: 20px;
        background-color: #f8f9fa; /* Slightly darker background for the box */
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }
    </style>

    <title>User Registration</title>
  </head>
  <body>
  
    <h3 class="text-center text-primary"> ${hos}</h3>
    <p class="text-center text-secondary">${dec}</p>
    
    <div class="container">
      <div class="registration-box">
        <h2 class="text-center">User Registration</h2>
        <form action="user" method="post">
          <div class="form-group">
            <label for="userName">User Name</label>
            <input type="text" class="form-control" id="userName" placeholder="Enter Name" name="username" required> 
          </div> 
  
          <div class="form-group">
            <label for="userPassword">User Password</label>
            <input type="password" class="form-control" id="userPassword" placeholder="Enter Password" name="password" required>
          </div> 
  
          <div class="form-group">
            <label for="userEmail">Email address</label>
            <input type="email" class="form-control" id="userEmail" placeholder="Enter email" name="email" required>  
          </div>
  
          <div class="form-group">
            <label for="gender">Gender</label>
            <div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" id="genderMale" value="Male" required>
                <label class="form-check-label" for="genderMale">Male</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="Female" required>
                <label class="form-check-label" for="genderFemale">Female</label>
              </div>
            </div>
          </div>
  
          <div class="form-group">
            <label for="userType">Register as</label>
            <select class="form-control" id="userType" name="userType" required>
              <option value="">Select user type</option>
              <option value="Doctor">Doctor</option>
              <option value="Patient">Patient</option>
              <option value="Laboratorian">Laboratorian</option>
            </select>
          </div>
  
          <div class="text-center">
            <button type="submit" class="btn btn-success">Sign up</button>
          </div>
        </form>
      </div>
    </div>
 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
