<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Portal - Home</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Montserrat', sans-serif;
      background-color: #F4F5F7;
      margin: 0;
      padding: 0;
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
    .hero-section {
      background: linear-gradient(135deg, #0056D2, #FFC107);
      color: #fff;
      text-align: center;
      padding: 100px 20px;
    }
    .hero-section h1 {
      font-size: 3rem;
      font-weight: 700;
    }
    .hero-section p {
      font-size: 1.2rem;
    }
    .feature-card {
      border: none;
      box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
      transition: transform 0.3s ease-in-out;
    }
    .feature-card:hover {
      transform: translateY(-10px);
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
          <li class="nav-item"><a class="nav-link" href="#">Profile</a></li>
          <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Hero Section -->
  <div class="hero-section">
    <h1>Welcome to the Student Portal</h1>
    <p>Collaborate, Track Projects, and Shine on the Leaderboard</p>
    <button class="btn btn-warning mt-3">Get Started</button>
  </div>

  <!-- Features Section -->
  <div class="container my-5">
    <div class="row text-center">
      <div class="col-md-4">
        <div class="card feature-card p-4">
          <i class="fa-solid fa-project-diagram fa-3x text-primary mb-3"></i>
          <h5>Project Assignment</h5>
          <p>Assign and track project progress with ease.</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card feature-card p-4">
          <i class="fa-solid fa-trophy fa-3x text-warning mb-3"></i>
          <h5>Leaderboard</h5>
          <p>Stay on top with performance-based ratings.</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card feature-card p-4">
          <i class="fa-solid fa-user-shield fa-3x text-danger mb-3"></i>
          <h5>Secure Login</h5>
          <p>Access your account safely with OTP verification.</p>
        </div>
      </div>
    </div>
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
