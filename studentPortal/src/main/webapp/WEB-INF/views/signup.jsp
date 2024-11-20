<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Portal - Signup</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Montserrat', sans-serif;
      background-color: #F4F5F7;
    }
    .navbar {
      background-color: #0056D2;
    }
    .navbar-brand, .nav-link {
      color: #fff;
    }
    .nav-link:hover {
      color: #FFC107;
    }
    .signup-container {
      max-width: 500px;
      margin: 50px auto;
      padding: 30px;
      background: #fff;
      border-radius: 10px;
      box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }
    .signup-container h2 {
      text-align: center;
      color: #0056D2;
      margin-bottom: 20px;
    }
    .btn-primary {
      background-color: #0056D2;
      border: none;
    }
    .btn-primary:hover {
      background-color: #0041A3;
    }
    .footer {
      background-color: #0056D2;
      color: #fff;
      padding: 20px 0;
      text-align: center;
    }
  </style>
</head>
<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand" href="#">Student Portal</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Projects</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Leaderboard</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Login</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Signup Form -->
  <div class="signup-container">
    <h2>Create an Account</h2>
    <form  action="handleSignupForm" method="post">
      <!-- Name -->
      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required>
      </div>

      <!-- Email -->
      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
      </div>

      <!-- Password -->
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
      </div>

      <!-- Confirm Password -->
      <div class="mb-3">
        <label for="confirmPassword" class="form-label">Confirm Password</label>
        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required>
      </div>

      <!-- Role Selection -->
      <div class="mb-3">
        <label for="role" class="form-label">Select Role</label>
    <select class="form-select" id="role" name="role" required> 
  <!--  <select class="form-select" id="role" name="role"> -->
          <option value="" disabled selected>Select your role</option>
          <option value="student">student</option>
          <option value="alumni" >alumni</option>
        </select>
        
   
      </div>

      <!-- Submit Button -->
      <div class="d-grid">
        <button type="submit" class="btn btn-primary">Sign Up</button>
      </div>
    </form>
  </div>

  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <p>&copy; 2024 Student Portal. All rights reserved.</p>
    </div>
  </footer>

<script>
           function valid()	
           {
        	   pwd1=document.getElementById("password").value;
        	   pwd2=document.getElementById("confirmPassword").value;
        	   if(pwd1==pwd2)
        		   {
        		   return true;
        		   }
        	   else
        		   {
        		   document.getElementById("one").innerHTML="Password and Confirm password not matched";
        		   return false;
        		   }
           }
      
      </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
