package com.student.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.studentportal.modal.Task;

public class TaskDao {

    // Save Task
    public boolean saveTask(Task task) {
        String sql = "INSERT INTO tasks(project_title, assigned_to, description, points) VALUES(?, ?, ?, ?)";
        PreparedStatement ps = null;
        try {
            Connection con = MyConnection.getConnection(); // Connection remains open
            ps = con.prepareStatement(sql);
            ps.setString(1, task.getProjectTitle());
            ps.setString(2, task.getAssignedTo());
            ps.setString(3, task.getDescription());
            ps.setInt(4, task.getPoints());
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close PreparedStatement and ResultSet only
            closeResources(ps, null);
        }
        return false;
    }

    // Get All Tasks
    public List<Task> getTasks() {
        List<Task> tasks = new ArrayList<>();
        String sql = "SELECT * FROM tasks";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Connection con = MyConnection.getConnection(); // Connection remains open
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Task task = new Task();
                task.setId(rs.getInt("id"));
                task.setProjectTitle(rs.getString("project_title"));
                task.setAssignedTo(rs.getString("assigned_to"));
                task.setDescription(rs.getString("description"));
                task.setPoints(rs.getInt("points"));
                tasks.add(task);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close PreparedStatement and ResultSet only
            closeResources(ps, rs);
        }
        return tasks;
    }

    // Get Task by ID
    public Task getTask(int id) {
        String sql = "SELECT * FROM tasks WHERE id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Connection con = MyConnection.getConnection(); // Connection remains open
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                Task task = new Task();
                task.setId(rs.getInt("id"));
                task.setProjectTitle(rs.getString("project_title"));
                task.setAssignedTo(rs.getString("assigned_to"));
                task.setDescription(rs.getString("description"));
                task.setPoints(rs.getInt("points"));
                return task;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close PreparedStatement and ResultSet only
            closeResources(ps, rs);
        }
        return null;
    }

    // Update Task
    public boolean editTask(Task task) {
        String sql = "UPDATE tasks SET project_title=?, assigned_to=?, description=?, points=? WHERE id=?";
        PreparedStatement ps = null;
        try {
            Connection con = MyConnection.getConnection(); // Connection remains open
            ps = con.prepareStatement(sql);
            ps.setString(1, task.getProjectTitle());
            ps.setString(2, task.getAssignedTo());
            ps.setString(3, task.getDescription());
            ps.setInt(4, task.getPoints());
            ps.setInt(5, task.getId());
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close PreparedStatement only
            closeResources(ps, null);
        }
        return false;
    }

    // Delete Task
    public boolean deleteTask(int id) {
        String sql = "DELETE FROM tasks WHERE id=?";
        PreparedStatement ps = null;
        try {
            Connection con = MyConnection.getConnection(); // Connection remains open
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close PreparedStatement only
            closeResources(ps, null);
        }
        return false;
    }

    // Utility method to close PreparedStatement and ResultSet
    private void closeResources(PreparedStatement ps, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
