<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Portal - Add Task</title>
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

  <!-- Add Task Form -->
  <div class="form-container">
    <h2>Add Task</h2>
    <form action="add-task" method="post">
      <!-- Task Title -->
      <div class="mb-3">
        <label for="title" class="form-label">Task Title</label>
        <input type="text" class="form-control" id="title" name="title" placeholder="Enter task title" required>
      </div>

      <!-- Description -->
      <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <textarea class="form-control" id="description" name="description" rows="3" placeholder="Enter task description" required></textarea>
      </div>

      <!-- Deadline -->
     <!--  <div class="mb-3">
        <label for="deadline" class="form-label">Deadline</label>
        <input type="date" class="form-control" id="deadline" name="deadline" required>
      </div> -->

      <!-- Assigned To -->
      <div class="mb-3">
        <label for="assignedTo" class="form-label">Assign To</label>
        <input type="text" class="form-control" id="assignedTo" name="assignedTo" placeholder="Enter assignee's name" required>
      </div>

      <!-- Priority -->
      <!-- <div class="mb-3">
        <label for="priority" class="form-label">Priority</label>
        <select class="form-select" id="priority" name="priority" required>
          <option value="" disabled selected>Select priority level</option>
          <option value="High">High</option>
          <option value="Medium">Medium</option>
          <option value="Low">Low</option>
        </select>
      </div>
 -->`
      <!-- Submit Button -->
      <div class="d-grid">
        <button type="submit" class="btn btn-primary">Add Task</button>
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
