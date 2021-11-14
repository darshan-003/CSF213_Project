package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.Id;



@Entity
public class User {
	
	/**
	 * A unique username for the user
	 */
	@Id
	public String username;
	
	/**
	 * Institute ID No. of the user
	 */
	public String idNumber;
	/**
	 * Email-ID of the User
	 */
	public String email;
	/**
	 * Mobile Number of the user
	 */
	public String mobileNumber;
	/**
	 * The Name of the Hostel in which user Resides
	 */
	public String hostelName;
	/**
	 * Room no. of the username
	 */
	public String roomNumber;
	/**
	 * Password of the user
	 */
	private String password;
	
	
	
	/**
	 * This Returns the Username of the user
	 * @return String.This Returns the Username of the user
	 * 
	 */
	
	
	public String getUsername() {
		return username;
	}
	
	
	/**
	 * 
	 * This method sets the username of the user
	 * @param String username .Username of the user
	 * 
	 */
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	/**
	 * Returns the ID No. of the User
	 * @return String . Returns the ID No. of the User
	 * 
	 */
	
	public String getIdNumber() {
		return idNumber;
		
	}
	
	/**
	 * Sets the Value of ID No. to the value provided.
	 * @param idNumberThe ID No. of the User
	 * 
	 * 
	 */
	

	public void setIdNumber(String idNumber) {
		
		this.idNumber = idNumber;
	}
	
	
	/**
	 * Returns the Email-ID of the User
	 * @return String. Email ID of the user
	 * 
	 */
	public String getEmail() {
		return email;
	}
	
	
	/**Sets the Value of Email ID. 
	 * @param email  Email ID.
	 * 
	 */
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	/** Returns the Mobile No. of the User
	 * @return String. Mobile No. of the user  
	 */
	
	public String getMobileNumber() {
		return mobileNumber;
	}
	/**
	 * Sets the Value of Mobile No. to the value provided.
	 * @param mobileNumber 
	 * 
	 * 
	 */
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	
	/**
	 * Returns the Hostel Name. of the User
	 * @return String. Hostel Name
	 */
	public String getHostelName() {
		return hostelName;
	}
	/**
	 * Sets the Hostel name of the user. 
	 * @param hostelName
	 * 
	 */
	public void setHostelName(String hostelName) {
		this.hostelName = hostelName;
	}
	
	/**Returns the Room No. of the User
	 * @return String roomNumber
	 * 
	 */
	public String getRoomNumber() {
		return roomNumber;
	}
	
	/**
	 * Sets the Value of Room No. to the value provided.
	 * @param roomNumber
	 * 
	 */
	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}
	
	/**
	 * Sets the Password 
	 * @param password
	 * 
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 * Takes a String "s" and compares it to the Password of the user
	 * @param s 
	 * @return Boolean. True if Password and "s" match , otherwise False
	 */
	public boolean passwordmatch(String s)
	{
		if(s.equals(this.password))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	
	public String getPassword() {
		return this.password;
	}


	/**
	 * Returns the User object with the Parameters provided
	 * @param username
	 * @param idNumber
	 * @param email
	 * @param mobileNumber
	 * @param hostelName
	 * @param roomNumber
	 * @return User
	 */
	public User editDetails(String username,String idNumber,String email,String mobileNumber,String hostelName,String roomNumber )
	{
		this.email=email;
		this.hostelName=hostelName;
		this.idNumber=idNumber;
		this.mobileNumber=mobileNumber;
		this.roomNumber=roomNumber;
		this.username=username;
		
		return this;
	}
	
	/**
	 * Takes a parameter Password and sets its as the Password parameter of the user object.
	 * 
	 * @param password 
	 * 
	 * @Return User
	 */
	public User editPassword(String password)
	{
		this.password=password;
		return this;
	}
	
	
	/**
	 * Overrides the toString() method to return the output in a Particular Format
	 */
	@Override
	public String toString() {
		return "User [username=" + username + ", idNumber=" + idNumber + ", email=" + email + ", mobileNumber="
				+ mobileNumber + ", hostelName=" + hostelName + ", roomNumber=" + roomNumber + "]";
	}
	
	
	

}
