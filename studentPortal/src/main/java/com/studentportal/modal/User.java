package com.studentportal.modal;

public class User {
	private int id;
	private String name;
    private String email;
    private String password;
    private String role;
    private String otp;

    // Constructor
    public User(String name, String email, String password, String role,String otp) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.role = role;
        this.otp = otp;
    }
    
	public User() {}
	
	public User(User u) {
		 this.name = u.name;
	        this.email = u.email;
	        this.password = u.password;
	        this.role = u.role;
	        this.otp = u.otp;
	}
	
	  public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

    
    public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}



    // Getters
    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    // Setters
    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", role=" + role
				+ ", otp=" + otp + "]";
	}

    // toString method for easy debugging
    
}
