<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oops! Something went wrong</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .error-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 600px;
            color: #333;
        }

        .error-container h1 {
            font-size: 5rem;
            color: #e74c3c;
            margin-bottom: 20px;
        }

        .error-container p {
            font-size: 1.2rem;
            color: #555;
            margin-bottom: 30px;
        }

        .error-container a {
            display: inline-block;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            font-size: 1.1rem;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .error-container a:hover {
            background-color: #2980b9;
        }

        .footer {
            position: absolute;
            bottom: 20px;
            width: 100%;
            text-align: center;
            font-size: 0.9rem;
            color: #aaa;
        }

        .footer a {
            color: #3498db;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="error-container">
        <h1>404</h1>
        <p>Oops! The page you are looking for could not be found.</p>
        <a href="/">Go back to Home</a>
    </div>

    <div class="footer">
        <p>&copy; 2024 Your Website. All Rights Reserved. | <a href="mailto:support@yourwebsite.com">Contact Support</a></p>
    </div>

</body>
</html>
