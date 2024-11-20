<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
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
    <h1>Admin Dashboard</h1>
    <div>
      <a href="/">Home</a>
      <a href="logout">Logout</a>
    </div>
  </div>

  <!-- Main Content -->
  <div class="container">
    <h2>Welcome, Admin!</h2>
    <p>Manage your users, projects, and system efficiently.</p>

    <div class="grid">
      <!-- User Management Card -->
      <div class="card">
        <h2>User Management</h2>
        <p>Add, edit, or delete user accounts.</p>
        <a href="users">Manage Users</a>
      </div>

      <!-- Project Oversight Card -->
      <div class="card">
        <h2>Project Oversight</h2>
        <p>View and track all ongoing projects.</p>
        <a href="project-oversight">View Projects</a>
      </div>

      <!-- Audit Logs Card -->
      <div class="card">
        <h2>Audit Logs</h2>
        <p>Track changes and ensure system integrity.</p>
        <a href="audit-logs">View Logs</a>
      </div>

      <!-- Leaderboard Overview Card -->
      <div class="card">
        <h2>Leaderboard Overview</h2>
        <p>Monitor top-performing members.</p>
        <a href="leaderboard">View Leaderboard</a>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <div class="footer">
    <p>&copy; 2024 Student Portal. All Rights Reserved.</p>
  </div>
</body>
</html>
