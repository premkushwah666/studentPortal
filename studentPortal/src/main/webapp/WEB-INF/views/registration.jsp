<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: #f3f4f6;
    }
    .registration-form {
      width: 300px;
      padding: 20px;
      background: #fff;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .registration-form h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    .form-group {
      margin-bottom: 15px;
    }
    .form-group label {
      display: block;
      margin-bottom: 5px;
    }
    .form-group input {
      width: 100%;
      padding: 8px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    .form-group input:focus {
      border-color: #007bff;
      outline: none;
    }
    .form-group button {
      width: 100%;
      padding: 10px;
      background-color: #007bff;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    .form-group button:hover {
      background-color: #0056b3;
    }
    .error {
      color: red;
      font-size: 0.9em;
      display: none;
    }
  </style>
</head>
<body>

<div class="registration-form">
  <h2>Sign Up</h2>
  <form id="registrationForm" onsubmit="return validateForm()" action="handleSignupForm" method="post">
    <div class="form-group">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" required>
    </div>
    <div class="form-group">
      <label for="email">Gmail</label>
      <input type="email" id="email" name="email" required>
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" required>
    </div>
    <div class="form-group">
      <label for="confirm-password">Confirm Password</label>
      <input type="password" id="confirm-password" required>
      <span id="password-error" class="error">Passwords do not match</span>
    </div>
    <div class="form-group">
      <button type="submit">Sign Up</button>
    </div>
  </form>
</div>

<script>
  function validateForm() {
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirm-password').value;
    const errorElement = document.getElementById('password-error');

    // Check if passwords match
    if (password !== confirmPassword) {
      errorElement.style.display = 'block';
      return false;
    } else {
      errorElement.style.display = 'none';
    }

    // Remove confirm password field before submitting
    document.getElementById('confirm-password').remove();

    return true;
  }
</script>

</body>
</html>
