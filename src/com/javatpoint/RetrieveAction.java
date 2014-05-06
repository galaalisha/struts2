package com.javatpoint;

public class RetrieveAction {
	private String sid;
	private StudentBean retrieve;
	
	public StudentBean getRetrieve() {
		return retrieve;
	}

	public void setRetrieve(StudentBean retrieve) {
		this.retrieve = retrieve;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String execute(){
		System.out.println("In Retrieve Action");
		System.out.println(getSid());
		String sid= getSid();
		RegisterDao sd = new RegisterDao();
		StudentBean bean = sd.getStudentInfo(sid);
		setRetrieve(bean);
		if(bean.getStudentId() != null)
		{
		return "success";
		}
		else
		{
		return "error";
		}
		
		
	}
}
