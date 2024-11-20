<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Portal - Login</title>
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
    .login-container {
      max-width: 400px;
      margin: 50px auto;
      padding: 30px;
      background: #fff;
      border-radius: 10px;
      box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }
    .login-container h2 {
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
    .forgot-password {
      text-align: right;
      font-size: 0.9em;
    }
    .forgot-password a {
      color: #0056D2;
      text-decoration: none;
    }
    .forgot-password a:hover {
      text-decoration: underline;
    }
    .signup-link {
      text-align: center;
      margin-top: 15px;
      font-size: 0.9em;
    }
    .signup-link a {
      color: #0056D2;
      text-decoration: none;
    }
    .signup-link a:hover {
      text-decoration: underline;
    }
    .error-message {
      color: #ff0000;
      font-size: 0.9em;
      text-align: center;
      margin-bottom: 15px;
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
          <li class="nav-item"><a class="nav-link" href="#">Sign Up</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Login Form -->
  <div class="login-container">
    <h2>Welcome Back</h2>

    <!-- Display error message if it exists -->
    <% 
      String errorMessage = (String) request.getAttribute("errorMessage");
      if (errorMessage != null) {
    %>
      <div class="error-message"><%= errorMessage %></div>
    <% } %>

    <form action="handleLogin" method="POST">
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

      <!-- Forgot Password -->
      <div class="forgot-password">
        <a href="forgetPass">Forgot Password?</a>
      </div>

      <!-- Login Button -->
      <div class="d-grid mt-3">
        <button type="submit" class="btn btn-primary">Login</button>
      </div>

      <!-- Sign-Up Redirect -->
      <div class="signup-link">
        <p>Don't have an account? <a href="signup">Sign Up</a></p>
      </div>
    </form>
  </div>

  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <p>&copy; 2024 Student Portal. All rights reserved.</p>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
