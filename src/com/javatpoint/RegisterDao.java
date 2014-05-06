package com.javatpoint;
import java.sql.*;
import java.util.*;

public class RegisterDao {
	static Connection currentCon = null;
	   static ResultSet rs = null;  
	   static Statement statement = null;
		
	   public static void save(RegisterAction declira) throws SQLException {  
	       currentCon= ConnectionManager.getConnection();  
	       String insert = "INSERT INTO USERS (SID,FNAME,LNAME,STREET,CITY,STATE,ZIP,TEL,EMAIL,URL,SURVEYDATE,MONTHGRAD,YEARGRAD,CAMPUS,INFOUNI,FEEDBACK,COMMENTS) VALUES (?, ? ,? ,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";  
	       PreparedStatement ps = currentCon.prepareStatement(insert);  
	       ps.setString(1, declira.getSid());  
	       ps.setString(2, declira.getFname());  
	       ps.setString(3, declira.getLname());  
	       ps.setString(4, declira.getStreet());  
	       ps.setString(5, declira.getCity());  
	       ps.setString(6, declira.getState());
	       ps.setString(7, declira.getZip());
	       ps.setString(8, declira.getTel());
	       ps.setString(9, declira.getEmail());
	       ps.setString(10, declira.getUrl());
	       ps.setString(11, declira.getDate());
	       ps.setString(12, declira.getMonthgrad());
	       ps.setString(13, declira.getYeargrad());
	       ps.setString(14, declira.getHowtosite());
	       ps.setString(15, declira.getThingsliked());
	       ps.setString(16, declira.getFeedback());
	       ps.setString(17, declira.getComments());
	       ps.executeUpdate();  
	       ps.close();  
	       currentCon.commit();  
	       System.out.println("Storing Student Object is Done!");  
	   }

	   public static ArrayList<String> info()
	   {
		   ArrayList<String> names = new ArrayList<String>();
		   currentCon=ConnectionManager.getConnection();
		   try
			{
				
				statement = currentCon.createStatement();
				
				rs = statement.executeQuery("select * from users");
				while(rs.next())
				{
					names.add(rs.getString("sid"));
						
				}
			
			}
			catch(SQLException error)
			{
				System.out.println("Error: "+error.getMessage());
			}
			finally
			{
				if(currentCon != null) try{currentCon.close();} catch(SQLException ignore){}
				if(statement != null) try{statement.close();} catch(SQLException ignore){}
				if(rs != null) try{rs.close();} catch(SQLException ignore){}
			}
		   return names;
	   }
	   
	   public StudentBean getStudentInfo(String sid) {
			
		   StudentBean bean = new StudentBean();
	    
		   String searchQuery =  "select * from users where sid ='" + sid +"'";
	   
	   //String searchQuery =  "select * from users where sid =" + "'sid'";
		
		    
	   try 
	   {
	      //connect to DB 
	      currentCon = ConnectionManager.getConnection();
	      statement=currentCon.createStatement();
	      rs = statement.executeQuery(searchQuery);	        
	      rs.next();
		       
	      
	      
	         String id = rs.getString("sid");
	    	 String fname = rs.getString("fname");
	    	 String lname = rs.getString("lname");
	    	 String street=rs.getString("street");
	    	 String city= rs.getString("city");
	         String state = rs.getString("state");
		     String zip = rs.getString("zip");
		     String tel = rs.getString("tel");
		     String email = rs.getString("email");
		     String url = rs.getString("url");
		     String date = rs.getString("surveydate");
		     String monthgrad = rs.getString("monthgrad");
		     String yeargrad = rs.getString("yeargrad");
		     String campus = rs.getString("campus");
		     String infouni = rs.getString("infouni");
		     String feedback = rs.getString("feedback");
		     String comments = rs.getString("comments");
		     
		     
		    
		     
		     bean.setStudentId(id);
		     bean.setFname(fname);
		     bean.setLname(lname);
		     bean.setStreet(street);
		     bean.setCity(city);
	         bean.setState(state);
	         bean.setZip(zip);
	         bean.setTel(tel);
	         bean.setEmail(email);
	         bean.setUrl(url);
	         bean.setDate(date);
	         bean.setMonth(monthgrad);
	         bean.setYear(yeargrad);
	         bean.setCheck(campus);
	         bean.setRadio(infouni);
	         bean.setFeedback(feedback);
	         bean.setComments(comments);
	         bean.setValid(true);
	         
	      
	   } 

	   catch (Exception ex) 
	   {
	      System.out.println("Log In failed: An Exception has occurred! " + ex);
	   } 
		    
	   //some exception handling
	   finally 
	   {
	      if (rs != null)	{
	         try {
	            rs.close();
	         } catch (Exception e) {}
	            rs = null;
	         }
		
	      if (statement != null) {
	         try {
	            statement.close();
	         } catch (Exception e) {}
	            statement = null;
	         }
		
	      if (currentCon != null) {
	         try {
	            currentCon.close();
	         } catch (Exception e) {
	         }

	         currentCon = null;
	      }
	   }

	return bean;
		
	   }	

/*	public static int save(RegisterAction r){
		int status=0;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@apollo.ite.gmu.edu:1521:ite10g","agala","Paradise28");
			PreparedStatement ps=con.prepareStatement("insert into strutsuser values(?,?,?,?,?,?)");
			ps.setString(1,r.getName());
			ps.setString(2,r.getPassword());
			ps.setString(3,r.getEmail());
			ps.setString(4,r.getGender());
			ps.setString(5,r.getCountry());
			ps.setString(6, r.getChecked());
			
			status=ps.executeUpdate();
		
		}catch(Exception e){e.printStackTrace();}
		return status;
	}*/
}
