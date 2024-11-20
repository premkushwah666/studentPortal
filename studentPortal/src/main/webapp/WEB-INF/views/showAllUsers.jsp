<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.studentportal.modal.User" %>
<%
	User user = (User) session.getAttribute("currentUser");
    if(user==null){
    	response.sendRedirect("login");
    	System.out.print("user is null");
    }
    else if( !user.getRole().equalsIgnoreCase("admin") ){
    	response.sendRedirect("errorPage");
    }

%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7f8;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #007bff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h1 {
            color: #fff;
            margin: 0;
            font-size: 20px;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin-left: 15px;
            font-size: 14px;
        }

        .navbar a:hover {
            color: #ffc107;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }

        table {
            width: 100%;
            max-width: 800px;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
        }

        thead {
            background-color: #007bff;
            color: #fff;
        }

        tbody tr:nth-child(even) {
            background-color: #f4f4f4;
        }

        tbody tr:hover {
            background-color: #e0e0e0;
        }

        th {
            font-weight: bold;
        }

        td {
            border-bottom: 1px solid #ddd;
        }

        .action-buttons {
            display: flex;
            gap: 10px;
        }

        .action-buttons button {
            padding: 5px 10px;
            border: none;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }

        .edit-btn {
            background-color: #28a745;
        }

        .delete-btn {
            background-color: #dc3545;
        }

        .edit-btn:hover {
            background-color: #218838;
        }

        .delete-btn:hover {
            background-color: #c82333;
        }

        .add-product-container {
            text-align: center;
            margin: 20px;
        }

        .add-product-btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .add-product-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <h1>User Management</h1>
        <div>
            <a href="users">Dashboard</a>
            <a href="users">Users</a>
            <a href="logout">Logout</a>
        </div>
    </div>

    <!-- Page Content -->
    <h2>Users CRUD</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="p">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.name}</td>
                    <td>${p.email}</td>
                    <td>${p.role}</td>
                    <td class="action-buttons">
                        <button class="edit-btn">
                            <a href="update/${p.email}" style="text-decoration: none; color: white;">Edit</a>
                        </button>
                        <button class="delete-btn">
                            <a href="delete/${p.email}" style="text-decoration: none; color: white;">Delete</a>
                        </button>
                    </td>
                </tr>
            </c:forEach>

            <!-- Add Product Button -->
            <div class="add-product-container">
                <button class="add-product-btn" onclick="location.href='add-user'">Add User</button>
            </div>
        </tbody>
    </table>
</body>
</html>
