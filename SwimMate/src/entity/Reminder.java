package entity;

public class Reminder {	
	
	private int ID;
	private int user_id;
	private int beach_id;
	private String date;
	private String description;
	private String beachName;
	private String userEmail;
	
	/**
	* This is a getter which gets the userEmail
	@param userEmail - the userEmail to be get
	*/
	public String getUserEmail() {
		return userEmail;
	}
	
	/**
	* This is a setter which sets the userEmail
	@param userEmail - the userEmail to be set
	*/
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	/**
	* This is a getter which gets the beachName
	@param beachName - the beachName to be get
	*/
	public String getBeachName() {
		return beachName;
	}
	
	/**
	* This is a setter which sets the beachName
	@param beachName - the beachName to be set
	*/
	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}
	
	/**
	* This is a getter which gets the user_id
	@param user_id - the user_id to be get
	*/
	public int getUser_id() {
		return user_id;
	}
	
	/**
	* This is a setter which sets the user_id
	@param user_id - the user_id to be set
	*/
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	/**
	* This is a getter which gets the beach_id
	@param beach_id - the beach_id to be get
	*/
	public int getBeach_id() {
		return beach_id;
	}
	
	/**
	* This is a setter which sets the beach_id
	@param beach_id - the beach_id to be set
	*/
	public void setBeach_id(int beach_id) {
		this.beach_id = beach_id;
	}
	
	/**
	* This is a getter which gets the id
	@param id - the id to be get
	*/
	public int getID() {
		return ID;
	}
	
	/**
	* This is a setter which sets the id
	@param id - the id to be set
	*/
	public void setID(int iD) {
		ID = iD;
	}
	
	/**
	* This is a getter which gets the date
	@param date - the date to be get
	*/
	public String getDate() {
		return date;
	}
	
	/**
	* This is a setter which sets the date
	@param date - the date to be set
	*/
	public void setDate(String date) {
		this.date = date;
	}
	
	/**
	* This is a getter which gets the description
	@param description - the description to be get
	*/
	public String getDescription() {
		return description;
	}
	
	/**
	* This is a setter which sets the description
	@param description - the description to be set
	*/
	public void setDescription(String description) {
		this.description = description;
	}
}
