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

import com.student.dao.UserDao;
import com.studentportal.modal.User;

@Controller
public class UserCrudController {
	
	UserDao userdao = new UserDao();
	
	@RequestMapping("/users")
	public String home(Model m) {
		List<User> users = userdao.getUsers();
		System.out.println(users);
		m.addAttribute("users", users); 
		return "showAllUsers";
	}
	 
	@RequestMapping("/add-user")
	public String addUser(Model m) {
//		m.addAttribute("title","Add Product");
		return "addUserForm";
	}
	
	@RequestMapping(value ="/handle-user",method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute User user,HttpServletRequest request) {
		System.out.println(user);
		new UserDao().saveUser(user);
		RedirectView r = new RedirectView();
		r.setUrl(request.getContextPath()+"/users");
		return r;
	}
	
	@RequestMapping(value ="/delete/{email}")
	public RedirectView handleProduct(@PathVariable("email")String email,HttpServletRequest request) {
		new UserDao().deleteUser(email);
		RedirectView r = new RedirectView();
		r.setUrl(request.getContextPath()+"/users");
		return r;
	}
	
	@RequestMapping(value ="/update/{email}")
	public String handleProduct(@PathVariable("email")String email,Model m) {
		
//	System.out.println("1 email check -> before  " + email );
	   
		User user = new UserDao().getUser(email);
//		System.out.print(user);
		m.addAttribute("user",user);
//		System.out.println("4 -> "+user);
		
		return "updateUserForm";
	}
	
	@RequestMapping(value ="/update/edit",method = RequestMethod.POST)
	public RedirectView updateProduct(@ModelAttribute User user,HttpServletRequest request) {
		new UserDao().editUser(user);	
//		System.out.println("user in update  ->>>>>" +user);
		RedirectView r = new RedirectView();
		r.setUrl(request.getContextPath()+"/users");
		return r;
	}
	
	@RequestMapping(value="/forgetPass")	
	public String forgetPassword(
			@RequestParam("email")String email,
			@RequestParam("password")String newPassword
	    ) {
		UserDao u = new UserDao();
		User user = u.getUser(email);
		user.setPassword(newPassword);
		u.editUser(user);
		return "login";
	}
	
		

}
