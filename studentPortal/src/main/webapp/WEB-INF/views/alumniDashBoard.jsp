<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Alumni Dashboard</title>
  <style>
    /* Global Styles */
    body {
      margin: 0;
      font-family: 'Arial', sans-serif;
      background-color: #f0f0f0;
    }

    .navbar {
      background-color: #003366;
      color: white;
      padding: 1rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .navbar h1 {
      margin: 0;
      font-size: 1.5rem;
    }

    .navbar a {
      color: #ffd700;
      text-decoration: none;
      margin-left: 1rem;
    }

    .container {
      padding: 2rem;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 1.5rem;
    }

    .card {
      background: white;
      padding: 1.5rem;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    .card h2 {
      margin-top: 0;
      font-size: 1.2rem;
      color: #003366;
    }

    .card p {
      margin: 0.5rem 0;
      color: #555;
    }

    .card a {
      display: inline-block;
      text-decoration: none;
      background-color: #003366;
      color: white;
      padding: 0.5rem 1rem;
      border-radius: 5px;
      text-align: center;
    }

    .card a:hover {
      background-color: #002244;
    }

    .footer {
      text-align: center;
      margin-top: 2rem;
      padding: 1rem;
      background-color: #003366;
      color: white;
    }
  </style>
</head>
<body>
  <!-- Navbar -->
  <div class="navbar">
    <h1>Alumni Dashboard</h1>
    <div>
      <a href="/">Home</a>
      <a href="logout">Logout</a>
    </div>
  </div>

  <!-- Main Content -->
  <div class="container">
    <h2>Welcome, Alumni!</h2>
    <p>Engage with your projects and manage your tasks effectively.</p>

    <div class="grid">
      <!-- View Tasks Card -->
      <div class="card">
        <h2>View Tasks</h2>
        <p>Check your assigned tasks and deadlines.</p>
        <a href="tasks">View Tasks</a>
      </div>

      <!-- Submit Updates Card -->
      <div class="card">
        <h2>Submit Updates</h2>
        <p>Provide updates on your assigned tasks.</p>
        <a href="submit-updates">Submit Updates</a>
      </div>

      <!-- Leaderboard Card -->
      <div class="card">
        <h2>Leaderboard</h2>
        <p>Track your progress and see how you rank.</p>
        <a href="leaderboard">View Leaderboard</a>
      </div>

      <!-- Feedback Card -->
      <div class="card">
        <h2>Provide Feedback</h2>
        <p>Give feedback on projects or tasks.</p>
        <a href="feedback">Give Feedback</a>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <div class="footer">
    <p>&copy; 2024 Student Portal. All Rights Reserved.</p>
  </div>
</body>
</html>
