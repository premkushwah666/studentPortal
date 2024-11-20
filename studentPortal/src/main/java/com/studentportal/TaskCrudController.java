package com.studentportal;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.student.dao.TaskDao;
import com.studentportal.modal.Task;

@Controller
public class TaskCrudController {

    // TaskDao object
    TaskDao taskDao = new TaskDao();

    // Display all tasks
    @RequestMapping("/tasks")
    public String home(Model m) {
        List<Task> tasks = taskDao.getTasks();
        m.addAttribute("tasks", tasks);
        return "showAllTasks";
    }

    // Add Task form
    @RequestMapping("/add-task")
    public String addTask(Model m) {
        return "addTaskForm";
    }

    // Handle Add Task form submission
    @RequestMapping(value = "/handle-task", method = RequestMethod.POST)
    public RedirectView handleTask(@ModelAttribute Task task, HttpServletRequest request) {
        taskDao.saveTask(task);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/tasks");
        return redirectView;
    }

    // Delete Task
    @RequestMapping(value = "/delete-task/{id}")
    public RedirectView deleteTask(@PathVariable("id") int id, HttpServletRequest request) {
        taskDao.deleteTask(id);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/tasks");
        return redirectView;
    }

    // Update Task form
    @RequestMapping(value = "/update-task/{id}")
    public String updateTaskForm(@PathVariable("id") int id, Model m) {
        Task task = taskDao.getTask(id);
        m.addAttribute("task", task);
        return "updateTaskForm";
    }

    // Handle Update Task form submission
    @RequestMapping(value = "/update-task/edit", method = RequestMethod.POST)
    public RedirectView updateTask(@ModelAttribute Task task, HttpServletRequest request) {
        taskDao.editTask(task);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/tasks");
        return redirectView;
    }

    // Additional feature: Update Task Points
    @RequestMapping(value = "/update-points")
    public RedirectView updateTaskPoints(@RequestParam("id") int id,
                                         @RequestParam("points") int points,
                                         HttpServletRequest request) {
        Task task = taskDao.getTask(id);
        if (task != null) {
            task.setPoints(points);
            taskDao.editTask(task);
        }
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/tasks");
        return redirectView;
    }
}
