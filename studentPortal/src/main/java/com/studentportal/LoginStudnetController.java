package com.studentportal;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.student.dao.UserDao;
import com.studentportal.modal.User;

@Controller
public class LoginStudnetController {
	
	@RequestMapping("/login")
	public String userLoginForm() {
	     System.out.println("login student ...");
		return "login";
	} 
	
	@RequestMapping("/logout")
	public String userlogout(Model model,HttpSession session) {
	     System.out.println("logout ...");
	     session.invalidate();
	     model.addAttribute("errorMessage", "logged out");
		return "login";
	} 
	
	
	
	@RequestMapping(path ="/handleLogin",method = RequestMethod.POST)
	public String processSignupform(  HttpSession session,Model model,
			@RequestParam(name = "email")String email,
			@RequestParam(name = "password")String password) {
			UserDao u = new UserDao();
			User user = u.checkUser(email, password);
		
		    if(user!=null) {//ok
		    	//Setting object in session///////////////////
				session.setAttribute("currentUser",user);
				if(user.getRole().equals("student")) {
					return "studentDashBoard";
				}
				else if(user.getRole().equals("alumni")) {
					return "alumniDashBoard";
				}
                else if(user.getRole().equals("admin")) {
					return "adminDashBoard";
				}
				
				return "errorPage";	
		    }
		    
		    model.addAttribute("errorMessage", "invalid details");

	return "login";
	}

	@RequestMapping("/signup")
	public String userSignupForm() {
	     System.out.println("signup student ...");
		return "signup";
	} 
	
	@RequestMapping(path ="/handleSignupForm",method = RequestMethod.POST)
	public String processSignupform(  HttpSession session,Model model,
			@RequestParam(name = "name")String name,
			@RequestParam(name = "email")String email,
			@RequestParam(name = "password")String password,
			@RequestParam(name = "confirmPassword")String confirmPassword,
			@RequestParam(name = "role")String role
			) {
	     System.out.println("processing ...");
	     System.out.println(name);
	     System.out.println(email);
	     System.out.println(password);
	     System.out.println(confirmPassword);
	     System.out.println(role);
	     
	     
	       //generating OTP
			String numbers = "0123456789";
	        StringBuilder otp = new StringBuilder();
	        Random random = new Random();

	        for (int i = 0; i < 6; i++) {
	            int index = random.nextInt(numbers.length());
	            otp.append(numbers.charAt(index));
	        }
	        System.out.println("your otp is " +otp.toString());

	        //-----------------
	        
//	     sending mail      
	     GEmailSender gEmailSender = new GEmailSender();
	        String to = email;
	        String from = "premkushwah666@gmail.com";
	        String subject = "OTP for Secure Verification";
	        String text = "Dear " + name + ",\r\n"
	        		+ "\r\n"
	        		+ "Your One-Time Password (OTP) for verification is "+otp.toString() +". This code is valid for the next 5 minutes. Please do not share this code with anyone to ensure the security of your account.\r\n"
	        		+ "\r\n"
	        		+ "If you didn’t request this OTP, please contact our support team immediately.\r\n"
	        		+ "\r\n"
	        		+ "Thank you,\r\n"
	        		+ "prem kushwah";
			boolean b = gEmailSender.sendEmail(to, from, subject, text);		
//			boolean b = true;
			
			if(b) {
				System.out.println("email Sent successfully");
				
				//Setting object in session///////////////////
				User user = new User(name,email,password,role,otp.toString());
				session.setAttribute(email, user);
				
				////////////////////////setting mail in model
				model.addAttribute("email",email);
				
				return "validateEmail";
			}
			else {
				System.out.println("error in sending mail");
			}
				
		return "index";
	}
	
	@RequestMapping(path ="/verifyOtp",method = RequestMethod.POST)
	public String generateOTP(HttpSession session,
			@RequestParam("email")String email,
			@RequestParam("otp")String otp
			) {
//		String username = (String) session.getAttribute("username");
		
		System.out.println(email);
		System.out.println(otp);
		
		User user = (User) session.getAttribute(email);
		if(user==null)
			return "signup";
		
		System.out.println(user);
		System.out.println("emailed otp" +user.getOtp());
		System.out.println("otp filler by user" + otp);
		
		if(user.getOtp().trim().equals(otp)) {
			System.out.println("save user in db");
				UserDao u = new UserDao();
				u.saveUser(user);
			
			////////////**********
				//Setting object in session///////////////////
				session.setAttribute("currentUser",user);
				if(user.getRole().equalsIgnoreCase("student")) {
					System.out.println("forwading to studnt desh");
					return "studentDashBoard";
				}
				else if(user.getRole().equalsIgnoreCase("alumni")) {
					System.out.println("forwading to alumni desh");
					return "alumniDashBoard";
				}
                else if(user.getRole().equalsIgnoreCase("admin")) {
                	System.out.println("forwading to alumni desh");
					return "adminDashBoard";
				}
				System.out.println("tino run nhi kre h");
				
			return "errorPage";
		}
		else {
			//Setting object in session///////////////////
			//session.invalidate();
			session.setAttribute(user.getEmail(),new User(user));		
			return "validateEmail";
		}	 
	} 
	
	///////////////////////
//	 	@RequestMapping(path="/otp")
//	    public void sendOtp(@RequestParam("email")String email) {
//		 //generate otp
//		 String numbers = "0123456789";
//	        StringBuilder otp = new StringBuilder();
//	        Random random = new Random();
//
//	        for (int i = 0; i < 6; i++) {
//	            int index = random.nextInt(numbers.length());
//	            otp.append(numbers.charAt(index));
//	        }
//	        System.out.println("your otp is " +otp.toString());
//
//	        //-----------------
//	        
////	     sending mail      
//	     GEmailSender gEmailSender = new GEmailSender();
//	        String to = email;
//	        String from = "premkushwah666@gmail.com";
//	        String subject = "OTP for Secure Verification";
//	        String text = "Dear User ,\r\n"
//	        		+ "\r\n"
//	        		+ "Your One-Time Password (OTP) for verification is "+otp.toString() +". This code is valid for the next 5 minutes. Please do not share this code with anyone to ensure the security of your account.\r\n"
//	        		+ "\r\n"
//	        		+ "If you didn’t request this OTP, please contact our support team immediately.\r\n"
//	        		+ "\r\n"
//	        		+ "Thank you,\r\n"
//	        		+ "prem kushwah";
////			boolean b = gEmailSender.sendEmail(to, from, subject, text);		
//			boolean b = true;
//			
//			if(b) {
//				System.out.println(otp.toString());
//				System.out.println("email Sent successfully forget pass");
//			
//			}
//			else {
//				System.out.println("error in sending mail forget pass");
//			}
//	
//	}
//	 
//	 @PostMapping("/verifyotp")
//	    @ResponseBody
//	    public boolean verifyOtp(@RequestParam("otp")String otp) {
//		      if(otp.equals()) {
//		    	  
//	        return true;
//	    }
//
//	    @GetMapping("/newpassword")
//	    public String newPasswordPage() {
//	        return "newpassword"; // Redirect to a new JSP page (e.g., `newpassword.jsp`)
//	    }
//	}
//	

	
}
