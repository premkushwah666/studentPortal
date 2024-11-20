package com.studentportal.modal;

public class Task {
	int id;
	String projectTitle;
	String assignedTo;
	String description;
	int points;
	
	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Task(int id, String projectTitle, String assignedTo, String description, int points) {
		super();
		this.id = id;
		this.projectTitle = projectTitle;
		this.assignedTo = assignedTo;
		this.description = description;
		this.points = points;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProjectTitle() {
		return projectTitle;
	}
	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}
	public String getAssignedTo() {
		return assignedTo;
	}
	public void setAssignedTo(String assignedTo) {
		this.assignedTo = assignedTo;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	@Override
	public String toString() {
		return "Task [id=" + id + ", projectTitle=" + projectTitle + ", assignedTo=" + assignedTo + ", description="
				+ description + ", points=" + points + "]";
	}
	
	
	
	
	
}
