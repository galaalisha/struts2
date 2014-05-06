package com.javatpoint;

import java.sql.SQLException;

import com.javatpoint.*;

import java.util.ArrayList;
import java.util.List;

public class RegisterAction {
	private String fname, lname, street, zip, state, city, email, sid, howtosite, thingsliked, tel, url, date, monthgrad, yeargrad, comments, feedback,data;

//	private String name,password,email,gender,country,checked;
	private DataBean info;
	private ArrayList<String> myList;

    public ArrayList<String> getMyList() {
		return myList;
	}

	public void setMyList(ArrayList<String> myList) {
		this.myList = myList;
	}

	public DataBean getInfo() {
        return info;
    }
    
    public void setInfo(DataBean info) {
        this.info = info;
    }
    
    public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getHowtosite() {
		return howtosite;
	}

	public void setHowtosite(String howtosite) {
		this.howtosite = howtosite;
	}

	public String getThingsliked() {
		return thingsliked;
	}

	public void setThingsliked(String thingsliked) {
		this.thingsliked = thingsliked;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getMonthgrad() {
		return monthgrad;
	}

	public void setMonthgrad(String monthgrad) {
		this.monthgrad = monthgrad;
	}

	public String getYeargrad() {
		return yeargrad;
	}

	public void setYeargrad(String yeargrad) {
		this.yeargrad = yeargrad;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

/*public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}


public String getChecked() {
	return checked;
}

public void setChecked(String checked) {
	this.checked = checked;
}*/

public String execute() throws SQLException{
	RegisterDao.save(this);
	ArrayList<String> myList = RegisterDao.info();
   // setMyList(myList);
	setMyList(myList);
    System.out.println(myList);
    System.out.println(getHowtosite());
    System.out.println(getThingsliked());
    
	String data= this.getData();
    String[] tokens = data.split(",");
    DataProcessor dp = new DataProcessor();
    DataBean db= dp.calcMeanStd(tokens); 
    setInfo(db);
    
    
    System.out.println("Mean:" + db.getMean());
    System.out.println("SD:" + db.getStd());
    
 //   request.getSession().setAttribute("key", db);
	/*if(i>0){
	return "success";
	}
	return "error";*/

    if(db.getMean()>=90)
    {
    	return "success";
    }
    else
    {
    	return "error";
    }
}
}
