<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Portal - Update User</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
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
    .form-container {
      max-width: 500px;
      margin: 50px auto;
      padding: 30px;
      background: #fff;
      border-radius: 10px;
      box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }
    .form-container h2 {
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
      <a class="navbar-brand" href="#">Admin Portal</a>
    </div>
  </nav>

  <!-- Update User Form -->
  <div class="form-container">
    <h2>Update User</h2>
    <form action="edit" method="POST">
      <!-- id -->
      <div class="mb-3">
        <label for="name" class="form-label">id(non-editable)</label>
        <input type="text" class="form-control" id="name" name="id" value="${user.id}" readonly>
      </div>
    
    
      <!-- Name -->
      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter full name" value="${user.name}" required>
      </div>

      <!-- Email -->
      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" value="${user.email}" required>
      </div>

      <!-- Password -->
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="text" class="form-control" id="password" name="password" placeholder="Enter password" value="${user.password}" required>
      </div>

      <!-- Role Selection -->
      <div class="mb-3">
        <label for="role" class="form-label">Select Role</label>
        <select class="form-select" id="role" name="role" required>
          <option value="" disabled>Select a role </option>
          <option value="student" ${user.role == 'student' ? 'selected' : ''}>Student</option>
          <option value="alumni" ${user.role == 'alumni' ? 'selected' : ''}>Alumni</option>
          <option value="admin" ${user.role == 'admin' ? 'selected' : ''}>Admin</option>
        </select>
      </div>

      <!-- Submit Button -->
      <div class="d-grid">
        <button type="submit" class="btn btn-primary">Update User</button>
      </div>
    </form>
  </div>

  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <p>&copy; 2024 Admin Portal. All rights reserved.</p>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
